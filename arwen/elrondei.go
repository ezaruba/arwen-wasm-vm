package arwen

// // Declare the function signatures (see [cgo](https://golang.org/cmd/cgo/)).
//
// #include <stdlib.h>
// typedef unsigned char uint8_t;
// typedef int int32_t;
//
// extern void getOwner(void *context, int32_t resultOffset);
// extern void getExternalBalance(void *context, int32_t addressOffset, int32_t resultOffset);
// extern int32_t blockHash(void *context, long long nonce, int32_t resultOffset);
// extern int32_t transferValue(void *context, long long gasLimit, int32_t dstOffset, int32_t sndOffset, int32_t valueOffset, int32_t dataOffset, int32_t length);
// extern int32_t getArgument(void *context, int32_t id, int32_t argOffset);
// extern int32_t getFunction(void *context, int32_t functionOffset);
// extern int32_t getNumArguments(void *context);
// extern int32_t storageStore(void *context, int32_t keyOffset, int32_t dataOffset, int32_t dataLength);
// extern int32_t storageLoad(void *context, int32_t keyOffset, int32_t dataOffset);
// extern void getCaller(void *context, int32_t resultOffset);
// extern int32_t callValue(void *context, int32_t resultOffset);
// extern void writeLog(void *context, int32_t pointer, int32_t length, int32_t topicPtr, int32_t numTopics);
// extern void returnData(void* context, int32_t dataOffset, int32_t length);
// extern void signalError(void* context);
// extern long long getGasLeft(void *context);
//
// extern long long getBlockTimestamp(void *context);
// extern long long getBlockNonce(void *context);
// extern long long getBlockRound(void *context);
// extern long long getBlockEpoch(void *context);
// extern void getBlockRandomSeed(void *context, int32_t resultOffset);
// extern void getStateRootHash(void *context, int32_t resultOffset);
//
// extern long long getPrevBlockTimestamp(void *context);
// extern long long getPrevBlockNonce(void *context);
// extern long long getPrevBlockRound(void *context);
// extern long long getPrevBlockEpoch(void *context);
// extern void getPrevBlockRandomSeed(void *context, int32_t resultOffset);
//
// extern long long int64getArgument(void *context, int32_t id);
// extern int32_t int64storageStore(void *context, int32_t keyOffset, long long value);
// extern long long int64storageLoad(void *context, int32_t keyOffset);
// extern void int64finish(void* context, long long value);
// extern void debugPrintInt64(void* context, long long value);
// extern void debugPrintInt32(void* context, int32_t value);
// extern void debugPrintBytes(void* context, int32_t byteOffset, int32_t byteLength);
// extern void debugPrintString(void* context, int32_t byteOffset, int32_t byteLength);
import "C"

import (
	"encoding/hex"
	"fmt"
	"math/big"
	"unsafe"

	vmcommon "github.com/ElrondNetwork/elrond-vm-common"
	"github.com/ElrondNetwork/go-ext-wasm/wasmer"
)

