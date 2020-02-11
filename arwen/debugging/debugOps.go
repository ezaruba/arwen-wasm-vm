package debugging

// // Declare the function signatures (see [cgo](https://golang.org/cmd/cgo/)).
//
// #include <stdlib.h>
// typedef unsigned char uint8_t;
// typedef int int32_t;
//
// extern void debugPrintBigInt(void* context, int32_t handle);
// extern void debugPrintInt64(void* context, long long value);
// extern void debugPrintInt32(void* context, int32_t value);
// extern void debugPrintBytes(void* context, int32_t byteOffset, int32_t byteLength);
// extern void debugPrintString(void* context, int32_t byteOffset, int32_t byteLength);
// extern void debugPrintLineNumber(void* context, int32_t value);
import "C"

import (
	"encoding/hex"
	"fmt"
	"math/big"
	"unsafe"

	"github.com/ElrondNetwork/arwen-wasm-vm/arwen"
	"github.com/ElrondNetwork/arwen-wasm-vm/wasmer"
)

func DebugImports(imports *wasmer.Imports) (*wasmer.Imports, error) {
	imports = imports.Namespace("env")

	imports, err := imports.Append("debugPrintBigInt", debugPrintBigInt, C.debugPrintBigInt)
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

	imports, err = imports.Append("debugPrintLineNumber", debugPrintLineNumber, C.debugPrintLineNumber)
	if err != nil {
		return nil, err
	}
	
	return imports, nil
}

//export debugPrintBigInt
func debugPrintBigInt(context unsafe.Pointer, handle int32) {
	bigInt := arwen.GetBigIntContext(context)
	output := bigInt.GetOne(handle).Bytes()
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
	host := arwen.GetVmContext(context)
	runtime := host.Runtime()
	
	bytes, _ := runtime.MemLoad(byteOffset, byteLength)
	fmt.Printf(">>> Bytes: %s\n", hex.EncodeToString(bytes))
}

//export debugPrintString
func debugPrintString(context unsafe.Pointer, byteOffset int32, byteLength int32) {
	host := arwen.GetVmContext(context)
	runtime := host.Runtime()

	bytes, _ := runtime.MemLoad(byteOffset, byteLength)
	fmt.Printf(">>> String: \"%s\"\n", string(bytes))
}

//export debugPrintLineNumber
func debugPrintLineNumber(context unsafe.Pointer, value int32) {
	fmt.Printf(">>> Line: %d\n", value)
}