package debugging

import (
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"math/big"
	"os"
	"path/filepath"
	"strconv"
	"time"

	vmcommon "github.com/ElrondNetwork/elrond-vm-common"
	"github.com/ElrondNetwork/go-ext-wasm/wasmer"
)

// TraceVMOutput saves the VMOutput to a JSON file, ./trace/smart-contracts/[scAddress]/vmOutput_[timestamp].json
// If any error occurs, it will be sent to logger.
func TraceVMOutput(scAddress []byte, vmOutput *vmcommon.VMOutput) {
	scAddressEncoded := hex.EncodeToString(scAddress)
	folder := prepareTraceFolder("smart-contracts", scAddressEncoded)
	saveToJSON(folder, "vmOutput", vmOutput)
}

// prepareTraceFolder creates a full path of a trace sub-folder and ensures its existence.
// The result is the full path to the sub-folder.
// If any error occurs in the creation of the sub-folder, it will be sent to logger.
func prepareTraceFolder(folderParts ...string) string {
	parentFolder := filepath.Join(".", "trace")
	subFolder := filepath.Join(folderParts...)
	fullFolderPath := filepath.Join(parentFolder, subFolder)
	err := os.MkdirAll(fullFolderPath, os.ModePerm)

	if err != nil {
		log.Printf("trace.prepareTraceFolder: could not create folder %s. %s\n", fullFolderPath, err.Error())
	}

	return fullFolderPath
}

// saveToJSON creates a file at the specified path (folder and fileNamePrefix), containing a JSON representation of the value parameter.
// It returns no error. If any error occurs, it will be sent to logger and handled silently.
func saveToJSON(parentFolder string, fileNamePrefix string, value interface{}) {
	timestamp := time.Now().Format("20060102150405")
	fileName := fmt.Sprintf("%s_%s.json", fileNamePrefix, timestamp)
	path := filepath.Join(parentFolder, fileName)
	serialized := serializeToJSON(value)
	err := ioutil.WriteFile(path, serialized, 0644)

	if err != nil {
		log.Printf("trace.saveToJSON: could not save file %s. %s\n", path, err.Error())
	} else {
		log.Printf("trace.saveToJSON: saved file %s\n", path)
	}
}

// serializeToJSON creates a JSON representation of the value parameter.
// The JSON representation is pretty formatted.
// It returns no error. If any error occurs, it will be sent to logger, and the JSON representation will be void (empty).
func serializeToJSON(value interface{}) []byte {
	serialized, err := json.MarshalIndent(value, "", "\t")

	if err != nil {
		log.Printf("trace.serializeToJson: Could not serialize value: %s", err.Error())
		serialized = []byte{}
	}

	return serialized
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

		for _, storageUpdate := range outputAccount.StorageUpdates {
			fmt.Println("\t\tStorage update key: "+hex.EncodeToString(storageUpdate.Offset)+" value: ", storageUpdate.Data)
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