func ElrondEImports() (*wasmer.Imports, error) {
	imports := wasmer.NewImports()
	imports = imports.Namespace("env")

	imports, err := imports.Append("getOwner", getOwner, C.getOwner)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getExternalBalance", getExternalBalance, C.getExternalBalance)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getBlockHash", blockHash, C.blockHash)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("transferValue", transferValue, C.transferValue)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getArgument", getArgument, C.getArgument)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getFunction", getFunction, C.getFunction)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getNumArguments", getNumArguments, C.getNumArguments)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("storageStore", storageStore, C.storageStore)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("storageLoad", storageLoad, C.storageLoad)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getCaller", getCaller, C.getCaller)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getCallValue", callValue, C.callValue)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("writeLog", writeLog, C.writeLog)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("finish", returnData, C.returnData)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("signalError", signalError, C.signalError)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getBlockTimestamp", getBlockTimestamp, C.getBlockTimestamp)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getBlockNonce", getBlockNonce, C.getBlockNonce)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getBlockRound", getBlockRound, C.getBlockRound)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getBlockEpoch", getBlockEpoch, C.getBlockEpoch)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getBlockRandomSeed", getBlockRandomSeed, C.getBlockRandomSeed)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getStateRootHash", getStateRootHash, C.getStateRootHash)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getPrevBlockTimestamp", getPrevBlockTimestamp, C.getPrevBlockTimestamp)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getPrevBlockNonce", getPrevBlockNonce, C.getPrevBlockNonce)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getPrevBlockRound", getPrevBlockRound, C.getPrevBlockRound)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getPrevBlockEpoch", getPrevBlockEpoch, C.getPrevBlockEpoch)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getPrevBlockRandomSeed", getPrevBlockRandomSeed, C.getPrevBlockRandomSeed)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("getGasLeft", getGasLeft, C.getGasLeft)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("int64getArgument", int64getArgument, C.int64getArgument)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("int64storageStore", int64storageStore, C.int64storageStore)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("debugPrintBigInt", debugPrintBigInt, C.debugPrintBigInt)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("debugPrintInt64", debugPrintInt64, C.debugPrintInt64)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("debugPrintInt32", debugPrintInt32, C.debugPrintInt32)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("debugPrintBytes", debugPrintBytes, C.debugPrintBytes)
	if err != nil {
		return nil, err
	}

	imports, err = imports.Append("debugPrintString", debugPrintString, C.debugPrintString)
	if err != nil {
		return nil, err
	}

	return imports, nil
}

// Write the implementation of the functions, and export it (for cgo).

//export getOwner
func getOwner(context unsafe.Pointer, resultOffset int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	owner := hostContext.GetSCAddress()
	err := storeBytes(instCtx.Memory(), resultOffset, owner)
	if err != nil {
		fmt.Println("loadOwner error: " + err.Error())
	}
	fmt.Println("loadOwner " + hex.EncodeToString(owner))
}

//export signalError
func signalError(context unsafe.Pointer) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	hostContext.SignalUserError()
	fmt.Println("signalError called")
}

//export getExternalBalance
func getExternalBalance(context unsafe.Pointer, addressOffset int32, resultOffset int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	address := loadBytes(instCtx.Memory(), addressOffset, addressLen)
	balance := hostContext.GetBalance(address)
	err := storeBytes(instCtx.Memory(), resultOffset, balance)
	if err != nil {
		fmt.Println("getExternalBalance error: " + err.Error())
	}

	fmt.Println("getExternalBalance address: " + hex.EncodeToString(address) + " balance: " + big.NewInt(0).SetBytes(balance).String())
}

//export getGasLeft
func getGasLeft(context unsafe.Pointer) int64 {
	// TODO: implement
	fmt.Println("getGasLeft ", 100000)
	return 100000
}

//export getBlockHash
func getBlockHash(context unsafe.Pointer, nonce int64, resultOffset int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	hash := hostContext.BlockHash(nonce)
	err := storeBytes(instCtx.Memory(), resultOffset, hash)
	if err != nil {
		fmt.Println("blockHash error: " + err.Error())
		return 1
	}

	fmt.Println("blockHash " + hex.EncodeToString(hash))
	return 0
}

//export transfer
func transfer(context unsafe.Pointer, gasLimit int64, sndOffset int32, destOffset int32, valueOffset int32, dataOffset int32, length int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	send := loadBytes(instCtx.Memory(), sndOffset, addressLen)
	dest := loadBytes(instCtx.Memory(), destOffset, addressLen)
	value := loadBytes(instCtx.Memory(), valueOffset, balanceLen)
	data := loadBytes(instCtx.Memory(), dataOffset, length)

	_, err := hostContext.Transfer(dest, send, big.NewInt(0).SetBytes(value), data, gasLimit)
	if err != nil {
		fmt.Println("transfer error: " + err.Error())
		return 1
	}

	fmt.Println("transfer succeed")
	return 0
}

