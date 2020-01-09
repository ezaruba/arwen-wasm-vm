package debugging

import (
	"encoding/hex"
	"fmt"
	"io/ioutil"
	"math/big"
	"strconv"
	"sync"

	vmcommon "github.com/ElrondNetwork/elrond-vm-common"
	"github.com/ElrondNetwork/go-ext-wasm/wasmer"
)

// Trace is useful for debugging (in IDE)
type Trace struct {
	mutex          sync.Mutex
	vmOutputMap    map[string]*vmcommon.VMOutput
	latestVMOutput *vmcommon.VMOutput
}

// GlobalTrace is the trace singleton
var GlobalTrace = &Trace{
	vmOutputMap: make(map[string]*vmcommon.VMOutput),
}

// PutVMOutput saves the VMOutput in the trace
func (trace *Trace) PutVMOutput(scAddress []byte, vmOutput *vmcommon.VMOutput) {
	trace.mutex.Lock()
	defer trace.mutex.Unlock()

	scAddressEncoded := hex.EncodeToString(scAddress)
	trace.vmOutputMap[scAddressEncoded] = vmOutput
	trace.latestVMOutput = vmOutput
}

func DisplayWasmerInstance(instance *wasmer.Instance) {
	fmt.Println()

	fmt.Print("Exported functions: ")

	for key := range instance.Exports {
		fmt.Print(key, " ")
	}

	fmt.Println()
}

func DisplayVMCallInput(input *vmcommon.ContractCallInput) {
	fmt.Println("Contract Call Input:")
	fmt.Println("\tFunction: ", input.Function)
	fmt.Println("\tCaller: ", hex.EncodeToString(input.CallerAddr))
	fmt.Println("\tCallValue: ", input.CallValue.String())
	fmt.Println("\tNumber of arguments: ", len(input.Arguments))

	for i, value := range input.Arguments {
		fmt.Printf("Arg as int %d: %s\n", i, big.NewInt(0).SetBytes(value).String())
		fmt.Printf("Arg hex %d: %s\n", i, hex.EncodeToString(value))
	}
}

func DisplayVMOutput(output *vmcommon.VMOutput) {
	fmt.Println("VM Output:")
	fmt.Println("\tRetunCode: ", output.ReturnCode)
	fmt.Println("\tReturnData: ", output.ReturnData)
	fmt.Println("\tGasRemaining: ", output.GasRemaining)
	fmt.Println("\tGasRefund: ", output.GasRefund)

	for id, touchedAccount := range output.TouchedAccounts {
		fmt.Println("\tTouched account ", id, ": "+hex.EncodeToString(touchedAccount))
	}

	for id, deletedAccount := range output.DeletedAccounts {
		fmt.Println("\tDeleted account ", id, ": "+hex.EncodeToString(deletedAccount))
	}

	for id, outputAccount := range output.OutputAccounts {
		fmt.Println("\tOutput account ", id, ": "+hex.EncodeToString(outputAccount.Address))
		if outputAccount.BalanceDelta != nil {
			fmt.Println("\t\tBalance change with : ", outputAccount.BalanceDelta)
		}
		if outputAccount.Nonce != 0 {
			fmt.Println("\t\tNonce change to : ", outputAccount.Nonce)
		}
		if len(outputAccount.Code) > 0 {
			fmt.Println("\t\tCode change to : [", len(outputAccount.Code), " bytes]")
		}
		if len(outputAccount.Data) > 0 {
			fmt.Println("\t\tData: [", string(outputAccount.Data), "]")
		}

		for _, storageUpdate := range outputAccount.StorageUpdates {
			valueFormatted := fmt.Sprintf("%s / %s", storageUpdate.Data, big.NewInt(0).SetBytes(storageUpdate.Data))
			fmt.Println("\t\tStorage update key: "+hex.EncodeToString(storageUpdate.Offset)+" value: ", valueFormatted)
		}
	}

	for _, log := range output.Logs {
		fmt.Println("Log address: " + hex.EncodeToString(log.Address) + " data: " + string(log.Data))
		fmt.Println("Topics started: ")
		for _, topic := range log.Topics {
			fmt.Print(topic, " ")
		}
		fmt.Println("Topics end")
	}
}

func DisplayVisualSeparator() {
	fmt.Println("================================================================")
}

func TraceCall(functionName string) {
	fmt.Printf("> %s()\n", functionName)
}

func TraceReturnInt32(returned int32) {
	fmt.Printf("> Return: %d\n", returned)
}

func TraceReturnInt64(returned int64) {
	fmt.Printf("> Return: %d\n", returned)
}

func TraceReturnUint64(returned uint64) {
	fmt.Printf("> Return: %d\n", returned)
}

func TraceVarBytes(name string, value []byte) {
	encoded := hex.EncodeToString(value)
	TraceVarString(name, encoded)
}

func TraceVarBigIntBytes(name string, value []byte) {
	TraceVarBigInt(name, big.NewInt(0).SetBytes(value))
}

func TraceVarBigInt(name string, value *big.Int) {
	str := value.String()
	TraceVarString(name, str)
}

func TraceVarInt(name string, value int) {
	str := strconv.Itoa(value)
	TraceVarString(name, str)
}

func TraceVarInt32(name string, value int32) {
	str := strconv.FormatInt(int64(value), 10)
	TraceVarString(name, str)
}

func TraceVarUint64(name string, value uint64) {
	str := strconv.FormatUint(value, 10)
	TraceVarString(name, str)
}

func TraceVarString(name string, value string) {
	fmt.Printf("\tvar %s = %s\n", name, value)
}

func TraceErr(context string, err error) {
	if err != nil {
		fmt.Printf("\tError (%s): %s\n", context, err.Error())
	}
}

func TraceErrMessage(message string) {
	fmt.Printf("\tError: %s\n", message)
}

func TraceMemory(memory *wasmer.Memory) {
	data := memory.Data()
	_ = ioutil.WriteFile("memory.txt", data, 0644)
}
