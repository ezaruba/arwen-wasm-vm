package context

import "errors"

var ErrInitFuncCalledInRun = errors.New("it is not allowed to call init in run")

var ErrFunctionNonFound = errors.New("function not found")

var ErrInvalidTransfer = errors.New("invalid sender")