//export getArgument
func getArgument(context unsafe.Pointer, id int32, argOffset int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	args := hostContext.Arguments()
	if int32(len(args)) <= id {
		fmt.Println("getArgument id invalid")
		return -1
	}

	err := storeBytes(instCtx.Memory(), argOffset, args[id].Bytes())
	if err != nil {
		fmt.Println("getArgument error " + err.Error())
		return -1
	}

	fmt.Println("getArgument value: " + hex.EncodeToString(args[id].Bytes()))
	return int32(len(args[id].Bytes()))
}

//export getFunction
func getFunction(context unsafe.Pointer, functionOffset int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	function := hostContext.Function()
	err := storeBytes(instCtx.Memory(), functionOffset, []byte(function))
	if err != nil {
		fmt.Println("getFunction error: ", err.Error())
		return -1
	}

	fmt.Println("getFunction name: " + function)
	return int32(len(function))
}

//export getNumArguments
func getNumArguments(context unsafe.Pointer) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	fmt.Println("getNumArguments ", len(hostContext.Arguments()))
	return int32(len(hostContext.Arguments()))
}

//export storageStore
func storageStore(context unsafe.Pointer, keyOffset int32, dataOffset int32, dataLength int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	key := loadBytes(instCtx.Memory(), keyOffset, hashLen)
	data := loadBytes(instCtx.Memory(), dataOffset, dataLength)

	fmt.Println("storageStore key: "+string(key)+" value: ", big.NewInt(0).SetBytes(data))
	return hostContext.SetStorage(hostContext.GetSCAddress(), key, data)
}

//export storageLoad
func storageLoad(context unsafe.Pointer, keyOffset int32, dataOffset int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	key := loadBytes(instCtx.Memory(), keyOffset, hashLen)
	data := hostContext.GetStorage(hostContext.GetSCAddress(), key)

	err := storeBytes(instCtx.Memory(), dataOffset, data)
	if err != nil {
		fmt.Println("storageLoad error: " + err.Error())
		return -1
	}

	fmt.Println("storageLoad key: "+string(key)+" value: ", big.NewInt(0).SetBytes(data))
	return int32(len(data))
}

//export getCaller
func getCaller(context unsafe.Pointer, resultOffset int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	caller := hostContext.GetVMInput().CallerAddr

	err := storeBytes(instCtx.Memory(), resultOffset, caller)
	if err != nil {
		fmt.Println("getCaller error: " + err.Error())
	}
	fmt.Println("getCaller " + hex.EncodeToString(caller))
}

//export getCallValue
func getCallValue(context unsafe.Pointer, resultOffset int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	value := hostContext.GetVMInput().CallValue.Bytes()
	length := len(value)
	invBytes := make([]byte, length)
	for i := 0; i < length; i++ {
		invBytes[length-i-1] = value[i]
	}

	err := storeBytes(instCtx.Memory(), resultOffset, invBytes)
	if err != nil {
		fmt.Println("getCallValue error " + err.Error())
		return -1
	}

	fmt.Println("getCallValue ", hostContext.GetVMInput().CallValue)
	return int32(length)
}

//export writeLog
func writeLog(context unsafe.Pointer, pointer int32, length int32, topicPtr int32, numTopics int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	log := loadBytes(instCtx.Memory(), pointer, length)

	topics := make([][]byte, numTopics)
	fmt.Println("writeLog: ")
	for i := int32(0); i < numTopics; i++ {
		topics[i] = loadBytes(instCtx.Memory(), topicPtr+i*hashLen, hashLen)
		fmt.Println("topics: " + string(topics[i]))
	}

	fmt.Print("log: " + string(log))
	hostContext.WriteLog(hostContext.GetSCAddress(), topics, log)
}

//export getBlockTimestamp
func getBlockTimestamp(context unsafe.Pointer) int64 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	fmt.Println("getBlockTimestamp ", hostContext.GetVMInput().Header.Timestamp.Int64())
	return hostContext.GetVMInput().Header.Timestamp.Int64()
}

//export finish
func finish(context unsafe.Pointer, pointer int32, length int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	data := loadBytes(instCtx.Memory(), pointer, length)
	fmt.Println("finish: ", big.NewInt(0).SetBytes(data))
	hostContext.Finish(data)
}

