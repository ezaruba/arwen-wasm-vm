package ethapi

import (
	"encoding/hex"
	"fmt"
	"unsafe"

	"github.com/ElrondNetwork/arwen-wasm-vm/arwen"
	"github.com/ElrondNetwork/go-ext-wasm/wasmer"
)

var contractsMap = map[string]func(unsafe.Pointer, []byte) ([]byte, error){
	"0000000000000000000000000000000000000002": sha2_256,
	"0000000000000000000000000000000000000009": keccak256,
}

func IsAddressForPredefinedContract(address []byte) bool {
	contractKey := hex.EncodeToString(address)
	_, ok := contractsMap[contractKey]
	return ok
}

func CallPredefinedContract(ctx unsafe.Pointer, address []byte, data []byte) error {
	instCtx := wasmer.IntoInstanceContext(ctx)
	ethCtx := arwen.GetEthContext(instCtx.Data())

	contractKey := hex.EncodeToString(address)
	contract, ok := contractsMap[contractKey]
	if !ok {
		return fmt.Errorf("invalid EEI system contract call: %s", contractKey)
	}

	returnData, err := contract(ctx, data)
	ethCtx.PutReturnData(returnData)

	return err
}

func sha2_256(context unsafe.Pointer, data []byte) ([]byte, error) {
	instCtx := wasmer.IntoInstanceContext(context)
	cryptoContext := arwen.GetCryptoContext(instCtx.Data())

	resultString, err := cryptoContext.CryptoHooks().Sha256(string(data))
	if err != nil {
		return nil, err
	}

	result, _ := hex.DecodeString(resultString)
	return result, nil
}

func keccak256(context unsafe.Pointer, data []byte) ([]byte, error) {
	instCtx := wasmer.IntoInstanceContext(context)
	cryptoContext := arwen.GetCryptoContext(instCtx.Data())

	resultString, err := cryptoContext.CryptoHooks().Keccak256(string(data))
	if err != nil {
		return nil, err
	}

	result, _ := hex.DecodeString(resultString)
	return result, nil
}
