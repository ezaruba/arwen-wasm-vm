package contexts

import (
	"bytes"
	"encoding/hex"
	"errors"
	"fmt"

	"github.com/ElrondNetwork/arwen-wasm-vm/arwen"
	vmcommon "github.com/ElrondNetwork/elrond-vm-common"
)

type storageContext struct {
	host                     arwen.VMHost
	blockChainHook           vmcommon.BlockchainHook
	address                  []byte
	stateStack               [][]byte
	elrondProtectedKeyPrefix []byte
}

// NewStorageContext creates a new storageContext
func NewStorageContext(
	host arwen.VMHost,
	blockChainHook vmcommon.BlockchainHook,
	elrondProtectedKeyPrefix []byte,
) (*storageContext, error) {
	if len(elrondProtectedKeyPrefix) == 0 {
		return nil, errors.New("elrondProtectedKeyPrefix cannot be empty")
	}
	context := &storageContext{
		host:                     host,
		blockChainHook:           blockChainHook,
		stateStack:               make([][]byte, 0),
		elrondProtectedKeyPrefix: elrondProtectedKeyPrefix,
	}

	return context, nil
}

func (context *storageContext) InitState() {
}

func (context *storageContext) PushState() {
	context.stateStack = append(context.stateStack, context.address)
}

func (context *storageContext) PopSetActiveState() {
	stateStackLen := len(context.stateStack)
	prevAddress := context.stateStack[stateStackLen-1]
	context.stateStack = context.stateStack[:stateStackLen-1]

	context.address = prevAddress
}

func (context *storageContext) PopDiscard() {
	stateStackLen := len(context.stateStack)
	context.stateStack = context.stateStack[:stateStackLen-1]
}

func (context *storageContext) ClearStateStack() {
	context.stateStack = make([][]byte, 0)
}

func (context *storageContext) SetAddress(address []byte) {
	context.address = address
}

func (context *storageContext) GetStorageUpdates(address []byte) map[string]*vmcommon.StorageUpdate {
	account, _ := context.host.Output().GetOutputAccount(address)
	return account.StorageUpdates
}

func (context *storageContext) GetStorage(key []byte) []byte {
	fmt.Println("storageContext.GetStorage()", string(key))
	storageUpdates := context.GetStorageUpdates(context.address)
	if storageUpdate, ok := storageUpdates[string(key)]; ok {
		return storageUpdate.Data
	}

	fmt.Println("context.blockChainHook.GetStorageData()", string(context.address))
	value, err := context.blockChainHook.GetStorageData(context.address, key)
	fmt.Println("context.blockChainHook.GetStorageData()", "err", err, "value", hex.EncodeToString(value))
	if value != nil {
		storageUpdates[string(key)] = &vmcommon.StorageUpdate{
			Offset: key,
			Data:   value,
		}
	}

	return value
}

func (context *storageContext) isElrondReservedKey(key []byte) bool {
	return bytes.HasPrefix(key, []byte(context.elrondProtectedKeyPrefix))
}

func (context *storageContext) SetStorage(key []byte, value []byte) (arwen.StorageStatus, error) {
	fmt.Println("storageContext.SetStorage()", string(key), "value", hex.EncodeToString(value))
	if context.isElrondReservedKey(key) {
		return arwen.StorageUnchanged, arwen.ErrStoreElrondReservedKey
	}

	if context.host.Runtime().ReadOnly() {
		return arwen.StorageUnchanged, nil
	}

	fmt.Println("context.host.Metering()...")
	metering := context.host.Metering()
	var zero []byte
	strKey := string(key)
	length := len(value)

	var oldValue []byte
	storageUpdates := context.GetStorageUpdates(context.address)
	if update, ok := storageUpdates[strKey]; !ok {
		oldValue = context.GetStorage(key)
		storageUpdates[strKey] = &vmcommon.StorageUpdate{
			Offset: key,
			Data:   oldValue,
		}
	} else {
		oldValue = update.Data
	}

	fmt.Println("line 125")
	lengthOldValue := len(oldValue)
	if bytes.Equal(oldValue, value) {
		useGas := metering.GasSchedule().BaseOperationCost.DataCopyPerByte * uint64(length)
		metering.UseGas(useGas)
		return arwen.StorageUnchanged, nil
	}

	newUpdate := &vmcommon.StorageUpdate{
		Offset: key,
		Data:   make([]byte, length),
	}
	copy(newUpdate.Data[:length], value[:length])
	storageUpdates[strKey] = newUpdate

	fmt.Println("line 140")
	if bytes.Equal(oldValue, zero) {
		fmt.Println("line 142")
		useGas := metering.GasSchedule().BaseOperationCost.StorePerByte * uint64(length)
		fmt.Println("line 144")
		metering.UseGas(useGas)
		fmt.Println("line 146")
		return arwen.StorageAdded, nil
	}
	if bytes.Equal(value, zero) {
		fmt.Println("line 150")
		freeGas := metering.GasSchedule().BaseOperationCost.ReleasePerByte * uint64(lengthOldValue)
		fmt.Println("line 152")
		metering.FreeGas(freeGas)
		fmt.Println("line 154")
		return arwen.StorageDeleted, nil
	}

	newValueExtraLength := length - lengthOldValue
	if newValueExtraLength > 0 {
		useGas := metering.GasSchedule().BaseOperationCost.PersistPerByte * uint64(lengthOldValue)
		useGas += metering.GasSchedule().BaseOperationCost.StorePerByte * uint64(newValueExtraLength)
		metering.UseGas(useGas)
	}
	if newValueExtraLength < 0 {
		newValueExtraLength = -newValueExtraLength

		useGas := metering.GasSchedule().BaseOperationCost.PersistPerByte * uint64(length)
		metering.UseGas(useGas)

		freeGas := metering.GasSchedule().BaseOperationCost.ReleasePerByte * uint64(newValueExtraLength)
		metering.FreeGas(freeGas)
	}

	return arwen.StorageModified, nil
}