//export int64getArgument
func int64getArgument(context unsafe.Pointer, id int32) int64 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	args := hostContext.Arguments()
	if int32(len(args)) <= id {
		fmt.Println("getArgument id invalid")
		return -1
	}

	fmt.Println("getArgument value: ", args[id].Int64())
	return args[id].Int64()
}

//export int64storageStore
func int64storageStore(context unsafe.Pointer, keyOffset int32, value int64) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	key := loadBytes(instCtx.Memory(), keyOffset, hashLen)
	data := big.NewInt(value)

	fmt.Println("storageStoreAsInt64 key: "+string(key)+"value: ", data.Int64())
	return hostContext.SetStorage(hostContext.GetSCAddress(), key, data.Bytes())
}

//export int64storageLoad
func int64storageLoad(context unsafe.Pointer, keyOffset int32) int64 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	key := loadBytes(instCtx.Memory(), keyOffset, hashLen)
	data := hostContext.GetStorage(hostContext.GetSCAddress(), key)

	bigInt := big.NewInt(0).SetBytes(data)
	fmt.Println("storageLoadAsInt64 "+string(key)+" value: ", bigInt.Int64())

	return bigInt.Int64()
}

//export int64finish
func int64finish(context unsafe.Pointer, value int64) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	fmt.Println("int64finish ", value)
	hostContext.Finish(big.NewInt(0).SetInt64(value).Bytes())
}

//export bigIntgetArgument
func bigIntgetArgument(context unsafe.Pointer, id int32, destination int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	args := hostContext.Arguments()
	if int32(len(args)) <= id {
		fmt.Println("bigIntgetArgument id invalid")
		return
	}

	hostContext.BigUpdate(destination, args[id])
	fmt.Println("bigIntgetArgument ", args[id].String())
}

//export bigIntstorageStore
func bigIntstorageStore(context unsafe.Pointer, keyOffset int32, source int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	key := loadBytes(instCtx.Memory(), keyOffset, hashLen)
	bytes := hostContext.BigGetBytes(source)

	fmt.Println("bigIntstorageStore key: " + hex.EncodeToString(key) + ", value: ", bytes)
	return hostContext.SetStorage(hostContext.GetSCAddress(), key, bytes)
}

//export bigIntstorageLoad
func bigIntstorageLoad(context unsafe.Pointer, keyOffset int32, destination int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	key := loadBytes(instCtx.Memory(), keyOffset, hashLen)
	bytes := hostContext.GetStorage(hostContext.GetSCAddress(), key)

	hostContext.BigSetBytes(destination, bytes)

	fmt.Println("bigIntstorageLoad key: " + hex.EncodeToString(key) + ", value: ", bytes)
	return int32(len(bytes))
}

//export bigIntgetCallValue
func bigIntgetCallValue(context unsafe.Pointer, destination int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	hostContext.BigUpdate(destination, hostContext.GetVMInput().CallValue)
	fmt.Println("bigIntgetCallValue ", hostContext.GetVMInput().CallValue.String())
}

//export bigIntgetExternalBalance
func bigIntgetExternalBalance(context unsafe.Pointer, addressOffset int32, result int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	address := loadBytes(instCtx.Memory(), addressOffset, addressLen)
	balance := hostContext.GetBalance(address)
	hostContext.BigUpdate(result, big.NewInt(0).SetBytes(balance))
	fmt.Println("bigIntgetExternalBalance ", big.NewInt(0).SetBytes(balance).String())
}

//export bigIntNew
func bigIntNew(context unsafe.Pointer, smallValue int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	fmt.Println("bigIntNew ", smallValue)
	return hostContext.BigInsertInt64(int64(smallValue))
}

//export bigIntByteLength
func bigIntByteLength(context unsafe.Pointer, reference int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	fmt.Println("bigIntByteLength ", hostContext.BigByteLength(reference))
	return hostContext.BigByteLength(reference)
}

//export bigIntGetBytes
func bigIntGetBytes(context unsafe.Pointer, reference int32, byteOffset int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	bytes := hostContext.BigGetBytes(reference)

	err := storeBytes(instCtx.Memory(), byteOffset, bytes)
	if err != nil {
	}

	fmt.Println("bigIntGetBytes ", hostContext.BigGetBytes(reference))
	return int32(len(bytes))
}

//export bigIntSetBytes
func bigIntSetBytes(context unsafe.Pointer, destination int32, byteOffset int32, byteLength int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	bytes := loadBytes(instCtx.Memory(), byteOffset, byteLength)
	hostContext.BigSetBytes(destination, bytes)

	fmt.Println("bigIntSetBytes ", bytes)
}

//export bigIntIsInt64
func bigIntIsInt64(context unsafe.Pointer, destination int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())
	if hostContext.BigIsInt64(destination) {
		fmt.Println("bigIntIsInt64 true")
		return 1
	}
	fmt.Println("bigIntIsInt64 false")
	return 0
}

//export bigIntGetInt64
func bigIntGetInt64(context unsafe.Pointer, destination int32) int64 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	fmt.Println("bigIntGetInt64 ", hostContext.BigGetInt64(destination))
	return hostContext.BigGetInt64(destination)
}

//export bigIntSetInt64
func bigIntSetInt64(context unsafe.Pointer, destination int32, value int64) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())
	hostContext.BigSetInt64(destination, value)

	fmt.Println("bigIntSetInt64 ", destination, " ", value)
}

//export bigIntAdd
func bigIntAdd(context unsafe.Pointer, destination, op1, op2 int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())
	hostContext.BigAdd(destination, op1, op2)

	fmt.Println("bigIntAdd ", hostContext.BigGet(op1), "+", hostContext.BigGet(op2), "=", hostContext.BigGet(destination))
}

//export bigIntSub
func bigIntSub(context unsafe.Pointer, destination, op1, op2 int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())
	hostContext.BigSub(destination, op1, op2)

	fmt.Println("bigIntSub ", hostContext.BigGet(op1), "-", hostContext.BigGet(op2), "=", hostContext.BigGet(destination))
}

//export bigIntMul
func bigIntMul(context unsafe.Pointer, destination, op1, op2 int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())
	hostContext.BigMul(destination, op1, op2)

	fmt.Println("bigIntMul ", hostContext.BigGet(op1), "*", hostContext.BigGet(op2), "=", hostContext.BigGet(destination))
}

//export bigIntCmp
func bigIntCmp(context unsafe.Pointer, op1, op2 int32) int32 {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	fmt.Println("bigIntCmp ", hostContext.BigGet(op1), ",", hostContext.BigGet(op2))
	return int32(hostContext.BigCmp(op1, op2))
}

//export bigIntFinish
func bigIntFinish(context unsafe.Pointer, reference int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())

	output := hostContext.BigGetBytes(reference)
	hostContext.Finish(output)

	fmt.Println("bigIntFinish ", hostContext.BigGet(reference))
}

//export debugPrintBigInt
func debugPrintBigInt(context unsafe.Pointer, handle int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	hostContext := getHostContext(instCtx.Data())
	output := hostContext.BigGetBytes(handle)
	fmt.Printf(">>> BigInt: %s\n", big.NewInt(0).SetBytes(output).String())
}

//export debugPrintInt64
func debugPrintInt64(context unsafe.Pointer, value int64) {
	fmt.Printf(">>> Int64: %d\n", value)
}

//export debugPrintInt32
func debugPrintInt32(context unsafe.Pointer, value int32) {
	fmt.Printf(">>> Int32: %d\n", value)
}

//export debugPrintBytes
func debugPrintBytes(context unsafe.Pointer, byteOffset int32, byteLength int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	bytes := loadBytes(instCtx.Memory(), byteOffset, byteLength)
	fmt.Printf(">>> Bytes: %s\n", hex.EncodeToString(bytes))
}

//export debugPrintString
func debugPrintString(context unsafe.Pointer, byteOffset int32, byteLength int32) {
	instCtx := wasmer.IntoInstanceContext(context)
	bytes := loadBytes(instCtx.Memory(), byteOffset, byteLength)
	fmt.Printf(">>> String: \"%s\"\n", string(bytes))
}
