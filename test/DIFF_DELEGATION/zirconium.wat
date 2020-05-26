(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i32) (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (param i32 i32 i32 i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (param i64) (result i32)))
  (type $t6 (func (param i32 i32)))
  (type $t7 (func (result i32)))
  (type $t8 (func (param i32 i32 i32)))
  (type $t9 (func (param i32) (result i64)))
  (type $t10 (func (param i32 i32 i32 i32) (result i32)))
  (type $t11 (func (param i32 i32) (result i64)))
  (type $t12 (func (param i32 i32 i64) (result i32)))
  (type $t13 (func (result i64)))
  (type $t14 (func (param i32 i32 i64)))
  (type $t15 (func (param i64)))
  (type $t16 (func (param i32 i64 i32 i32)))
  (type $t17 (func (param i32 i32 i32 i32 i32)))
  (type $t18 (func (param i32 i64) (result i32)))
  (type $t19 (func))
  (type $t20 (func (param i32 i32 i32 i32 i32 i32)))
  (type $t21 (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "bigIntNew" (func $env.bigIntNew (type $t5)))
  (import "env" "bigIntUnsignedByteLength" (func $env.bigIntUnsignedByteLength (type $t4)))
  (import "env" "bigIntGetUnsignedBytes" (func $env.bigIntGetUnsignedBytes (type $t1)))
  (import "env" "finish" (func $env.finish (type $t6)))
  (import "env" "getNumArguments" (func $env.getNumArguments (type $t7)))
  (import "env" "getArgument" (func $env.getArgument (type $t1)))
  (import "env" "bigIntAdd" (func $env.bigIntAdd (type $t8)))
  (import "env" "signalError" (func $env.signalError (type $t6)))
  (import "env" "int64getArgument" (func $env.int64getArgument (type $t9)))
  (import "env" "bigIntGetUnsignedArgument" (func $env.bigIntGetUnsignedArgument (type $t6)))
  (import "env" "bigIntStorageLoadUnsigned" (func $env.bigIntStorageLoadUnsigned (type $t0)))
  (import "env" "bigIntStorageStoreUnsigned" (func $env.bigIntStorageStoreUnsigned (type $t0)))
  (import "env" "bigIntGetCallValue" (func $env.bigIntGetCallValue (type $t2)))
  (import "env" "bigIntCmp" (func $env.bigIntCmp (type $t1)))
  (import "env" "storageStore" (func $env.storageStore (type $t10)))
  (import "env" "bigIntMul" (func $env.bigIntMul (type $t8)))
  (import "env" "bigIntTDiv" (func $env.bigIntTDiv (type $t8)))
  (import "env" "getOwner" (func $env.getOwner (type $t2)))
  (import "env" "bigIntGetExternalBalance" (func $env.bigIntGetExternalBalance (type $t6)))
  (import "env" "getCaller" (func $env.getCaller (type $t2)))
  (import "env" "int64storageLoad" (func $env.int64storageLoad (type $t11)))
  (import "env" "int64storageStore" (func $env.int64storageStore (type $t12)))
  (import "env" "bigIntFinishUnsigned" (func $env.bigIntFinishUnsigned (type $t2)))
  (import "env" "getBlockNonce" (func $env.getBlockNonce (type $t13)))
  (import "env" "getBlockTimestamp" (func $env.getBlockTimestamp (type $t13)))
  (import "env" "storageLoadLength" (func $env.storageLoadLength (type $t1)))
  (import "env" "storageLoad" (func $env.storageLoad (type $t0)))
  (import "env" "transferValue" (func $env.transferValue (type $t10)))
  (import "env" "asyncCall" (func $env.asyncCall (type $t3)))
  (import "env" "getArgumentLength" (func $env.getArgumentLength (type $t4)))
  (import "env" "writeLog" (func $env.writeLog (type $t3)))
  (import "env" "bigIntSub" (func $env.bigIntSub (type $t8)))
  (import "env" "bigIntSign" (func $env.bigIntSign (type $t4)))
  (func $f33 (type $t7) (result i32)
    (call $env.bigIntNew
      (i64.const 0)))
  (func $f34 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store8 offset=12
      (local.get $l1)
      (i32.const 1))
    (local.set $l2
      (i32.const 0))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 0))
    (i64.store
      (local.get $l1)
      (i64.const 1))
    (call $f35
      (i32.add
        (local.get $l1)
        (i32.const 16))
      (local.get $l1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (i32.load offset=16
              (local.get $l1))
            (i32.const 7)))
        (call $f36
          (i32.add
            (local.get $l1)
            (i32.const 16)))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.load
            (local.get $l1)))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 12))
          (i32.load
            (i32.add
              (local.get $l1)
              (i32.const 8))))
        (br $B0))
      (i64.store offset=4 align=4
        (local.get $p0)
        (i64.load offset=16
          (local.get $l1)))
      (i64.store align=4
        (i32.add
          (local.get $p0)
          (i32.const 12))
        (i64.load
          (i32.add
            (local.get $l1)
            (i32.const 24))))
      (call $f37
        (local.get $l1))
      (local.set $l2
        (i32.const 1)))
    (i32.store
      (local.get $p0)
      (local.get $l2))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 32))))
  (func $f35 (type $t6) (param $p0 i32) (param $p1 i32)
    (i32.store
      (local.get $p0)
      (i32.const 7))
    (i32.store8 offset=12
      (local.get $p1)
      (i32.const 0)))
  (func $f36 (type $t2) (param $p0 i32)
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.load
            (local.get $p0))
          (i32.const 7)))
      (call $f81
        (local.get $p0))))
  (func $f37 (type $t2) (param $p0 i32)
    (call $f86
      (local.get $p0)))
  (func $f38 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (i32.store offset=16
      (local.get $l2)
      (i32.const 0))
    (i64.store offset=8
      (local.get $l2)
      (i64.const 1))
    (i32.store8 offset=20
      (local.get $l2)
      (i32.const 1))
    (local.set $l3
      (i32.load
        (local.get $p1)))
    (call $f39
      (i32.add
        (local.get $l2)
        (i32.const 56))
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.tee $l4
        (i32.load offset=8
          (local.get $p1))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (i32.load offset=56
              (local.get $l2))
            (i32.const 1)))
        (i32.store
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 40))
            (i32.const 8))
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 72))))
        (i64.store offset=40
          (local.get $l2)
          (i64.load
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 56))
              (i32.const 8))))
        (local.set $l5
          (i32.load offset=60
            (local.get $l2)))
        (br $B0))
      (local.set $l6
        (i32.load offset=60
          (local.get $l2)))
      (loop $L2
        (block $B3
          (br_if $B3
            (local.get $l4))
          (local.set $l5
            (i32.const 7))
          (br $B0))
        (call $f40
          (i32.add
            (local.get $l2)
            (i32.const 56))
          (i32.load8_u
            (local.get $l3))
          (local.get $l6))
        (block $B4
          (br_if $B4
            (i32.eq
              (local.tee $l5
                (i32.load offset=56
                  (local.get $l2)))
              (i32.const 7)))
          (i32.store
            (i32.add
              (local.get $l2)
              (i32.const 48))
            (i32.load
              (i32.add
                (local.get $l2)
                (i32.const 68))))
          (i64.store offset=40
            (local.get $l2)
            (i64.load offset=60 align=4
              (local.get $l2)))
          (br $B0))
        (local.set $l4
          (i32.add
            (local.get $l4)
            (i32.const -1)))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const 1)))
        (call $f36
          (i32.add
            (local.get $l2)
            (i32.const 56)))
        (br $L2)))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 24))
        (i32.const 12))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 40))
          (i32.const 8))))
    (i64.store offset=28 align=4
      (local.get $l2)
      (i64.load offset=40
        (local.get $l2)))
    (i32.store offset=24
      (local.get $l2)
      (local.get $l5))
    (block $B5
      (block $B6
        (br_if $B6
          (i32.ne
            (local.get $l5)
            (i32.const 7)))
        (call $f36
          (i32.add
            (local.get $l2)
            (i32.const 24)))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.load offset=8
            (local.get $l2)))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 12))
          (i32.load
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 8))
              (i32.const 8))))
        (local.set $l4
          (i32.const 0))
        (br $B5))
      (i64.store offset=4 align=4
        (local.get $p0)
        (i64.load offset=24
          (local.get $l2)))
      (i64.store align=4
        (i32.add
          (local.get $p0)
          (i32.const 12))
        (i64.load
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 24))
            (i32.const 8))))
      (call $f37
        (i32.add
          (local.get $l2)
          (i32.const 8)))
      (local.set $l4
        (i32.const 1)))
    (call $f37
      (local.get $p1))
    (i32.store
      (local.get $p0)
      (local.get $l4))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 80))))
  (func $f39 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.load8_u offset=12
          (local.get $p1)))
      (call $f246
        (local.get $p1)
        (local.get $p2)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (i32.store8 offset=12
      (local.get $p1)
      (i32.const 0))
    (i32.store
      (local.get $p0)
      (i32.const 0)))
  (func $f40 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f108
      (local.get $p0)
      (local.get $p2)
      (local.get $p1)))
  (func $f41 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (local.set $l4
      (i32.const 0))
    (i32.store offset=8
      (local.get $l3)
      (i32.const 0))
    (i64.store
      (local.get $l3)
      (i64.const 1))
    (i32.store8 offset=12
      (local.get $l3)
      (i32.const 0))
    (block $B0
      (block $B1
        (loop $L2
          (block $B3
            (br_if $B3
              (i32.ne
                (local.get $l4)
                (i32.const 6)))
            (i32.store offset=48
              (local.get $l3)
              (i32.const 7))
            (br $B1))
          (call $f40
            (i32.add
              (local.get $l3)
              (i32.const 64))
            (i32.load8_u
              (i32.add
                (local.get $p1)
                (local.get $l4)))
            (local.get $l3))
          (block $B4
            (br_if $B4
              (i32.ne
                (i32.load offset=64
                  (local.get $l3))
                (i32.const 7)))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 1)))
            (call $f36
              (i32.add
                (local.get $l3)
                (i32.const 64)))
            (br $L2)))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l3)
              (i32.const 48))
            (i32.const 8))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l3)
                (i32.const 64))
              (i32.const 8))))
        (i64.store offset=48
          (local.get $l3)
          (local.tee $l5
            (i64.load offset=64
              (local.get $l3))))
        (br_if $B1
          (i32.eq
            (local.tee $l4
              (i32.wrap_i64
                (local.get $l5)))
            (i32.const 7)))
        (i32.store
          (i32.add
            (i32.add
              (local.get $l3)
              (i32.const 32))
            (i32.const 8))
          (i32.load
            (i32.add
              (local.get $l3)
              (i32.const 60))))
        (i64.store offset=32
          (local.get $l3)
          (i64.load offset=52 align=4
            (local.get $l3)))
        (br $B0))
      (call $f36
        (i32.add
          (local.get $l3)
          (i32.const 48)))
      (call $f42
        (i32.add
          (local.get $l3)
          (i32.const 64))
        (local.get $l3)
        (i64.extend_i32_u
          (local.get $p2)))
      (block $B5
        (br_if $B5
          (i32.eq
            (local.tee $l4
              (i32.load offset=64
                (local.get $l3)))
            (i32.const 7)))
        (i32.store
          (i32.add
            (local.get $l3)
            (i32.const 40))
          (i32.load
            (i32.add
              (local.get $l3)
              (i32.const 76))))
        (i64.store offset=32
          (local.get $l3)
          (i64.load offset=68 align=4
            (local.get $l3)))
        (br $B0))
      (call $f36
        (i32.add
          (local.get $l3)
          (i32.const 64)))
      (local.set $l4
        (i32.const 7)))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 16))
        (i32.const 12))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l3)
            (i32.const 32))
          (i32.const 8))))
    (i64.store offset=20 align=4
      (local.get $l3)
      (i64.load offset=32
        (local.get $l3)))
    (i32.store offset=16
      (local.get $l3)
      (local.get $l4))
    (block $B6
      (block $B7
        (br_if $B7
          (i32.ne
            (local.get $l4)
            (i32.const 7)))
        (call $f36
          (i32.add
            (local.get $l3)
            (i32.const 16)))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.load
            (local.get $l3)))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 12))
          (i32.load
            (i32.add
              (local.get $l3)
              (i32.const 8))))
        (local.set $l4
          (i32.const 0))
        (br $B6))
      (i64.store offset=4 align=4
        (local.get $p0)
        (i64.load offset=16
          (local.get $l3)))
      (i64.store align=4
        (i32.add
          (local.get $p0)
          (i32.const 12))
        (i64.load
          (i32.add
            (i32.add
              (local.get $l3)
              (i32.const 16))
            (i32.const 8))))
      (call $f37
        (local.get $l3))
      (local.set $l4
        (i32.const 1)))
    (i32.store
      (local.get $p0)
      (local.get $l4))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 80))))
  (func $f42 (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i64)
    (call $f51
      (local.get $p1)
      (local.get $p2)
      (i32.const 64)
      (i32.load8_u offset=12
        (local.get $p1)))
    (i32.store
      (local.get $p0)
      (i32.const 7)))
  (func $f43 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (i32.store offset=16
      (local.get $l2)
      (i32.const 0))
    (i64.store offset=8
      (local.get $l2)
      (i64.const 1))
    (i32.store8 offset=20
      (local.get $l2)
      (i32.const 0))
    (local.set $l3
      (i32.const -7))
    (block $B0
      (block $B1
        (loop $L2
          (block $B3
            (br_if $B3
              (local.get $l3))
            (i32.store offset=40
              (local.get $l2)
              (i32.const 7))
            (br $B1))
          (call $f40
            (i32.add
              (local.get $l2)
              (i32.const 64))
            (i32.load8_u
              (i32.add
                (local.get $l3)
                (i32.const 1050450)))
            (i32.add
              (local.get $l2)
              (i32.const 8)))
          (block $B4
            (br_if $B4
              (i32.ne
                (i32.load offset=64
                  (local.get $l2))
                (i32.const 7)))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (call $f36
              (i32.add
                (local.get $l2)
                (i32.const 64)))
            (br $L2)))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 40))
            (i32.const 8))
          (i64.load
            (local.tee $l4
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 64))
                (i32.const 8)))))
        (i64.store offset=40
          (local.get $l2)
          (local.tee $l5
            (i64.load offset=64
              (local.get $l2))))
        (br_if $B1
          (i32.eq
            (local.tee $l3
              (i32.wrap_i64
                (local.get $l5)))
            (i32.const 7)))
        (i32.store
          (local.get $l4)
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 52))))
        (i64.store offset=64
          (local.get $l2)
          (i64.load offset=44 align=4
            (local.get $l2)))
        (br $B0))
      (call $f36
        (i32.add
          (local.get $l2)
          (i32.const 40)))
      (i32.store8 offset=20
        (local.get $l2)
        (i32.const 0))
      (i64.store offset=56
        (local.get $l2)
        (i64.const 137438953472))
      (block $B5
        (block $B6
          (loop $L7
            (call $f44
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 56)))
            (block $B8
              (br_if $B8
                (i32.load
                  (local.get $l2)))
              (i32.store offset=40
                (local.get $l2)
                (i32.const 7))
              (br $B5))
            (block $B9
              (br_if $B9
                (i32.gt_u
                  (local.tee $l3
                    (i32.load offset=4
                      (local.get $l2)))
                  (i32.const 31)))
              (call $f40
                (i32.add
                  (local.get $l2)
                  (i32.const 64))
                (i32.load8_u
                  (i32.add
                    (local.get $p1)
                    (local.get $l3)))
                (i32.add
                  (local.get $l2)
                  (i32.const 8)))
              (br_if $B6
                (i32.ne
                  (i32.load offset=64
                    (local.get $l2))
                  (i32.const 7)))
              (call $f36
                (i32.add
                  (local.get $l2)
                  (i32.const 64)))
              (br $L7)))
          (call $f45
            (local.get $l3)
            (i32.const 32)
            (i32.const 1048844))
          (unreachable))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 40))
            (i32.const 8))
          (i64.load
            (local.tee $p1
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 64))
                (i32.const 8)))))
        (i64.store offset=40
          (local.get $l2)
          (local.tee $l5
            (i64.load offset=64
              (local.get $l2))))
        (br_if $B5
          (i32.eq
            (local.tee $l3
              (i32.wrap_i64
                (local.get $l5)))
            (i32.const 7)))
        (i32.store
          (local.get $p1)
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 52))))
        (i64.store offset=64
          (local.get $l2)
          (i64.load offset=44 align=4
            (local.get $l2)))
        (br $B0))
      (call $f36
        (i32.add
          (local.get $l2)
          (i32.const 40)))
      (local.set $l3
        (i32.const 7)))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 24))
        (i32.const 12))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 64))
          (i32.const 8))))
    (i64.store offset=28 align=4
      (local.get $l2)
      (i64.load offset=64
        (local.get $l2)))
    (i32.store offset=24
      (local.get $l2)
      (local.get $l3))
    (block $B10
      (block $B11
        (br_if $B11
          (i32.ne
            (local.get $l3)
            (i32.const 7)))
        (call $f36
          (i32.add
            (local.get $l2)
            (i32.const 24)))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.load offset=8
            (local.get $l2)))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 12))
          (i32.load
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 8))
              (i32.const 8))))
        (local.set $l3
          (i32.const 0))
        (br $B10))
      (i64.store offset=4 align=4
        (local.get $p0)
        (i64.load offset=24
          (local.get $l2)))
      (i64.store align=4
        (i32.add
          (local.get $p0)
          (i32.const 12))
        (i64.load
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 24))
            (i32.const 8))))
      (call $f37
        (i32.add
          (local.get $l2)
          (i32.const 8)))
      (local.set $l3
        (i32.const 1)))
    (i32.store
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 80))))
  (func $f44 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (local.set $l2
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.ge_u
          (local.tee $l3
            (i32.load
              (local.get $p1)))
          (i32.load offset=4
            (local.get $p1))))
      (br_if $B0
        (i32.lt_u
          (local.tee $l4
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (local.get $l3)))
      (i32.store
        (local.get $p1)
        (local.get $l4))
      (local.set $l2
        (i32.const 1)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l3))
    (i32.store
      (local.get $p0)
      (local.get $l2)))
  (func $f45 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i32.store
      (local.get $l3)
      (local.get $p0))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 28))
      (i32.const 2))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 44))
      (i32.const 1))
    (i64.store offset=12 align=4
      (local.get $l3)
      (i64.const 2))
    (i32.store offset=8
      (local.get $l3)
      (i32.const 1050916))
    (i32.store offset=36
      (local.get $l3)
      (i32.const 1))
    (i32.store offset=24
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (i32.store offset=40
      (local.get $l3)
      (local.get $l3))
    (i32.store offset=32
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 4)))
    (call $f228
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2))
    (unreachable))
  (func $f46 (type $t2) (param $p0 i32)
    (local $l1 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store
      (local.get $l1)
      (i32.const 7))
    (call $f36
      (local.get $l1))
    (i64.store align=4
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i64.const 0))
    (i64.store align=4
      (local.get $p0)
      (i64.const 4294967296))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $f47 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (i32.store8 offset=12
      (local.get $l2)
      (i32.const 1))
    (i32.store offset=8
      (local.get $l2)
      (i32.const 0))
    (i64.store
      (local.get $l2)
      (i64.const 1))
    (call $f48
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (call $env.bigIntUnsignedByteLength
        (local.get $p1)))
    (drop
      (call $env.bigIntGetUnsignedBytes
        (local.get $p1)
        (i32.load offset=16
          (local.get $l2))))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 48))
        (i32.const 8))
      (local.tee $p1
        (i32.load
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 16))
            (i32.const 8)))))
    (i64.store offset=48
      (local.get $l2)
      (local.tee $l3
        (i64.load offset=16
          (local.get $l2))))
    (call $f49
      (local.get $l2)
      (i32.wrap_i64
        (local.get $l3))
      (local.get $p1))
    (call $f37
      (i32.add
        (local.get $l2)
        (i32.const 48)))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (i32.const 12))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 36))
          (i32.const 8))))
    (i32.store offset=16
      (local.get $l2)
      (i32.const 7))
    (i64.store offset=20 align=4
      (local.get $l2)
      (i64.load offset=36 align=4
        (local.get $l2)))
    (call $f36
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 12))
      (i32.load offset=8
        (local.get $l2)))
    (i64.store offset=4 align=4
      (local.get $p0)
      (i64.load
        (local.get $l2)))
    (i32.store
      (local.get $p0)
      (i32.const 0))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 64))))
  (func $f48 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f107
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.get $p1)
      (i32.const 1))
    (local.set $l3
      (i64.load offset=8
        (local.get $l2)))
    (i32.store offset=8
      (local.get $p0)
      (local.get $p1))
    (i64.store align=4
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f49 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f121
      (local.get $p0)
      (local.get $p1)
      (i32.add
        (local.get $p1)
        (local.get $p2))))
  (func $f50 (type $t15) (param $p0 i64)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store8 offset=28
      (local.get $l1)
      (i32.const 1))
    (i32.store offset=24
      (local.get $l1)
      (i32.const 0))
    (i64.store offset=16
      (local.get $l1)
      (i64.const 1))
    (call $f51
      (i32.add
        (local.get $l1)
        (i32.const 16))
      (local.get $p0)
      (i32.const 64)
      (i32.const 1))
    (i32.store
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (local.tee $l2
        (i32.load offset=24
          (local.get $l1))))
    (i64.store
      (local.get $l1)
      (local.tee $p0
        (i64.load offset=16
          (local.get $l1))))
    (call $env.finish
      (i32.wrap_i64
        (local.get $p0))
      (local.get $l2))
    (call $f37
      (local.get $l1))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 32))))
  (func $f51 (type $t16) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    (local.set $p2
      (i32.add
        (local.get $p2)
        (i32.const -8)))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.le_s
            (local.get $p2)
            (i32.const -1)))
        (local.set $l5
          (i32.and
            (local.get $p3)
            (i32.eqz
              (i32.and
                (local.tee $l4
                  (i32.wrap_i64
                    (i64.shr_u
                      (local.get $p1)
                      (i64.extend_i32_u
                        (i32.and
                          (local.get $p2)
                          (i32.const 63))))))
                (i32.const 255)))))
        (local.set $p3
          (i32.const 1))
        (block $B2
          (br_if $B2
            (local.get $l5))
          (call $f245
            (local.get $p0)
            (local.get $l4))
          (local.set $p3
            (i32.const 0)))
        (local.set $p2
          (i32.add
            (local.get $p2)
            (i32.const -8)))
        (br $L1))))
  (func $f52 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $f53
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f53 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $f64
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f54 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=24
      (local.get $l5)
      (i32.const 0))
    (i64.store offset=16
      (local.get $l5)
      (i64.const 1))
    (call $f49
      (i32.add
        (local.get $l5)
        (i32.const 16))
      (local.get $p0)
      (local.get $p1))
    (call $f49
      (i32.add
        (local.get $l5)
        (i32.const 16))
      (i32.const 1048591)
      (i32.const 2))
    (call $f49
      (i32.add
        (local.get $l5)
        (i32.const 16))
      (local.get $p2)
      (local.get $p3))
    (call $f49
      (i32.add
        (local.get $l5)
        (i32.const 16))
      (i32.const 1048593)
      (i32.const 3))
    (call $f55
      (i32.add
        (local.get $l5)
        (i32.const 8))
      (local.get $p4))
    (call $f49
      (i32.add
        (local.get $l5)
        (i32.const 16))
      (i32.load offset=8
        (local.get $l5))
      (i32.load offset=12
        (local.get $l5)))
    (call $f53
      (i32.load offset=16
        (local.get $l5))
      (i32.load offset=24
        (local.get $l5)))
    (unreachable))
  (func $f55 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    (local.set $l2
      (i32.const 1052401))
    (local.set $l3
      (i32.const 21))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (br_table $B0 $B5 $B4 $B3 $B2 $B1 $B6 $B0
                    (i32.load
                      (local.get $p1))))
                (local.set $l3
                  (i32.load
                    (i32.add
                      (local.get $p1)
                      (i32.const 12))))
                (local.set $l2
                  (i32.load offset=4
                    (local.get $p1)))
                (br $B0))
              (local.set $l2
                (i32.const 1052382))
              (local.set $l3
                (i32.const 19))
              (br $B0))
            (local.set $l2
              (i32.const 1052358))
            (local.set $l3
              (i32.const 24))
            (br $B0))
          (local.set $l2
            (i32.const 1052343))
          (local.set $l3
            (i32.const 15))
          (br $B0))
        (local.set $l2
          (i32.const 1052329))
        (local.set $l3
          (i32.const 14))
        (br $B0))
      (local.set $l2
        (i32.const 1052316))
      (local.set $l3
        (i32.const 13)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l3))
    (i32.store
      (local.get $p0)
      (local.get $l2)))
  (func $f56 (type $t9) (param $p0 i32) (result i64)
    (local $l1 i32) (local $l2 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f57
      (local.get $l1)
      (local.get $p0))
    (block $B0
      (br_if $B0
        (i32.gt_u
          (local.tee $p0
            (i32.load offset=8
              (local.get $l1)))
          (i32.const 8)))
      (local.set $l2
        (call $f58
          (i32.load
            (local.get $l1))
          (local.get $p0)))
      (call $f37
        (local.get $l1))
      (global.set $g0
        (i32.add
          (local.get $l1)
          (i32.const 16)))
      (return
        (local.get $l2)))
    (call $f52
      (i32.const 1051586)
      (i32.const 21))
    (unreachable))
  (func $f57 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f248
      (local.get $l2)
      (local.tee $l3
        (call $env.getArgumentLength
          (local.get $p1))))
    (i32.store offset=8
      (local.get $l2)
      (local.get $l3))
    (drop
      (call $env.getArgument
        (local.get $p1)
        (i32.load
          (local.get $l2))))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i32.load offset=8
        (local.get $l2)))
    (i64.store align=4
      (local.get $p0)
      (i64.load
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f58 (type $t11) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i64)
    (local.set $l2
      (i64.const 0))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (loop $L1
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const -1)))
        (local.set $l2
          (i64.or
            (i64.shl
              (local.get $l2)
              (i64.const 8))
            (i64.load8_u
              (local.get $p0))))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br $L1)))
    (local.get $l2))
  (func $f59 (type $t2) (param $p0 i32)
    (block $B0
      (br_if $B0
        (i32.ne
          (call $env.getNumArguments)
          (local.get $p0)))
      (return))
    (call $f52
      (i32.const 1051477)
      (i32.const 25))
    (unreachable))
  (func $f60 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i64.store
      (local.tee $l3
        (i32.add
          (local.get $l2)
          (i32.const 24)))
      (i64.const 0))
    (i64.store
      (local.tee $l4
        (i32.add
          (local.get $l2)
          (i32.const 16)))
      (i64.const 0))
    (i64.store
      (local.tee $l5
        (i32.add
          (local.get $l2)
          (i32.const 8)))
      (i64.const 0))
    (i64.store
      (local.get $l2)
      (i64.const 0))
    (block $B0
      (br_if $B0
        (i32.eq
          (call $env.getArgument
            (local.get $p1)
            (local.get $l2))
          (i32.const 32)))
      (call $f52
        (i32.const 1051607)
        (i32.const 44))
      (unreachable))
    (i64.store align=1
      (local.get $p0)
      (i64.load
        (local.get $l2)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 24))
      (i64.load
        (local.get $l3)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 16))
      (i64.load
        (local.get $l4)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i64.load
        (local.get $l5)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f61 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $env.bigIntAdd
      (local.get $p0)
      (local.get $p0)
      (local.get $p1)))
  (func $f62 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $f63
      (local.get $p0)
      (local.get $p0)
      (local.get $p1)))
  (func $f63 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $env.bigIntSub
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (block $B0
      (br_if $B0
        (i32.lt_s
          (call $env.bigIntSign
            (local.get $p0))
          (i32.const 0)))
      (return))
    (call $f249
      (i32.const 1051651)
      (i32.const 48))
    (unreachable))
  (func $f64 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $env.signalError
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f65 (type $t2) (param $p0 i32)
    (call $env.finish
      (local.get $p0)
      (i32.const 32)))
  (func $f66 (type $t13) (result i64)
    (call $env.int64getArgument
      (i32.const 0)))
  (func $f67 (type $t7) (result i32)
    (local $l0 i32)
    (call $env.bigIntGetUnsignedArgument
      (i32.const 0)
      (local.tee $l0
        (call $env.bigIntNew
          (i64.const 0))))
    (local.get $l0))
  (func $f68 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (drop
      (call $env.bigIntStorageLoadUnsigned
        (local.get $p0)
        (local.get $p1)
        (local.tee $l2
          (call $env.bigIntNew
            (i64.const 0)))))
    (local.get $l2))
  (func $f69 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (drop
      (call $env.bigIntStorageStoreUnsigned
        (local.get $p0)
        (local.get $p1)
        (local.get $p2))))
  (func $f70 (type $t7) (result i32)
    (local $l0 i32)
    (call $env.bigIntGetCallValue
      (local.tee $l0
        (call $env.bigIntNew
          (i64.const 0))))
    (local.get $l0))
  (func $f71 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call_indirect $T0 (type $t0)
      (i32.load offset=24
        (local.get $p1))
      (i32.const 1048860)
      (i32.const 6)
      (i32.load offset=12
        (i32.load
          (i32.add
            (local.get $p1)
            (i32.const 28))))))
  (func $f72 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call_indirect $T0 (type $t1)
      (i32.load
        (local.get $p0))
      (local.get $p1)
      (i32.load offset=12
        (i32.load offset=4
          (local.get $p0)))))
  (func $f73 (type $t18) (param $p0 i32) (param $p1 i64) (result i32)
    (i32.eq
      (i32.and
        (call $f74
          (local.get $p0)
          (call $env.bigIntNew
            (local.get $p1)))
        (i32.const 255))
      (i32.const 1)))
  (func $f74 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (select
      (select
        (i32.const 1)
        (i32.const -1)
        (i32.gt_s
          (local.tee $p0
            (call $env.bigIntCmp
              (local.get $p0)
              (local.get $p1)))
          (i32.const 0)))
      (i32.const 0)
      (local.get $p0)))
  (func $f75 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.eq
      (i32.and
        (call $f74
          (local.get $p0)
          (local.get $p1))
        (i32.const 255))
      (i32.const 1)))
  (func $f76 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=4
      (local.get $l2)
      (local.get $p0))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (local.set $p1
      (call $f77
        (i32.add
          (local.get $l2)
          (i32.const 4))
        (i32.const 1048748)
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $p1))
  (func $f77 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 36))
      (local.get $p1))
    (i32.store8 offset=40
      (local.get $l3)
      (i32.const 3))
    (i64.store offset=8
      (local.get $l3)
      (i64.const 137438953472))
    (i32.store offset=32
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.const 0))
    (i32.store offset=24
      (local.get $l3)
      (i32.const 0))
    (i32.store offset=16
      (local.get $l3)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.tee $l5
                  (i32.load offset=8
                    (local.get $p2)))))
            (local.set $l6
              (i32.load
                (local.get $p2)))
            (br_if $B2
              (i32.eqz
                (local.tee $l9
                  (select
                    (local.tee $l7
                      (i32.load offset=4
                        (local.get $p2)))
                    (local.tee $l8
                      (i32.load
                        (i32.add
                          (local.get $p2)
                          (i32.const 12))))
                    (i32.gt_u
                      (local.get $l8)
                      (local.get $l7))))))
            (local.set $l10
              (i32.load
                (i32.add
                  (local.get $p2)
                  (i32.const 20))))
            (local.set $l11
              (i32.load offset=16
                (local.get $p2)))
            (local.set $l8
              (i32.const 1))
            (br_if $B0
              (call_indirect $T0 (type $t0)
                (local.get $p0)
                (i32.load
                  (local.get $l6))
                (i32.load offset=4
                  (local.get $l6))
                (i32.load offset=12
                  (local.get $p1))))
            (local.set $p2
              (i32.add
                (local.get $l5)
                (i32.const 16)))
            (local.set $p0
              (i32.add
                (local.get $l6)
                (i32.const 8)))
            (local.set $l4
              (i32.const 1))
            (block $B4
              (block $B5
                (loop $L6
                  (i32.store offset=12
                    (local.get $l3)
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const -12))))
                  (i32.store8 offset=40
                    (local.get $l3)
                    (i32.load8_u
                      (i32.add
                        (local.get $p2)
                        (i32.const 12))))
                  (i32.store offset=8
                    (local.get $l3)
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const -8))))
                  (local.set $l8
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 8))))
                  (local.set $l5
                    (i32.const 0))
                  (local.set $p1
                    (i32.const 0))
                  (block $B7
                    (block $B8
                      (block $B9
                        (br_table $B8 $B9 $B7 $B8
                          (i32.load
                            (i32.add
                              (local.get $p2)
                              (i32.const 4)))))
                      (br_if $B5
                        (i32.ge_u
                          (local.get $l8)
                          (local.get $l10)))
                      (local.set $l12
                        (i32.shl
                          (local.get $l8)
                          (i32.const 3)))
                      (local.set $p1
                        (i32.const 0))
                      (br_if $B7
                        (i32.ne
                          (i32.load offset=4
                            (local.tee $l12
                              (i32.add
                                (local.get $l11)
                                (local.get $l12))))
                          (i32.const 2)))
                      (local.set $l8
                        (i32.load
                          (i32.load
                            (local.get $l12)))))
                    (local.set $p1
                      (i32.const 1)))
                  (i32.store offset=20
                    (local.get $l3)
                    (local.get $l8))
                  (i32.store offset=16
                    (local.get $l3)
                    (local.get $p1))
                  (local.set $l8
                    (i32.load
                      (local.get $p2)))
                  (block $B10
                    (block $B11
                      (block $B12
                        (br_table $B11 $B12 $B10 $B11
                          (i32.load
                            (i32.add
                              (local.get $p2)
                              (i32.const -4)))))
                      (br_if $B4
                        (i32.ge_u
                          (local.get $l8)
                          (local.get $l10)))
                      (local.set $p1
                        (i32.shl
                          (local.get $l8)
                          (i32.const 3)))
                      (br_if $B10
                        (i32.ne
                          (i32.load offset=4
                            (local.tee $p1
                              (i32.add
                                (local.get $l11)
                                (local.get $p1))))
                          (i32.const 2)))
                      (local.set $l8
                        (i32.load
                          (i32.load
                            (local.get $p1)))))
                    (local.set $l5
                      (i32.const 1)))
                  (i32.store offset=28
                    (local.get $l3)
                    (local.get $l8))
                  (i32.store offset=24
                    (local.get $l3)
                    (local.get $l5))
                  (block $B13
                    (br_if $B13
                      (i32.ge_u
                        (local.tee $l8
                          (i32.load
                            (i32.add
                              (local.get $p2)
                              (i32.const -16))))
                        (local.get $l10)))
                    (br_if $B1
                      (call_indirect $T0 (type $t1)
                        (i32.load
                          (local.tee $l8
                            (i32.add
                              (local.get $l11)
                              (i32.shl
                                (local.get $l8)
                                (i32.const 3)))))
                        (i32.add
                          (local.get $l3)
                          (i32.const 8))
                        (i32.load offset=4
                          (local.get $l8))))
                    (br_if $B2
                      (i32.ge_u
                        (local.get $l4)
                        (local.get $l9)))
                    (local.set $p1
                      (i32.add
                        (local.get $p0)
                        (i32.const 4)))
                    (local.set $l5
                      (i32.load
                        (local.get $p0)))
                    (local.set $p2
                      (i32.add
                        (local.get $p2)
                        (i32.const 32)))
                    (local.set $p0
                      (i32.add
                        (local.get $p0)
                        (i32.const 8)))
                    (local.set $l8
                      (i32.const 1))
                    (local.set $l4
                      (i32.add
                        (local.get $l4)
                        (i32.const 1)))
                    (br_if $L6
                      (i32.eqz
                        (call_indirect $T0 (type $t0)
                          (i32.load offset=32
                            (local.get $l3))
                          (local.get $l5)
                          (i32.load
                            (local.get $p1))
                          (i32.load offset=12
                            (i32.load offset=36
                              (local.get $l3))))))
                    (br $B0)))
                (call $f45
                  (local.get $l8)
                  (local.get $l10)
                  (i32.const 1051308))
                (unreachable))
              (call $f45
                (local.get $l8)
                (local.get $l10)
                (i32.const 1051292))
              (unreachable))
            (call $f45
              (local.get $l8)
              (local.get $l10)
              (i32.const 1051292))
            (unreachable))
          (local.set $l6
            (i32.load
              (local.get $p2)))
          (br_if $B2
            (i32.eqz
              (local.tee $l10
                (select
                  (local.tee $l7
                    (i32.load offset=4
                      (local.get $p2)))
                  (local.tee $l8
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 20))))
                  (i32.gt_u
                    (local.get $l8)
                    (local.get $l7))))))
          (local.set $p2
            (i32.load offset=16
              (local.get $p2)))
          (local.set $l8
            (i32.const 1))
          (br_if $B0
            (call_indirect $T0 (type $t0)
              (local.get $p0)
              (i32.load
                (local.get $l6))
              (i32.load offset=4
                (local.get $l6))
              (i32.load offset=12
                (local.get $p1))))
          (local.set $p0
            (i32.add
              (local.get $l6)
              (i32.const 8)))
          (local.set $l4
            (i32.const 1))
          (loop $L14
            (br_if $B1
              (call_indirect $T0 (type $t1)
                (i32.load
                  (local.get $p2))
                (i32.add
                  (local.get $l3)
                  (i32.const 8))
                (i32.load
                  (i32.add
                    (local.get $p2)
                    (i32.const 4)))))
            (br_if $B2
              (i32.ge_u
                (local.get $l4)
                (local.get $l10)))
            (local.set $p1
              (i32.add
                (local.get $p0)
                (i32.const 4)))
            (local.set $l5
              (i32.load
                (local.get $p0)))
            (local.set $p2
              (i32.add
                (local.get $p2)
                (i32.const 8)))
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const 8)))
            (local.set $l8
              (i32.const 1))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 1)))
            (br_if $L14
              (i32.eqz
                (call_indirect $T0 (type $t0)
                  (i32.load offset=32
                    (local.get $l3))
                  (local.get $l5)
                  (i32.load
                    (local.get $p1))
                  (i32.load offset=12
                    (i32.load offset=36
                      (local.get $l3))))))
            (br $B0)))
        (block $B15
          (br_if $B15
            (i32.le_u
              (local.get $l7)
              (local.get $l4)))
          (local.set $l8
            (i32.const 1))
          (br_if $B0
            (call_indirect $T0 (type $t0)
              (i32.load offset=32
                (local.get $l3))
              (i32.load
                (local.tee $p2
                  (i32.add
                    (local.get $l6)
                    (i32.shl
                      (local.get $l4)
                      (i32.const 3)))))
              (i32.load offset=4
                (local.get $p2))
              (i32.load offset=12
                (i32.load offset=36
                  (local.get $l3))))))
        (local.set $l8
          (i32.const 0))
        (br $B0))
      (local.set $l8
        (i32.const 1)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 48)))
    (local.get $l8))
  (func $f78 (type $t2) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (call $f79
        (i32.load
          (local.get $p0))
        (i32.mul
          (local.get $l1)
          (i32.const 96))
        (i32.const 1))))
  (func $f79 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (call $f110
        (local.get $p0)
        (local.get $p1)
        (local.get $p2))))
  (func $f80 (type $t2) (param $p0 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.load
            (local.get $p0))))
      (call $f81
        (i32.add
          (local.get $p0)
          (i32.const 4)))))
  (func $f81 (type $t2) (param $p0 i32)
    (block $B0
      (br_if $B0
        (i32.le_u
          (i32.load
            (local.get $p0))
          (i32.const 5)))
      (call $f37
        (i32.add
          (local.get $p0)
          (i32.const 4)))))
  (func $f82 (type $t2) (param $p0 i32)
    (local $l1 i32)
    (call $f83
      (i32.load
        (local.get $p0))
      (i32.load offset=8
        (local.get $p0)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (call $f79
        (i32.load
          (local.get $p0))
        (i32.mul
          (local.get $l1)
          (i32.const 12))
        (i32.const 4))))
  (func $f83 (type $t6) (param $p0 i32) (param $p1 i32)
    (local.set $p1
      (i32.mul
        (local.get $p1)
        (i32.const 12)))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const -12)))
        (call $f37
          (local.get $p0))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 12)))
        (br $L1))))
  (func $f84 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (call_indirect $T0 (type $t2)
      (i32.load
        (local.get $p0))
      (i32.load
        (i32.load offset=4
          (local.get $p0))))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l2
            (i32.load offset=4
              (local.tee $l1
                (i32.load offset=4
                  (local.get $p0)))))))
      (call $f79
        (i32.load
          (local.get $p0))
        (local.get $l2)
        (i32.load offset=8
          (local.get $l1)))))
  (func $f85 (type $t2) (param $p0 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.load8_u
            (local.get $p0))))
      (call $f81
        (i32.add
          (local.get $p0)
          (i32.const 4)))))
  (func $f86 (type $t2) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (call $f242
        (i32.load
          (local.get $p0))
        (local.get $l1)
        (i32.const 1))))
  (func $f87 (type $t2) (param $p0 i32))
  (func $f88 (type $t2) (param $p0 i32))
  (func $f89 (type $t2) (param $p0 i32))
  (func $f90 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.get $p1)
                (i32.const 128)))
            (br_if $B2
              (i32.lt_u
                (local.get $p1)
                (i32.const 2048)))
            (br_if $B1
              (i32.ge_u
                (local.get $p1)
                (i32.const 65536)))
            (i32.store8 offset=14
              (local.get $l2)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=13
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=12
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 12))
                  (i32.const 15))
                (i32.const 224)))
            (local.set $p1
              (i32.const 3))
            (br $B0))
          (i32.store8 offset=12
            (local.get $l2)
            (local.get $p1))
          (local.set $p1
            (i32.const 1))
          (br $B0))
        (i32.store8 offset=13
          (local.get $l2)
          (i32.or
            (i32.and
              (local.get $p1)
              (i32.const 63))
            (i32.const 128)))
        (i32.store8 offset=12
          (local.get $l2)
          (i32.or
            (i32.and
              (i32.shr_u
                (local.get $p1)
                (i32.const 6))
              (i32.const 31))
            (i32.const 192)))
        (local.set $p1
          (i32.const 2))
        (br $B0))
      (i32.store8 offset=15
        (local.get $l2)
        (i32.or
          (i32.and
            (local.get $p1)
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=12
        (local.get $l2)
        (i32.or
          (i32.shr_u
            (local.get $p1)
            (i32.const 18))
          (i32.const 240)))
      (i32.store8 offset=14
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=13
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 12))
            (i32.const 63))
          (i32.const 128)))
      (local.set $p1
        (i32.const 4)))
    (call $f49
      (local.get $p0)
      (i32.add
        (local.get $l2)
        (i32.const 12))
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.const 0))
  (func $f91 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (local.set $p1
      (call $f76
        (local.get $p0)
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $p1))
  (func $f92 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (call $f49
      (i32.load
        (local.get $p0))
      (local.get $p1)
      (local.get $p2))
    (i32.const 0))
  (func $f93 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.wrap_i64
              (i64.shr_u
                (local.tee $l3
                  (i64.mul
                    (i64.extend_i32_u
                      (local.get $p1))
                    (i64.const 96)))
                (i64.const 32))))
          (br_if $B1
            (i32.le_s
              (local.tee $l4
                (i32.wrap_i64
                  (local.get $l3)))
              (i32.const -1)))
          (block $B3
            (block $B4
              (br_if $B4
                (local.get $l4))
              (local.set $l4
                (i32.const 1))
              (br $B3))
            (call $f94
              (i32.add
                (local.get $l2)
                (i32.const 8))
              (local.get $l4)
              (i32.const 1))
            (br_if $B0
              (i32.eqz
                (local.tee $l4
                  (i32.load offset=8
                    (local.get $l2)))))
            (local.set $p1
              (i32.div_u
                (i32.load offset=12
                  (local.get $l2))
                (i32.const 96))))
          (i32.store offset=8
            (local.get $p0)
            (i32.const 0))
          (i32.store offset=4
            (local.get $p0)
            (local.get $p1))
          (i32.store
            (local.get $p0)
            (local.get $l4))
          (global.set $g0
            (i32.add
              (local.get $l2)
              (i32.const 16)))
          (return))
        (call $f95)
        (unreachable))
      (call $f96)
      (unreachable))
    (call $f97)
    (unreachable))
  (func $f94 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (local.set $p2
        (call $f109
          (local.get $p1)
          (local.get $p2))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (i32.store
      (local.get $p0)
      (local.get $p2)))
  (func $f95 (type $t19)
    (call $f104)
    (unreachable))
  (func $f96 (type $t19)
    (call $f104)
    (unreachable))
  (func $f97 (type $t19)
    (call $f221)
    (unreachable))
  (func $f98 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.wrap_i64
              (i64.shr_u
                (local.tee $l3
                  (i64.mul
                    (i64.extend_i32_u
                      (local.get $p1))
                    (i64.const 12)))
                (i64.const 32))))
          (br_if $B1
            (i32.le_s
              (local.tee $l4
                (i32.wrap_i64
                  (local.get $l3)))
              (i32.const -1)))
          (block $B3
            (block $B4
              (br_if $B4
                (local.get $l4))
              (local.set $l4
                (i32.const 4))
              (br $B3))
            (call $f94
              (i32.add
                (local.get $l2)
                (i32.const 8))
              (local.get $l4)
              (i32.const 4))
            (br_if $B0
              (i32.eqz
                (local.tee $l4
                  (i32.load offset=8
                    (local.get $l2)))))
            (local.set $p1
              (i32.div_u
                (i32.load offset=12
                  (local.get $l2))
                (i32.const 12))))
          (i32.store offset=8
            (local.get $p0)
            (i32.const 0))
          (i32.store offset=4
            (local.get $p0)
            (local.get $p1))
          (i32.store
            (local.get $p0)
            (local.get $l4))
          (global.set $g0
            (i32.add
              (local.get $l2)
              (i32.const 16)))
          (return))
        (call $f99)
        (unreachable))
      (call $f100)
      (unreachable))
    (call $f97)
    (unreachable))
  (func $f99 (type $t19)
    (call $f104)
    (unreachable))
  (func $f100 (type $t19)
    (call $f104)
    (unreachable))
  (func $f101 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.tee $l3
              (i32.load offset=8
                (local.get $p0)))
            (i32.load offset=4
              (local.get $p0))))
        (local.set $l4
          (i32.load
            (local.get $p0)))
        (br $B0))
      (block $B2
        (block $B3
          (block $B4
            (block $B5
              (br_if $B5
                (i32.lt_u
                  (local.tee $l4
                    (i32.add
                      (local.get $l3)
                      (i32.const 1)))
                  (local.get $l3)))
              (br_if $B5
                (local.tee $l5
                  (i32.wrap_i64
                    (i64.shr_u
                      (local.tee $l6
                        (i64.mul
                          (i64.extend_i32_u
                            (select
                              (local.tee $l5
                                (i32.shl
                                  (local.get $l3)
                                  (i32.const 1)))
                              (local.get $l4)
                              (i32.gt_u
                                (local.get $l5)
                                (local.get $l4))))
                          (i64.const 96)))
                      (i64.const 32)))))
              (local.set $l7
                (i32.const 0))
              (br_if $B4
                (i32.lt_s
                  (local.tee $l4
                    (i32.wrap_i64
                      (local.get $l6)))
                  (i32.const 0)))
              (block $B6
                (block $B7
                  (br_if $B7
                    (local.get $l3))
                  (call $f94
                    (local.get $l2)
                    (local.get $l4)
                    (i32.eqz
                      (local.get $l5)))
                  (local.set $l3
                    (i32.load offset=4
                      (local.get $l2)))
                  (local.set $l4
                    (i32.load
                      (local.get $l2)))
                  (br $B6))
                (call $f102
                  (i32.add
                    (local.get $l2)
                    (i32.const 8))
                  (i32.load
                    (local.get $p0))
                  (i32.mul
                    (local.get $l3)
                    (i32.const 96))
                  (i32.const 1)
                  (local.get $l4))
                (local.set $l3
                  (i32.load offset=12
                    (local.get $l2)))
                (local.set $l4
                  (i32.load offset=8
                    (local.get $l2))))
              (br_if $B3
                (i32.eqz
                  (local.get $l4)))
              (i32.store
                (local.get $p0)
                (local.get $l4))
              (i32.store offset=4
                (local.get $p0)
                (i32.div_u
                  (local.get $l3)
                  (i32.const 96)))
              (local.set $l3
                (i32.load offset=8
                  (local.get $p0)))
              (br $B0))
            (local.set $l7
              (i32.const 0)))
          (br_if $B2
            (i32.eqz
              (local.get $l7)))
          (call $f103
            (i32.const 1051933)
            (i32.const 40)
            (i32.const 1051976))
          (unreachable))
        (call $f97)
        (unreachable))
      (call $f104)
      (unreachable))
    (drop
      (call $f271
        (i32.add
          (local.get $l4)
          (i32.mul
            (local.get $l3)
            (i32.const 96)))
        (local.get $p1)
        (i32.const 96)))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (i32.load offset=8
          (local.get $p0))
        (i32.const 1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f102 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (local.get $p2))
          (br_if $B1
            (i32.eqz
              (local.get $p4)))
          (call $f94
            (i32.add
              (local.get $l5)
              (i32.const 8))
            (local.get $p4)
            (local.get $p3))
          (local.set $p4
            (i32.load offset=12
              (local.get $l5)))
          (local.set $p3
            (i32.load offset=8
              (local.get $l5)))
          (br $B0))
        (block $B3
          (br_if $B3
            (i32.eqz
              (local.get $p4)))
          (local.set $p3
            (call $f111
              (local.get $p1)
              (local.get $p2)
              (local.get $p3)
              (local.get $p4)))
          (br $B0))
        (call $f79
          (local.get $p1)
          (local.get $p2)
          (local.get $p3)))
      (local.set $p4
        (i32.const 0)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p4))
    (i32.store
      (local.get $p0)
      (local.get $p3))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 16))))
  (func $f103 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 20))
      (i32.const 0))
    (i32.store offset=16
      (local.get $l3)
      (i32.const 1051708))
    (i64.store offset=4 align=4
      (local.get $l3)
      (i64.const 1))
    (i32.store offset=28
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=24
      (local.get $l3)
      (local.get $p0))
    (i32.store
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 24)))
    (call $f228
      (local.get $l3)
      (local.get $p2))
    (unreachable))
  (func $f104 (type $t19)
    (call $f103
      (i32.const 1050712)
      (i32.const 17)
      (i32.const 1050732))
    (unreachable))
  (func $f105 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.ge_u
                  (i32.sub
                    (local.tee $l3
                      (i32.load offset=4
                        (local.get $p0)))
                    (local.tee $l4
                      (i32.load offset=8
                        (local.get $p0))))
                  (local.get $p1)))
              (br_if $B3
                (i32.lt_u
                  (local.tee $p1
                    (i32.add
                      (local.get $l4)
                      (local.get $p1)))
                  (local.get $l4)))
              (br_if $B3
                (local.tee $l4
                  (i32.wrap_i64
                    (i64.shr_u
                      (local.tee $l5
                        (i64.mul
                          (i64.extend_i32_u
                            (select
                              (local.tee $l4
                                (i32.shl
                                  (local.get $l3)
                                  (i32.const 1)))
                              (local.get $p1)
                              (i32.gt_u
                                (local.get $l4)
                                (local.get $p1))))
                          (i64.const 12)))
                      (i64.const 32)))))
              (local.set $l6
                (i32.const 0))
              (br_if $B2
                (i32.lt_s
                  (local.tee $p1
                    (i32.wrap_i64
                      (local.get $l5)))
                  (i32.const 0)))
              (block $B5
                (block $B6
                  (br_if $B6
                    (local.get $l3))
                  (call $f94
                    (local.get $l2)
                    (local.get $p1)
                    (i32.shl
                      (i32.eqz
                        (local.get $l4))
                      (i32.const 2)))
                  (local.set $l3
                    (i32.load offset=4
                      (local.get $l2)))
                  (local.set $p1
                    (i32.load
                      (local.get $l2)))
                  (br $B5))
                (call $f102
                  (i32.add
                    (local.get $l2)
                    (i32.const 8))
                  (i32.load
                    (local.get $p0))
                  (i32.mul
                    (local.get $l3)
                    (i32.const 12))
                  (i32.const 4)
                  (local.get $p1))
                (local.set $l3
                  (i32.load offset=12
                    (local.get $l2)))
                (local.set $p1
                  (i32.load offset=8
                    (local.get $l2))))
              (br_if $B1
                (i32.eqz
                  (local.get $p1)))
              (i32.store
                (local.get $p0)
                (local.get $p1))
              (i32.store offset=4
                (local.get $p0)
                (i32.div_u
                  (local.get $l3)
                  (i32.const 12))))
            (global.set $g0
              (i32.add
                (local.get $l2)
                (i32.const 16)))
            (return))
          (local.set $l6
            (i32.const 0)))
        (br_if $B0
          (i32.eqz
            (local.get $l6)))
        (call $f103
          (i32.const 1051933)
          (i32.const 40)
          (i32.const 1051976))
        (unreachable))
      (call $f97)
      (unreachable))
    (call $f104)
    (unreachable))
  (func $f106 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f107
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2)
      (i32.const 0))
    (i32.store offset=24
      (local.get $l3)
      (i32.const 0))
    (i64.store offset=16
      (local.get $l3)
      (i64.load offset=8
        (local.get $l3)))
    (call $f49
      (i32.add
        (local.get $l3)
        (i32.const 16))
      (local.get $p1)
      (local.get $p2))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i32.load offset=24
        (local.get $l3)))
    (i64.store align=4
      (local.get $p0)
      (i64.load offset=16
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 32))))
  (func $f107 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.le_s
            (local.get $p1)
            (i32.const -1)))
        (block $B2
          (block $B3
            (br_if $B3
              (local.get $p1))
            (local.set $p1
              (i32.const 0))
            (local.set $p2
              (i32.const 1))
            (br $B2))
          (block $B4
            (block $B5
              (br_if $B5
                (local.get $p2))
              (call $f241
                (i32.add
                  (local.get $l3)
                  (i32.const 8))
                (local.get $p1))
              (local.set $p1
                (i32.load offset=12
                  (local.get $l3)))
              (local.set $p2
                (i32.load offset=8
                  (local.get $l3)))
              (br $B4))
            (local.set $p2
              (call $f219
                (local.get $p1))))
          (br_if $B0
            (i32.eqz
              (local.get $p2))))
        (i32.store offset=4
          (local.get $p0)
          (local.get $p1))
        (i32.store
          (local.get $p0)
          (local.get $p2))
        (global.set $g0
          (i32.add
            (local.get $l3)
            (i32.const 16)))
        (return))
      (call $f244)
      (unreachable))
    (call $f97)
    (unreachable))
  (func $f108 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f51
      (local.get $p1)
      (i64.and
        (i64.extend_i32_u
          (local.get $p2))
        (i64.const 255))
      (i32.const 8)
      (i32.load8_u offset=12
        (local.get $p1)))
    (i32.store
      (local.get $p0)
      (i32.const 7)))
  (func $f109 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call $f216
      (local.get $p0)
      (local.get $p1)))
  (func $f110 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f217
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)))
  (func $f111 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (call $f218
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)
      (local.get $p3)))
  (func $f112 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (i32.ne
          (local.get $p0)
          (local.get $p1)))
      (return
        (i32.const 0)))
    (i32.ne
      (call $f273
        (local.get $p0)
        (local.get $p1)
        (i32.const 32))
      (i32.const 0)))
  (func $f113 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.gt_u
          (local.tee $l3
            (i32.load offset=8
              (local.get $p0)))
          (local.get $p1)))
      (call $f45
        (local.get $p1)
        (local.get $l3)
        (local.get $p2))
      (unreachable))
    (i32.add
      (i32.load
        (local.get $p0))
      (i32.mul
        (local.get $p1)
        (i32.const 12))))
  (func $f114 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $env.bigIntAdd
      (local.get $p0)
      (local.get $p0)
      (local.get $p1)))
  (func $f115 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $f63
      (local.get $p0)
      (local.get $p0)
      (local.get $p1)))
  (func $f116 (type $t4) (param $p0 i32) (result i32)
    (i32.eqz
      (call $env.bigIntCmp
        (local.get $p0)
        (call $env.bigIntNew
          (i64.const 0)))))
  (func $f117 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 288))))
    (i32.store8 offset=8
      (local.get $p1)
      (i32.const 0))
    (drop
      (call $f270
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 0)
        (i32.const 96)))
    (i64.store offset=104
      (local.get $l2)
      (i64.const 412316860416))
    (local.set $l3
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 224))
        (i32.const 2)))
    (local.set $l4
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 248))
        (i32.const 4)))
    (local.set $l5
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 144))
        (i32.const 3)))
    (local.set $l6
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 192))
        (i32.const 2)))
    (local.set $l7
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 168))
        (i32.const 1)))
    (local.set $l8
      (i32.const 96))
    (block $B0
      (block $B1
        (loop $L2
          (call $f44
            (local.get $l2)
            (i32.add
              (local.get $l2)
              (i32.const 104)))
          (block $B3
            (br_if $B3
              (i32.load
                (local.get $l2)))
            (drop
              (call $f271
                (i32.add
                  (local.get $p0)
                  (i32.const 1))
                (i32.add
                  (local.get $l2)
                  (i32.const 8))
                (i32.const 96)))
            (i32.store8
              (local.get $p0)
              (i32.const 0))
            (br $B0))
          (local.set $l9
            (i32.load offset=4
              (local.get $l2)))
          (block $B4
            (block $B5
              (br_if $B5
                (local.get $l8))
              (local.set $l8
                (i32.const 0))
              (local.set $l10
                (i32.const 0))
              (local.set $l11
                (i32.const 0))
              (br $B4))
            (block $B6
              (block $B7
                (block $B8
                  (br_if $B8
                    (i32.load8_u offset=8
                      (local.get $p1)))
                  (call $f118
                    (i32.add
                      (local.get $l2)
                      (i32.const 248))
                    (local.get $p1)
                    (i32.const 1))
                  (block $B9
                    (br_if $B9
                      (i32.eq
                        (i32.load offset=248
                          (local.get $l2))
                        (i32.const 1)))
                    (local.set $l10
                      (i32.load offset=256
                        (local.get $l2)))
                    (local.set $l11
                      (i32.load offset=252
                        (local.get $l2)))
                    (call $f80
                      (i32.add
                        (local.get $l2)
                        (i32.const 248)))
                    (br $B7))
                  (i64.store align=2
                    (local.get $l3)
                    (i64.load align=2
                      (local.get $l4)))
                  (i64.store align=2
                    (i32.add
                      (local.get $l3)
                      (i32.const 8))
                    (i64.load align=2
                      (i32.add
                        (local.get $l4)
                        (i32.const 8))))
                  (i64.store
                    (i32.add
                      (i32.add
                        (local.get $l2)
                        (i32.const 192))
                      (i32.const 8))
                    (i64.load align=2
                      (i32.add
                        (i32.add
                          (local.get $l2)
                          (i32.const 224))
                        (i32.const 8))))
                  (i32.store16
                    (i32.add
                      (i32.add
                        (local.get $l2)
                        (i32.const 192))
                      (i32.const 16))
                    (i32.load16_u
                      (i32.add
                        (i32.add
                          (local.get $l2)
                          (i32.const 224))
                        (i32.const 16))))
                  (i64.store offset=192
                    (local.get $l2)
                    (i64.load offset=224 align=2
                      (local.get $l2)))
                  (i64.store align=1
                    (i32.add
                      (local.get $l7)
                      (i32.const 8))
                    (i64.load align=1
                      (i32.add
                        (local.get $l6)
                        (i32.const 8))))
                  (i64.store align=1
                    (local.get $l7)
                    (i64.load align=1
                      (local.get $l6)))
                  (local.set $l10
                    (i32.const 1))
                  (br $B6))
                (local.set $l10
                  (i32.load offset=4
                    (local.get $p1)))
                (i32.store offset=4
                  (local.get $p1)
                  (i32.const 0))
                (local.set $l11
                  (i32.load
                    (local.get $p1)))
                (i32.store
                  (local.get $p1)
                  (i32.const 1051708)))
              (local.set $l12
                (i32.wrap_i64
                  (call $f58
                    (local.get $l11)
                    (local.get $l10))))
              (local.set $l11
                (i32.const 1))
              (local.set $l10
                (i32.const 0)))
            (local.set $l8
              (i32.add
                (local.get $l8)
                (i32.const -1))))
          (i64.store align=1
            (local.get $l5)
            (i64.load offset=168 align=1
              (local.get $l2)))
          (i64.store align=1
            (i32.add
              (local.get $l5)
              (i32.const 8))
            (i64.load align=1
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 168))
                (i32.const 8))))
          (i32.store8
            (i32.add
              (local.get $l5)
              (i32.const 16))
            (i32.load8_u
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 168))
                (i32.const 16))))
          (i32.store8 offset=146
            (local.get $l2)
            (local.get $l12))
          (i32.store8 offset=145
            (local.get $l2)
            (local.get $l11))
          (i32.store8 offset=144
            (local.get $l2)
            (local.get $l10))
          (br_if $B1
            (local.get $l10))
          (block $B10
            (br_if $B10
              (i32.and
                (local.get $l11)
                (i32.const 255)))
            (i32.store offset=220
              (local.get $l2)
              (i32.const 1048896))
            (i32.store offset=212
              (local.get $l2)
              (local.get $l9))
            (i32.store offset=216
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 280)))
            (i32.store offset=204
              (local.get $l2)
              (i32.const 3))
            (i32.store offset=196
              (local.get $l2)
              (i32.const 1))
            (i32.store offset=200
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 216)))
            (i32.store offset=192
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 212)))
            (i32.store offset=244
              (local.get $l2)
              (i32.const 2))
            (i64.store offset=228 align=4
              (local.get $l2)
              (i64.const 2))
            (i32.store offset=224
              (local.get $l2)
              (i32.const 1048828))
            (i32.store offset=240
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 192)))
            (i32.store offset=176
              (local.get $l2)
              (i32.const 0))
            (i64.store offset=168
              (local.get $l2)
              (i64.const 1))
            (i32.store offset=268
              (local.get $l2)
              (i32.const 1))
            (i64.store offset=252 align=4
              (local.get $l2)
              (i64.const 1))
            (i32.store offset=248
              (local.get $l2)
              (i32.const 1048576))
            (i32.store offset=276
              (local.get $l2)
              (i32.const 4))
            (i32.store offset=264
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 272)))
            (i32.store offset=272
              (local.get $l2)
              (i32.add
                (local.get $l2)
                (i32.const 224)))
            (block $B11
              (br_if $B11
                (i32.eqz
                  (call $f76
                    (i32.add
                      (local.get $l2)
                      (i32.const 168))
                    (i32.add
                      (local.get $l2)
                      (i32.const 248)))))
              (call $f121
                (i32.add
                  (local.get $l2)
                  (i32.const 168))
                (i32.const 1048584)
                (i32.const 1048591)))
            (i32.store
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 112))
                (i32.const 8))
              (local.tee $l5
                (i32.load
                  (i32.add
                    (i32.add
                      (local.get $l2)
                      (i32.const 168))
                    (i32.const 8)))))
            (i64.store offset=112
              (local.get $l2)
              (local.tee $l13
                (i64.load offset=168
                  (local.get $l2))))
            (i32.store
              (i32.add
                (local.get $p0)
                (i32.const 4))
              (i32.const 6))
            (i64.store align=4
              (i32.add
                (local.get $p0)
                (i32.const 8))
              (local.get $l13))
            (i32.store
              (i32.add
                (local.get $p0)
                (i32.const 16))
              (local.get $l5))
            (i32.store8
              (local.get $p0)
              (i32.const 1))
            (call $f85
              (i32.add
                (local.get $l2)
                (i32.const 144)))
            (br $B0))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 112))
              (i32.const 8))
            (i32.load
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 128))
                (i32.const 8))))
          (i64.store offset=112
            (local.get $l2)
            (i64.load offset=128
              (local.get $l2)))
          (block $B12
            (br_if $B12
              (i32.ge_u
                (local.get $l9)
                (i32.const 96)))
            (i32.store8
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 8))
                (local.get $l9))
              (local.get $l12))
            (call $f85
              (i32.add
                (local.get $l2)
                (i32.const 144)))
            (br $L2)))
        (call $f45
          (local.get $l9)
          (i32.const 96)
          (i32.const 1048880))
        (unreachable))
      (i32.store8
        (local.get $p0)
        (i32.const 1))
      (i64.store align=4
        (i32.add
          (local.get $p0)
          (i32.const 4))
        (i64.load offset=148 align=4
          (local.get $l2)))
      (i64.store align=4
        (i32.add
          (local.get $p0)
          (i32.const 12))
        (i64.load align=4
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 144))
            (i32.const 12)))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 288))))
  (func $f118 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i64)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_u
            (local.tee $l4
              (i32.load offset=4
                (local.get $p1)))
            (local.get $p2)))
        (i32.store offset=4
          (local.get $p0)
          (i32.const 3))
        (local.set $l5
          (i32.const 1))
        (br $B0))
      (local.set $l5
        (i32.const 0))
      (call $f215
        (i32.add
          (local.get $l3)
          (i32.const 8))
        (i32.const 0)
        (local.get $p2)
        (i32.load
          (local.get $p1))
        (local.get $l4)
        (i32.const 1052284))
      (local.set $l6
        (i64.load offset=8
          (local.get $l3)))
      (call $f215
        (local.get $l3)
        (local.get $p2)
        (local.tee $l4
          (i32.load offset=4
            (local.get $p1)))
        (i32.load
          (local.get $p1))
        (local.get $l4)
        (i32.const 1052300))
      (local.set $l7
        (i64.load
          (local.get $l3)))
      (i64.store offset=4 align=4
        (local.get $p0)
        (local.get $l6))
      (i64.store align=4
        (local.get $p1)
        (local.get $l7)))
    (i32.store
      (local.get $p0)
      (local.get $l5))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f119 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64) (local $l6 i32) (local $l7 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (local.set $l3
      (i32.const 39))
    (block $B0
      (block $B1
        (br_if $B1
          (i64.ge_u
            (local.tee $l4
              (i64.load32_u
                (local.get $p0)))
            (i64.const 10000)))
        (local.set $l5
          (local.get $l4))
        (br $B0))
      (local.set $l3
        (i32.const 39))
      (loop $L2
        (i32.store16 align=1
          (i32.add
            (local.tee $p0
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 9))
                (local.get $l3)))
            (i32.const -4))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (local.tee $l7
                  (i32.div_u
                    (i32.and
                      (local.tee $l6
                        (i32.wrap_i64
                          (i64.add
                            (local.get $l4)
                            (i64.mul
                              (local.tee $l5
                                (i64.div_u
                                  (local.get $l4)
                                  (i64.const 10000)))
                              (i64.const -10000)))))
                      (i32.const 65535))
                    (i32.const 100)))
                (i32.const 1))
              (i32.const 1050982))))
        (i32.store16 align=1
          (i32.add
            (local.get $p0)
            (i32.const -2))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (i32.and
                  (i32.add
                    (i32.mul
                      (local.get $l7)
                      (i32.const -100))
                    (local.get $l6))
                  (i32.const 65535))
                (i32.const 1))
              (i32.const 1050982))))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const -4)))
        (local.set $p0
          (i64.gt_u
            (local.get $l4)
            (i64.const 99999999)))
        (local.set $l4
          (local.get $l5))
        (br_if $L2
          (local.get $p0))))
    (block $B3
      (br_if $B3
        (i32.le_s
          (local.tee $p0
            (i32.wrap_i64
              (local.get $l5)))
          (i32.const 99)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 9))
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const -2))))
        (i32.load16_u align=1
          (i32.add
            (i32.shl
              (i32.and
                (i32.add
                  (i32.mul
                    (local.tee $p0
                      (i32.div_u
                        (i32.and
                          (local.tee $l6
                            (i32.wrap_i64
                              (local.get $l5)))
                          (i32.const 65535))
                        (i32.const 100)))
                    (i32.const -100))
                  (local.get $l6))
                (i32.const 65535))
              (i32.const 1))
            (i32.const 1050982)))))
    (block $B4
      (block $B5
        (br_if $B5
          (i32.lt_s
            (local.get $p0)
            (i32.const 10)))
        (i32.store16 align=1
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 9))
            (local.tee $l3
              (i32.add
                (local.get $l3)
                (i32.const -2))))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (local.get $p0)
                (i32.const 1))
              (i32.const 1050982))))
        (br $B4))
      (i32.store8
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 9))
          (local.tee $l3
            (i32.add
              (local.get $l3)
              (i32.const -1))))
        (i32.add
          (local.get $p0)
          (i32.const 48))))
    (local.set $l3
      (call $f229
        (local.get $p1)
        (i32.const 1051708)
        (i32.const 0)
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 9))
          (local.get $l3))
        (i32.sub
          (i32.const 39)
          (local.get $l3))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 48)))
    (local.get $l3))
  (func $f120 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (local.set $l3
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 28))))
    (local.set $p1
      (i32.load offset=24
        (local.get $p1)))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.get $p0)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p0)
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l2)
      (i64.load align=4
        (local.get $p0)))
    (local.set $p0
      (call $f77
        (local.get $p1)
        (local.get $l3)
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $p0))
  (func $f121 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (call $f239
      (local.get $p0)
      (local.tee $p2
        (i32.sub
          (local.get $p2)
          (local.get $p1))))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (local.tee $l3
          (i32.load offset=8
            (local.get $p0)))
        (local.get $p2)))
    (call $f240
      (i32.add
        (local.get $l3)
        (i32.load
          (local.get $p0)))
      (local.get $p2)
      (local.get $p1)
      (local.get $p2)))
  (func $f122 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i64)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 96))))
    (call $f123
      (local.get $l4)
      (i32.const 1048956)
      (i32.const 5))
    (call $f123
      (i32.add
        (local.get $l4)
        (i32.const 16))
      (i32.const 1048961)
      (i32.const 22))
    (i32.store8 offset=92
      (local.get $l4)
      (i32.const 1))
    (i32.store offset=88
      (local.get $l4)
      (i32.const 0))
    (i64.store offset=80
      (local.get $l4)
      (i64.const 1))
    (call $f42
      (i32.add
        (local.get $l4)
        (i32.const 48))
      (i32.add
        (local.get $l4)
        (i32.const 80))
      (i64.extend_i32_u
        (local.get $p1)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.ne
              (i32.load offset=48
                (local.get $l4))
              (i32.const 7)))
          (call $f36
            (i32.add
              (local.get $l4)
              (i32.const 48)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l4)
                (i32.const 32))
              (i32.const 8))
            (local.tee $l5
              (i32.load
                (i32.add
                  (i32.add
                    (local.get $l4)
                    (i32.const 80))
                  (i32.const 8)))))
          (i64.store offset=32
            (local.get $l4)
            (local.tee $l6
              (i64.load offset=80
                (local.get $l4))))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l4)
                (i32.const 48))
              (i32.const 8))
            (local.get $l5))
          (i64.store offset=48
            (local.get $l4)
            (local.get $l6))
          (call $f124
            (local.get $l4)
            (i32.wrap_i64
              (local.get $l6))
            (local.get $l5))
          (call $f37
            (i32.add
              (local.get $l4)
              (i32.const 48)))
          (br_if $B1
            (i32.ne
              (local.tee $l5
                (i32.load offset=8
                  (local.get $p2)))
              (i32.shl
                (local.get $p1)
                (i32.const 1))))
          (local.set $l5
            (i32.and
              (local.get $l5)
              (i32.const 1073741823)))
          (local.set $p1
            (i32.load
              (local.get $p2)))
          (loop $L3
            (br_if $B0
              (i32.eqz
                (local.get $l5)))
            (call $f124
              (local.get $l4)
              (i32.load
                (local.get $p1))
              (i32.load
                (i32.add
                  (local.get $p1)
                  (i32.const 8))))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 12)))
            (local.set $l5
              (i32.add
                (local.get $l5)
                (i32.const -1)))
            (br $L3)))
        (i64.store
          (local.tee $p1
            (i32.add
              (i32.add
                (local.get $l4)
                (i32.const 32))
              (i32.const 8)))
          (i64.load
            (local.tee $l5
              (i32.add
                (i32.add
                  (local.get $l4)
                  (i32.const 48))
                (i32.const 8)))))
        (i64.store offset=32
          (local.get $l4)
          (i64.load offset=48
            (local.get $l4)))
        (call $f37
          (i32.add
            (local.get $l4)
            (i32.const 80)))
        (i64.store
          (local.get $l5)
          (i64.load
            (local.get $p1)))
        (i64.store offset=48
          (local.get $l4)
          (i64.load offset=32
            (local.get $l4)))
        (call $f54
          (i32.const 1048983)
          (i32.const 30)
          (i32.const 1049013)
          (i32.const 5)
          (i32.add
            (local.get $l4)
            (i32.const 48)))
        (unreachable))
      (call $f52
        (i32.const 1051502)
        (i32.const 48))
      (unreachable))
    (i64.store
      (i32.add
        (local.get $l4)
        (i32.const 72))
      (i64.load offset=1048740 align=1
        (i32.const 0)))
    (i64.store
      (i32.add
        (local.get $l4)
        (i32.const 64))
      (i64.load offset=1048732 align=1
        (i32.const 0)))
    (i64.store
      (i32.add
        (local.get $l4)
        (i32.const 56))
      (i64.load offset=1048724 align=1
        (i32.const 0)))
    (i64.store offset=48
      (local.get $l4)
      (i64.load offset=1048716 align=1
        (i32.const 0)))
    (drop
      (call $env.storageStore
        (i32.add
          (local.get $l4)
          (i32.const 48))
        (i32.const 32)
        (i32.load offset=16
          (local.get $l4))
        (i32.load offset=24
          (local.get $l4))))
    (call $f125
      (local.get $p0)
      (i32.load
        (local.get $p3))
      (i32.load
        (local.get $l4))
      (i32.load offset=8
        (local.get $l4)))
    (call $f37
      (i32.add
        (local.get $l4)
        (i32.const 16)))
    (call $f37
      (local.get $l4))
    (call $f82
      (local.get $p2))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 96))))
  (func $f123 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f107
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2)
      (i32.const 0))
    (i32.store offset=24
      (local.get $l3)
      (i32.const 0))
    (i64.store offset=16
      (local.get $l3)
      (i64.load offset=8
        (local.get $l3)))
    (call $f49
      (i32.add
        (local.get $l3)
        (i32.const 16))
      (local.get $p1)
      (local.get $p2))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i32.load offset=24
        (local.get $l3)))
    (i64.store align=4
      (local.get $p0)
      (i64.load offset=16
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 32))))
  (func $f124 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (call $f239
      (local.get $p0)
      (i32.or
        (i32.shl
          (local.get $p2)
          (i32.const 1))
        (i32.const 1)))
    (call $f245
      (local.get $p0)
      (i32.const 64))
    (loop $L0
      (block $B1
        (br_if $B1
          (local.get $p2))
        (return))
      (call $f245
        (local.get $p0)
        (i32.add
          (select
            (i32.const 48)
            (i32.const 87)
            (i32.lt_u
              (local.tee $l3
                (i32.load8_u
                  (local.get $p1)))
              (i32.const 160)))
          (i32.shr_u
            (local.get $l3)
            (i32.const 4))))
      (call $f245
        (local.get $p0)
        (i32.add
          (select
            (i32.const 48)
            (i32.const 87)
            (i32.lt_u
              (local.tee $l3
                (i32.and
                  (local.get $l3)
                  (i32.const 15)))
              (i32.const 10)))
          (local.get $l3)))
      (local.set $p2
        (i32.add
          (local.get $p2)
          (i32.const -1)))
      (local.set $p1
        (i32.add
          (local.get $p1)
          (i32.const 1)))
      (br $L0)))
  (func $f125 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f251
      (i32.add
        (local.get $l4)
        (i32.const 16))
      (local.get $p1))
    (call $f252
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 16))
      (i32.const 1052748))
    (call $env.asyncCall
      (local.get $p0)
      (i32.load
        (local.get $l4))
      (local.get $p2)
      (local.get $p3))
    (call $f253
      (local.get $l4))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 32))))
  (func $f126 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (local.set $l3
      (call $f33))
    (call $f123
      (local.get $l2)
      (i32.const 1049018)
      (i32.const 7))
    (call $f123
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (i32.const 1049025)
      (i32.const 24))
    (local.set $l4
      (i32.and
        (i32.load offset=8
          (local.get $p1))
        (i32.const 134217727)))
    (local.set $l5
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 48))
        (i32.const 4)))
    (block $B0
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.eqz
              (local.get $l4)))
          (call $f34
            (i32.add
              (local.get $l2)
              (i32.const 48)))
          (br_if $B0
            (i32.eq
              (i32.load offset=48
                (local.get $l2))
              (i32.const 1)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 32))
              (i32.const 8))
            (local.tee $l6
              (i32.load
                (i32.add
                  (local.get $l5)
                  (i32.const 8)))))
          (i64.store offset=32
            (local.get $l2)
            (local.tee $l7
              (i64.load align=4
                (local.get $l5))))
          (call $f124
            (local.get $l2)
            (i32.wrap_i64
              (local.get $l7))
            (local.get $l6))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const -1)))
          (call $f37
            (i32.add
              (local.get $l2)
              (i32.const 32)))
          (br $L2)))
      (i64.store
        (i32.add
          (local.get $l2)
          (i32.const 72))
        (i64.load offset=1048740 align=1
          (i32.const 0)))
      (i64.store
        (i32.add
          (local.get $l2)
          (i32.const 64))
        (i64.load offset=1048732 align=1
          (i32.const 0)))
      (i64.store
        (i32.add
          (local.get $l2)
          (i32.const 56))
        (i64.load offset=1048724 align=1
          (i32.const 0)))
      (i64.store offset=48
        (local.get $l2)
        (i64.load offset=1048716 align=1
          (i32.const 0)))
      (drop
        (call $env.storageStore
          (i32.add
            (local.get $l2)
            (i32.const 48))
          (i32.const 32)
          (i32.load offset=16
            (local.get $l2))
          (i32.load offset=24
            (local.get $l2))))
      (call $f125
        (local.get $p0)
        (local.get $l3)
        (i32.load
          (local.get $l2))
        (i32.load offset=8
          (local.get $l2)))
      (call $f37
        (i32.add
          (local.get $l2)
          (i32.const 16)))
      (call $f37
        (local.get $l2))
      (call $f78
        (local.get $p1))
      (global.set $g0
        (i32.add
          (local.get $l2)
          (i32.const 80)))
      (return))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 32))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $l5)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l2)
      (i64.load align=4
        (local.get $l5)))
    (call $f54
      (i32.const 1048983)
      (i32.const 30)
      (i32.const 1048860)
      (i32.const 6)
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (unreachable))
  (func $f127 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (local.set $l3
      (call $f33))
    (call $f123
      (local.get $l2)
      (i32.const 1049049)
      (i32.const 6))
    (call $f123
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (i32.const 1049055)
      (i32.const 23))
    (local.set $l4
      (i32.and
        (i32.load offset=8
          (local.get $p1))
        (i32.const 134217727)))
    (local.set $l5
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 48))
        (i32.const 4)))
    (block $B0
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.eqz
              (local.get $l4)))
          (call $f34
            (i32.add
              (local.get $l2)
              (i32.const 48)))
          (br_if $B0
            (i32.eq
              (i32.load offset=48
                (local.get $l2))
              (i32.const 1)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 32))
              (i32.const 8))
            (local.tee $l6
              (i32.load
                (i32.add
                  (local.get $l5)
                  (i32.const 8)))))
          (i64.store offset=32
            (local.get $l2)
            (local.tee $l7
              (i64.load align=4
                (local.get $l5))))
          (call $f124
            (local.get $l2)
            (i32.wrap_i64
              (local.get $l7))
            (local.get $l6))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const -1)))
          (call $f37
            (i32.add
              (local.get $l2)
              (i32.const 32)))
          (br $L2)))
      (i64.store
        (i32.add
          (local.get $l2)
          (i32.const 72))
        (i64.load offset=1048740 align=1
          (i32.const 0)))
      (i64.store
        (i32.add
          (local.get $l2)
          (i32.const 64))
        (i64.load offset=1048732 align=1
          (i32.const 0)))
      (i64.store
        (i32.add
          (local.get $l2)
          (i32.const 56))
        (i64.load offset=1048724 align=1
          (i32.const 0)))
      (i64.store offset=48
        (local.get $l2)
        (i64.load offset=1048716 align=1
          (i32.const 0)))
      (drop
        (call $env.storageStore
          (i32.add
            (local.get $l2)
            (i32.const 48))
          (i32.const 32)
          (i32.load offset=16
            (local.get $l2))
          (i32.load offset=24
            (local.get $l2))))
      (call $f125
        (local.get $p0)
        (local.get $l3)
        (i32.load
          (local.get $l2))
        (i32.load offset=8
          (local.get $l2)))
      (call $f37
        (i32.add
          (local.get $l2)
          (i32.const 16)))
      (call $f37
        (local.get $l2))
      (call $f78
        (local.get $p1))
      (global.set $g0
        (i32.add
          (local.get $l2)
          (i32.const 80)))
      (return))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 32))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $l5)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l2)
      (i64.load align=4
        (local.get $l5)))
    (call $f54
      (i32.const 1048983)
      (i32.const 30)
      (i32.const 1048860)
      (i32.const 6)
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (unreachable))
  (func $f128 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (local.set $l0
      (call $f129))
    (local.set $l1
      (call $env.bigIntNew
        (i64.extend_i32_u
          (call $f130))))
    (call $env.bigIntMul
      (local.tee $l2
        (call $env.bigIntNew
          (i64.const 0)))
      (local.get $l0)
      (local.get $l1))
    (local.get $l2))
  (func $f129 (type $t7) (result i32)
    (call $f68
      (i32.const 1050323)
      (i32.const 14)))
  (func $f130 (type $t7) (result i32)
    (i32.wrap_i64
      (call $env.int64storageLoad
        (i32.const 1050346)
        (i32.const 9))))
  (func $f131 (type $t7) (result i32)
    (local $l0 i32)
    (call $f133
      (local.tee $l0
        (i32.add
          (call $f132)
          (i32.const 1))))
    (local.get $l0))
  (func $f132 (type $t7) (result i32)
    (i32.wrap_i64
      (call $env.int64storageLoad
        (i32.const 1050337)
        (i32.const 9))))
  (func $f133 (type $t2) (param $p0 i32)
    (drop
      (call $env.int64storageStore
        (i32.const 1050337)
        (i32.const 9)
        (i64.extend_i32_u
          (local.get $p0)))))
  (func $f134 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f135
      (local.get $l0))
    (local.set $l1
      (i32.load offset=8
        (local.get $l0)))
    (call $f78
      (local.get $l0))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 16)))
    (local.get $l1))
  (func $f135 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64) (local $l8 i32) (local $l9 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 256))))
    (call $f164
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 1050355)
      (i32.const 8))
    (local.set $l2
      (i32.load offset=8
        (local.get $l1)))
    (i32.store offset=28
      (local.get $l1)
      (i32.load offset=16
        (local.get $l1)))
    (i32.store offset=24
      (local.get $l1)
      (local.get $l2))
    (i32.store8 offset=32
      (local.get $l1)
      (i32.const 0))
    (call $f93
      (i32.add
        (local.get $l1)
        (i32.const 56))
      (i32.const 0))
    (local.set $l3
      (i32.add
        (local.get $l1)
        (i32.const 171)))
    (local.set $l4
      (i32.add
        (local.get $l1)
        (i32.const 172)))
    (local.set $l5
      (i32.or
        (i32.add
          (local.get $l1)
          (i32.const 152))
        (i32.const 4)))
    (block $B0
      (block $B1
        (block $B2
          (loop $L3
            (call $f117
              (i32.add
                (local.get $l1)
                (i32.const 152))
              (i32.add
                (local.get $l1)
                (i32.const 24)))
            (block $B4
              (br_if $B4
                (i32.ne
                  (i32.load8_u offset=152
                    (local.get $l1))
                  (i32.const 1)))
              (br_if $B2
                (i32.eq
                  (local.tee $l2
                    (i32.load offset=156
                      (local.get $l1)))
                  (i32.const 3)))
              (local.set $l6
                (i32.load
                  (i32.add
                    (local.get $l1)
                    (i32.const 168))))
              (local.set $l7
                (i64.load
                  (i32.add
                    (local.get $l1)
                    (i32.const 160))))
              (call $f78
                (i32.add
                  (local.get $l1)
                  (i32.const 56)))
              (br $B1))
            (local.set $l2
              (i32.load16_u offset=153 align=1
                (local.get $l1)))
            (local.set $l6
              (i32.load offset=155 align=1
                (local.get $l1)))
            (local.set $l7
              (i64.load offset=159 align=1
                (local.get $l1)))
            (local.set $l8
              (i32.load offset=167 align=1
                (local.get $l1)))
            (local.set $l9
              (i32.load8_u offset=171
                (local.get $l1)))
            (drop
              (call $f271
                (i32.add
                  (local.get $l1)
                  (i32.const 75))
                (local.get $l4)
                (i32.const 77)))
            (i32.store8 offset=170
              (local.get $l1)
              (local.get $l9))
            (i32.store offset=166 align=2
              (local.get $l1)
              (local.get $l8))
            (i64.store offset=158 align=2
              (local.get $l1)
              (local.get $l7))
            (i32.store offset=154 align=2
              (local.get $l1)
              (local.get $l6))
            (i32.store16 offset=152
              (local.get $l1)
              (local.get $l2))
            (drop
              (call $f271
                (local.get $l3)
                (i32.add
                  (local.get $l1)
                  (i32.const 75))
                (i32.const 77)))
            (call $f101
              (i32.add
                (local.get $l1)
                (i32.const 56))
              (i32.add
                (local.get $l1)
                (i32.const 152)))
            (br $L3)))
        (call $f81
          (local.get $l5))
        (i64.store offset=44 align=4
          (local.get $l1)
          (local.tee $l7
            (i64.load offset=60 align=4
              (local.get $l1))))
        (i32.store offset=40
          (local.get $l1)
          (local.tee $l2
            (i32.load offset=56
              (local.get $l1))))
        (br_if $B0
          (i32.eqz
            (i32.load offset=28
              (local.get $l1))))
        (call $f78
          (i32.add
            (local.get $l1)
            (i32.const 40)))
        (local.set $l2
          (i32.const 4)))
      (i32.store
        (i32.add
          (local.get $l1)
          (i32.const 164))
        (local.get $l6))
      (i64.store offset=156 align=4
        (local.get $l1)
        (local.get $l7))
      (i32.store offset=152
        (local.get $l1)
        (local.get $l2))
      (call $f54
        (i32.const 1050363)
        (i32.const 29)
        (i32.const 1050392)
        (i32.const 3)
        (i32.add
          (local.get $l1)
          (i32.const 152)))
      (unreachable))
    (i64.store offset=4 align=4
      (local.get $p0)
      (local.get $l7))
    (i32.store
      (local.get $p0)
      (local.get $l2))
    (call $f37
      (i32.add
        (local.get $l1)
        (i32.const 8)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 256))))
  (func $f136 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.const 1050465)
      (local.get $p1))
    (local.set $l3
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l2))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $l3)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l2)
        (i64.load align=4
          (local.get $l3)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l4
        (i32.load
          (i32.add
            (local.get $l3)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l2)
      (local.tee $l5
        (i64.load align=4
          (local.get $l3))))
    (local.set $l3
      (call $f68
        (i32.wrap_i64
          (local.get $l5))
        (local.get $l4)))
    (call $f37
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.set $l4
      (call $f137
        (local.get $p1)))
    (i32.store offset=8
      (local.get $p0)
      (call $f138
        (local.get $p1)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l4))
    (i32.store
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 48))))
  (func $f137 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 1050459)
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l1)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l1))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l1)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l1)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l2
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l1)
      (local.tee $l3
        (i64.load align=4
          (local.get $p0))))
    (local.set $p0
      (call $f68
        (i32.wrap_i64
          (local.get $l3))
        (local.get $l2)))
    (call $f37
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 48)))
    (local.get $p0))
  (func $f138 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 1050453)
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l1)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l1))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l1)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l1)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l2
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l1)
      (local.tee $l3
        (i64.load align=4
          (local.get $p0))))
    (local.set $p0
      (call $f68
        (i32.wrap_i64
          (local.get $l3))
        (local.get $l2)))
    (call $f37
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 48)))
    (local.get $p0))
  (func $f139 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l4)
        (i32.const 8))
      (i32.const 1050465)
      (local.get $p0))
    (local.set $l5
      (i32.or
        (i32.add
          (local.get $l4)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l4))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l4)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $l5)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l4)
        (i64.load align=4
          (local.get $l5)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l4)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l4)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l6
        (i32.load
          (i32.add
            (local.get $l5)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l4)
      (local.tee $l7
        (i64.load align=4
          (local.get $l5))))
    (call $f69
      (i32.wrap_i64
        (local.get $l7))
      (local.get $l6)
      (local.get $p1))
    (call $f37
      (i32.add
        (local.get $l4)
        (i32.const 32)))
    (call $f140
      (local.get $p0)
      (local.get $p2))
    (call $f141
      (local.get $p0)
      (local.get $p3))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 48))))
  (func $f140 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.const 1050459)
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l2))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l2)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l3
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l2)
      (local.tee $l4
        (i64.load align=4
          (local.get $p0))))
    (call $f69
      (i32.wrap_i64
        (local.get $l4))
      (local.get $l3)
      (local.get $p1))
    (call $f37
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 48))))
  (func $f141 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.const 1050453)
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l2))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l2)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l3
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l2)
      (local.tee $l4
        (i64.load align=4
          (local.get $p0))))
    (call $f69
      (i32.wrap_i64
        (local.get $l4))
      (local.get $l3)
      (local.get $p1))
    (call $f37
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 48))))
  (func $f142 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 160))))
    (call $f61
      (local.tee $l2
        (call $f143))
      (local.get $p0))
    (local.set $l3
      (i32.const 1049379))
    (block $B0
      (block $B1
        (br_if $B1
          (call $f75
            (local.get $l2)
            (call $f128)))
        (call $f144
          (local.get $l2))
        (call $f145
          (local.get $l1))
        (block $B2
          (br_if $B2
            (local.tee $l2
              (call $f146
                (local.get $l1))))
          (call $f147
            (local.get $l1)
            (local.tee $l2
              (call $f131))))
        (call $f136
          (i32.add
            (local.get $l1)
            (i32.const 32))
          (local.get $l2))
        (call $f61
          (local.tee $l3
            (i32.load offset=40
              (local.get $l1)))
          (local.get $p0))
        (call $f139
          (local.get $l2)
          (i32.load offset=32
            (local.get $l1))
          (i32.load offset=36
            (local.get $l1))
          (local.get $l3))
        (i64.store
          (local.tee $l4
            (i32.add
              (i32.add
                (local.get $l1)
                (i32.const 112))
              (i32.const 24)))
          (i64.const 0))
        (i64.store
          (local.tee $l5
            (i32.add
              (i32.add
                (local.get $l1)
                (i32.const 112))
              (i32.const 16)))
          (i64.const 0))
        (i64.store
          (local.tee $l6
            (i32.add
              (i32.add
                (local.get $l1)
                (i32.const 112))
              (i32.const 8)))
          (i64.const 0))
        (i64.store offset=112
          (local.get $l1)
          (i64.const 0))
        (local.set $l2
          (i32.const 0))
        (block $B3
          (loop $L4
            (br_if $B3
              (i32.eq
                (local.get $l2)
                (i32.const 64)))
            (i64.store align=1
              (local.tee $l3
                (i32.add
                  (i32.add
                    (local.get $l1)
                    (i32.const 48))
                  (local.get $l2)))
              (i64.load offset=112
                (local.get $l1)))
            (i64.store align=1
              (i32.add
                (local.get $l3)
                (i32.const 24))
              (i64.load
                (local.get $l4)))
            (i64.store align=1
              (i32.add
                (local.get $l3)
                (i32.const 16))
              (i64.load
                (local.get $l5)))
            (i64.store align=1
              (i32.add
                (local.get $l3)
                (i32.const 8))
              (i64.load
                (local.get $l6)))
            (local.set $l2
              (i32.add
                (local.get $l2)
                (i32.const 32)))
            (br $L4)))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l1)
              (i32.const 48))
            (i32.const 8))
          (i64.const 0))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l1)
              (i32.const 48))
            (i32.const 16))
          (i64.const 0))
        (i64.store align=1
          (i32.add
            (local.get $l1)
            (i32.const 71))
          (i64.const 0))
        (i64.store
          (i32.add
            (local.get $l1)
            (i32.const 88))
          (i64.load
            (i32.add
              (local.get $l1)
              (i32.const 8))))
        (i64.store
          (i32.add
            (local.get $l1)
            (i32.const 96))
          (i64.load
            (i32.add
              (local.get $l1)
              (i32.const 16))))
        (i64.store
          (i32.add
            (local.get $l1)
            (i32.const 104))
          (i64.load
            (i32.add
              (local.get $l1)
              (i32.const 24))))
        (i64.store offset=48
          (local.get $l1)
          (i64.const 0))
        (i64.store offset=80
          (local.get $l1)
          (i64.load
            (local.get $l1)))
        (i32.store8 offset=79
          (local.get $l1)
          (i32.const 1))
        (call $f47
          (i32.add
            (local.get $l1)
            (i32.const 112))
          (local.get $p0))
        (local.set $l2
          (i32.or
            (i32.add
              (local.get $l1)
              (i32.const 112))
            (i32.const 4)))
        (br_if $B0
          (i32.eq
            (i32.load offset=112
              (local.get $l1))
            (i32.const 1)))
        (i32.store
          (i32.add
            (i32.add
              (local.get $l1)
              (i32.const 144))
            (i32.const 8))
          (local.tee $l3
            (i32.load
              (i32.add
                (local.get $l2)
                (i32.const 8)))))
        (i64.store offset=144
          (local.get $l1)
          (local.tee $l7
            (i64.load align=4
              (local.get $l2))))
        (call $f148
          (i32.add
            (local.get $l1)
            (i32.const 48))
          (i32.const 2)
          (i32.wrap_i64
            (local.get $l7))
          (local.get $l3))
        (call $f37
          (i32.add
            (local.get $l1)
            (i32.const 144)))
        (local.set $l3
          (i32.const 0)))
      (global.set $g0
        (i32.add
          (local.get $l1)
          (i32.const 160)))
      (return
        (local.get $l3)))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 144))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (i64.store offset=144
      (local.get $l1)
      (i64.load align=4
        (local.get $l2)))
    (call $f54
      (i32.const 1050521)
      (i32.const 25)
      (i32.const 1050546)
      (i32.const 4)
      (i32.add
        (local.get $l1)
        (i32.const 144)))
    (unreachable))
  (func $f143 (type $t7) (result i32)
    (call $f68
      (i32.const 1050509)
      (i32.const 12)))
  (func $f144 (type $t2) (param $p0 i32)
    (call $f69
      (i32.const 1050509)
      (i32.const 12)
      (local.get $p0)))
  (func $f145 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i64.store
      (local.tee $l2
        (i32.add
          (local.get $l1)
          (i32.const 24)))
      (i64.const 0))
    (i64.store
      (local.tee $l3
        (i32.add
          (local.get $l1)
          (i32.const 16)))
      (i64.const 0))
    (i64.store
      (local.tee $l4
        (i32.add
          (local.get $l1)
          (i32.const 8)))
      (i64.const 0))
    (i64.store
      (local.get $l1)
      (i64.const 0))
    (call $env.getCaller
      (local.get $l1))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 24))
      (i64.load
        (local.get $l2)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 16))
      (i64.load
        (local.get $l3)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i64.load
        (local.get $l4)))
    (i64.store align=1
      (local.get $p0)
      (i64.load
        (local.get $l1)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 32))))
  (func $f146 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f43
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l1)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l1))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l1)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l1)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l2
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l1)
      (local.tee $l3
        (i64.load align=4
          (local.get $p0))))
    (local.set $l3
      (call $env.int64storageLoad
        (i32.wrap_i64
          (local.get $l3))
        (local.get $l2)))
    (call $f37
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 48)))
    (i32.wrap_i64
      (local.get $l3)))
  (func $f147 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f43
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l2))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l2)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l3
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l2)
      (local.tee $l4
        (i64.load align=4
          (local.get $p0))))
    (drop
      (call $env.int64storageStore
        (i32.wrap_i64
          (local.get $l4))
        (local.get $l3)
        (i64.extend_i32_u
          (local.get $p1))))
    (call $f37
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 48))))
  (func $f148 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 320))))
    (local.set $l5
      (i32.const 0))
    (local.set $l6
      (call $f270
        (local.get $l4)
        (i32.const 0)
        (i32.const 320)))
    (local.set $l4
      (local.get $p1))
    (block $B0
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.eqz
              (local.get $l4)))
          (br_if $B0
            (i32.eq
              (local.get $l5)
              (i32.const 320)))
          (call $f240
            (i32.add
              (local.get $l6)
              (local.get $l5))
            (i32.const 32)
            (i32.add
              (local.get $p0)
              (local.get $l5))
            (i32.const 32))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const -1)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 32)))
          (br $L2)))
      (call $env.writeLog
        (local.get $p2)
        (local.get $p3)
        (local.get $l6)
        (local.get $p1))
      (global.set $g0
        (i32.add
          (local.get $l6)
          (i32.const 320)))
      (return))
    (call $f232
      (i32.add
        (local.get $l5)
        (i32.const 32))
      (i32.const 320)
      (i32.const 1052764))
    (unreachable))
  (func $f149 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $f116
              (local.tee $l1
                (call $f128)))))
        (local.set $l1
          (i32.const 1049534))
        (local.set $l2
          (i32.const 28))
        (br $B0))
      (local.set $l1
        (i32.load
          (i32.add
            (local.tee $l2
              (i32.shl
                (i32.shr_s
                  (i32.add
                    (i32.shl
                      (call $f74
                        (call $f143)
                        (local.get $l1))
                      (i32.const 24))
                    (i32.const 16777216))
                  (i32.const 24))
                (i32.const 2)))
            (i32.const 1050700))))
      (local.set $l2
        (i32.load
          (i32.add
            (local.get $l2)
            (i32.const 1050688)))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l2))
    (i32.store
      (local.get $p0)
      (local.get $l1)))
  (func $f150 (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f151
      (i32.const 3))
    (call $f152
      (i32.add
        (local.get $l0)
        (i32.const 8)))
    (local.set $l1
      (call $f153
        (i32.add
          (local.get $l0)
          (i32.const 8))))
    (i32.store offset=44
      (local.get $l0)
      (i32.const 1049756))
    (i32.store offset=40
      (local.get $l0)
      (local.get $l1))
    (call $f135
      (i32.add
        (local.get $l0)
        (i32.const 48)))
    (call $f126
      (local.get $l1)
      (i32.add
        (local.get $l0)
        (i32.const 48)))
    (call $f84
      (i32.add
        (local.get $l0)
        (i32.const 40)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 64))))
  (func $f151 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store8 offset=28
      (local.get $l1)
      (i32.const 1))
    (i32.store offset=24
      (local.get $l1)
      (i32.const 0))
    (i64.store offset=16
      (local.get $l1)
      (i64.const 1))
    (call $f108
      (i32.add
        (local.get $l1)
        (i32.const 32))
      (i32.add
        (local.get $l1)
        (i32.const 16))
      (local.get $p0))
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.load offset=32
            (local.get $l1))
          (i32.const 7)))
      (i64.store
        (local.tee $p0
          (i32.add
            (local.get $l1)
            (i32.const 8)))
        (i64.load
          (local.tee $l2
            (i32.add
              (i32.add
                (local.get $l1)
                (i32.const 32))
              (i32.const 8)))))
      (i64.store
        (local.get $l1)
        (i64.load offset=32
          (local.get $l1)))
      (call $f37
        (i32.add
          (local.get $l1)
          (i32.const 16)))
      (i64.store
        (local.get $l2)
        (i64.load
          (local.get $p0)))
      (i64.store offset=32
        (local.get $l1)
        (i64.load
          (local.get $l1)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050433)
        (i32.const 10)
        (i32.add
          (local.get $l1)
          (i32.const 32)))
      (unreachable))
    (call $f36
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (i32.store
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (local.tee $p0
        (i32.load
          (i32.add
            (i32.add
              (local.get $l1)
              (i32.const 16))
            (i32.const 8)))))
    (i64.store
      (local.get $l1)
      (local.tee $l3
        (i64.load offset=16
          (local.get $l1))))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 32))
        (i32.const 8))
      (local.get $p0))
    (i64.store offset=32
      (local.get $l1)
      (local.get $l3))
    (drop
      (call $env.storageStore
        (i32.const 1050422)
        (i32.const 11)
        (i32.wrap_i64
          (local.get $l3))
        (local.get $p0)))
    (call $f37
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 48))))
  (func $f152 (type $t2) (param $p0 i32)
    (local $l1 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f164
      (local.get $l1)
      (i32.const 1050276)
      (i32.const 12))
    (call $f165
      (local.get $p0)
      (i32.load
        (local.get $l1))
      (i32.load offset=8
        (local.get $l1)))
    (call $f37
      (local.get $l1))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $f153 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i64.store
      (local.tee $l2
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 16))
          (i32.const 24)))
      (i64.load align=1
        (i32.add
          (local.get $p0)
          (i32.const 24))))
    (i64.store
      (local.tee $l3
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 16))
          (i32.const 16)))
      (i64.load align=1
        (i32.add
          (local.get $p0)
          (i32.const 16))))
    (i64.store
      (local.tee $l4
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 16))
          (i32.const 8)))
      (i64.load align=1
        (i32.add
          (local.get $p0)
          (i32.const 8))))
    (i64.store offset=16
      (local.get $l1)
      (i64.load align=1
        (local.get $p0)))
    (call $f94
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 32)
      (i32.const 1))
    (block $B0
      (br_if $B0
        (local.tee $p0
          (i32.load offset=8
            (local.get $l1))))
      (call $f97)
      (unreachable))
    (i64.store align=1
      (local.get $p0)
      (i64.load offset=16
        (local.get $l1)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 24))
      (i64.load
        (local.get $l2)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 16))
      (i64.load
        (local.get $l3)))
    (i64.store align=1
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i64.load
        (local.get $l4)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 48)))
    (local.get $p0))
  (func $f154 (type $t7) (result i32)
    (call $f68
      (i32.const 1051411)
      (i32.const 12)))
  (func $f155 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (local.set $l1
      (call $f156))
    (call $env.bigIntMul
      (local.tee $l2
        (call $env.bigIntNew
          (i64.const 0)))
      (local.get $p0)
      (local.get $l1))
    (call $env.bigIntTDiv
      (local.get $l2)
      (local.get $l2)
      (call $env.bigIntNew
        (i64.const 10000)))
    (local.get $l2))
  (func $f156 (type $t7) (result i32)
    (call $f68
      (i32.const 1050313)
      (i32.const 10)))
  (func $f157 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f136
      (local.get $l2)
      (local.get $p1))
    (local.set $l3
      (call $f154))
    (call $f63
      (local.tee $l4
        (call $env.bigIntNew
          (i64.const 0)))
      (local.get $l3)
      (i32.load
        (local.get $l2)))
    (block $B0
      (block $B1
        (br_if $B1
          (call $f116
            (local.get $l4)))
        (local.set $l5
          (call $f155
            (local.get $l4)))
        (block $B2
          (br_if $B2
            (i32.ne
              (local.get $p1)
              (i32.const 1)))
          (call $f61
            (i32.load offset=4
              (local.get $l2))
            (local.get $l5)))
        (block $B3
          (br_if $B3
            (i32.eqz
              (call $f73
                (local.tee $p1
                  (i32.load offset=8
                    (local.get $l2)))
                (i64.const 0))))
          (call $env.bigIntMul
            (local.tee $l4
              (call $f158
                (local.get $l4)
                (local.get $l5)))
            (local.get $l4)
            (local.get $p1))
          (call $env.bigIntTDiv
            (local.get $l4)
            (local.get $l4)
            (call $f143))
          (call $f61
            (i32.load offset=4
              (local.get $l2))
            (local.get $l4)))
        (i32.store
          (local.get $l2)
          (local.get $l3))
        (i64.store align=4
          (local.get $p0)
          (i64.load
            (local.get $l2)))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 8))))
        (br $B0))
      (i64.store align=4
        (local.get $p0)
        (i64.load
          (local.get $l2)))
      (i32.store
        (i32.add
          (local.get $p0)
          (i32.const 8))
        (i32.load
          (i32.add
            (local.get $l2)
            (i32.const 8)))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f158 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (call $f63
      (local.tee $l2
        (call $env.bigIntNew
          (i64.const 0)))
      (local.get $p0)
      (local.get $p1))
    (local.get $l2))
  (func $f159 (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (local.set $l1
      (call $f132))
    (local.set $l2
      (call $f33))
    (i32.store offset=8
      (local.get $l0)
      (i32.const 1))
    (i32.store offset=12
      (local.get $l0)
      (i32.add
        (local.get $l1)
        (i32.const 1)))
    (loop $L0
      (call $f44
        (local.get $l0)
        (i32.add
          (local.get $l0)
          (i32.const 8)))
      (block $B1
        (br_if $B1
          (i32.load
            (local.get $l0)))
        (block $B2
          (br_if $B2
            (i32.eqz
              (call $f73
                (local.tee $l1
                  (call $f158
                    (call $f158
                      (call $f154)
                      (local.get $l2))
                    (call $f160)))
                (i64.const 0))))
          (call $f61
            (local.tee $l3
              (call $f137
                (i32.const 1)))
            (local.get $l1))
          (call $f140
            (i32.const 1)
            (local.get $l3)))
        (global.set $g0
          (i32.add
            (local.get $l0)
            (i32.const 32)))
        (return))
      (call $f157
        (i32.add
          (local.get $l0)
          (i32.const 16))
        (local.tee $l1
          (i32.load offset=4
            (local.get $l0))))
      (call $f139
        (local.get $l1)
        (i32.load offset=16
          (local.get $l0))
        (local.tee $l3
          (i32.load offset=20
            (local.get $l0)))
        (i32.load offset=24
          (local.get $l0)))
      (call $f114
        (local.get $l2)
        (local.get $l3))
      (br $L0)))
  (func $f160 (type $t7) (result i32)
    (call $f68
      (i32.const 1050483)
      (i32.const 12)))
  (func $f161 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f114
      (local.tee $l1
        (call $f162))
      (call $f154))
    (call $f115
      (local.get $l1)
      (call $f160))
    (i64.store
      (local.tee $l2
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 32))
          (i32.const 24)))
      (i64.const 0))
    (i64.store
      (local.tee $l3
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 32))
          (i32.const 16)))
      (i64.const 0))
    (i64.store
      (local.tee $l4
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 32))
          (i32.const 8)))
      (i64.const 0))
    (i64.store offset=32
      (local.get $l0)
      (i64.const 0))
    (call $env.getOwner
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 24))
      (i64.load
        (local.get $l2)))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 16))
      (i64.load
        (local.get $l3)))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i64.load
        (local.get $l4)))
    (i64.store
      (local.get $l0)
      (i64.load offset=32
        (local.get $l0)))
    (call $env.bigIntGetExternalBalance
      (local.get $l0)
      (local.tee $l2
        (call $env.bigIntNew
          (i64.const 0))))
    (local.set $l1
      (call $f158
        (local.get $l2)
        (local.get $l1)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 64)))
    (local.get $l1))
  (func $f162 (type $t7) (result i32)
    (call $f68
      (i32.const 1050495)
      (i32.const 14)))
  (func $f163 (type $t2) (param $p0 i32)
    (local $l1 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f164
      (local.get $l1)
      (i32.const 1050254)
      (i32.const 5))
    (call $f165
      (local.get $p0)
      (i32.load
        (local.get $l1))
      (i32.load offset=8
        (local.get $l1)))
    (call $f37
      (local.get $l1))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $f164 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f248
      (local.get $l3)
      (local.tee $l4
        (call $env.storageLoadLength
          (local.get $p1)
          (local.get $p2))))
    (drop
      (call $env.storageLoad
        (local.get $p1)
        (local.get $p2)
        (i32.load
          (local.get $l3))))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (local.get $l4))
    (i64.store align=4
      (local.get $p0)
      (i64.load
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f165 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (i64.store
      (i32.add
        (local.tee $l3
          (i32.sub
            (global.get $g0)
            (i32.const 32)))
        (i32.const 24))
      (i64.const 0))
    (i64.store
      (i32.add
        (local.get $l3)
        (i32.const 16))
      (i64.const 0))
    (i64.store
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (i64.const 0))
    (i64.store
      (local.get $l3)
      (i64.const 0))
    (local.set $l4
      (i32.const 0))
    (loop $L0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.gt_u
              (local.get $l4)
              (i32.const 31)))
          (br_if $B1
            (i32.lt_u
              (local.get $l4)
              (local.get $p2))))
        (i64.store align=1
          (local.get $p0)
          (i64.load
            (local.get $l3)))
        (i64.store align=1
          (i32.add
            (local.get $p0)
            (i32.const 24))
          (i64.load
            (i32.add
              (local.get $l3)
              (i32.const 24))))
        (i64.store align=1
          (i32.add
            (local.get $p0)
            (i32.const 16))
          (i64.load
            (i32.add
              (local.get $l3)
              (i32.const 16))))
        (i64.store align=1
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (i64.load
            (i32.add
              (local.get $l3)
              (i32.const 8))))
        (return))
      (i32.store8
        (i32.add
          (local.get $l3)
          (local.get $l4))
        (i32.load8_u
          (i32.add
            (local.get $p1)
            (local.get $l4))))
      (local.set $l4
        (i32.add
          (local.get $l4)
          (i32.const 1)))
      (br $L0)))
  (func $f166 (type $t13) (result i64)
    (call $env.int64storageLoad
      (i32.const 1050288)
      (i32.const 25)))
  (func $f167 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (i32.store offset=32
      (local.get $l1)
      (i32.const 0))
    (i64.store offset=24
      (local.get $l1)
      (i64.const 1))
    (i32.store8 offset=36
      (local.get $l1)
      (i32.const 1))
    (call $f39
      (i32.add
        (local.get $l1)
        (i32.const 56))
      (i32.add
        (local.get $l1)
        (i32.const 24))
      (local.tee $l2
        (i32.load offset=8
          (local.get $p0))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (i32.load offset=56
              (local.get $l1))
            (i32.const 1)))
        (i32.store
          (i32.add
            (i32.add
              (local.get $l1)
              (i32.const 8))
            (i32.const 8))
          (i32.load
            (i32.add
              (local.get $l1)
              (i32.const 72))))
        (i64.store offset=8
          (local.get $l1)
          (i64.load
            (i32.add
              (i32.add
                (local.get $l1)
                (i32.const 56))
              (i32.const 8))))
        (local.set $l3
          (i32.load offset=60
            (local.get $l1)))
        (br $B0))
      (local.set $l2
        (i32.mul
          (local.get $l2)
          (i32.const 96)))
      (local.set $l4
        (i32.load offset=60
          (local.get $l1)))
      (loop $L2
        (block $B3
          (br_if $B3
            (local.get $l2))
          (local.set $l3
            (i32.const 7))
          (br $B0))
        (call $f35
          (i32.add
            (local.get $l1)
            (i32.const 56))
          (local.get $l4))
        (block $B4
          (br_if $B4
            (i32.eq
              (local.tee $l3
                (i32.load offset=56
                  (local.get $l1)))
              (i32.const 7)))
          (i32.store
            (i32.add
              (local.get $l1)
              (i32.const 16))
            (i32.load
              (i32.add
                (local.get $l1)
                (i32.const 68))))
          (i64.store offset=8
            (local.get $l1)
            (i64.load offset=60 align=4
              (local.get $l1)))
          (br $B0))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const -96)))
        (call $f36
          (i32.add
            (local.get $l1)
            (i32.const 56)))
        (br $L2)))
    (i32.store
      (i32.add
        (local.get $l1)
        (i32.const 52))
      (i32.load
        (local.tee $l4
          (i32.add
            (i32.add
              (local.get $l1)
              (i32.const 8))
            (i32.const 8)))))
    (i64.store offset=44 align=4
      (local.get $l1)
      (i64.load offset=8
        (local.get $l1)))
    (i32.store offset=40
      (local.get $l1)
      (local.get $l3))
    (block $B5
      (br_if $B5
        (i32.ne
          (local.get $l3)
          (i32.const 7)))
      (call $f36
        (i32.add
          (local.get $l1)
          (i32.const 40)))
      (i32.store
        (local.get $l4)
        (local.tee $l2
          (i32.load
            (i32.add
              (i32.add
                (local.get $l1)
                (i32.const 24))
              (i32.const 8)))))
      (i64.store offset=8
        (local.get $l1)
        (local.tee $l5
          (i64.load offset=24
            (local.get $l1))))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 56))
          (i32.const 8))
        (local.get $l2))
      (i64.store offset=56
        (local.get $l1)
        (local.get $l5))
      (drop
        (call $env.storageStore
          (i32.const 1050355)
          (i32.const 8)
          (i32.wrap_i64
            (local.get $l5))
          (local.get $l2)))
      (call $f37
        (i32.add
          (local.get $l1)
          (i32.const 56)))
      (call $f78
        (local.get $p0))
      (global.set $g0
        (i32.add
          (local.get $l1)
          (i32.const 80)))
      (return))
    (i64.store
      (local.get $l4)
      (i64.load
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 40))
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l1)
      (i64.load offset=40
        (local.get $l1)))
    (call $f37
      (i32.add
        (local.get $l1)
        (i32.const 24)))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 56))
        (i32.const 8))
      (i64.load
        (local.get $l4)))
    (i64.store offset=56
      (local.get $l1)
      (i64.load offset=8
        (local.get $l1)))
    (call $f54
      (i32.const 1050395)
      (i32.const 27)
      (i32.const 1050392)
      (i32.const 3)
      (i32.add
        (local.get $l1)
        (i32.const 56)))
    (unreachable))
  (func $f168 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 96))))
    (call $f164
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i32.const 1050422)
      (i32.const 11))
    (block $B0
      (br_if $B0
        (i32.lt_u
          (i32.and
            (local.tee $l1
              (i32.wrap_i64
                (call $f58
                  (i32.load offset=8
                    (local.get $l0))
                  (i32.load offset=16
                    (local.get $l0)))))
            (i32.const 255))
          (i32.const 6)))
      (i32.store offset=44
        (local.get $l0)
        (i32.const 13))
      (i32.store offset=40
        (local.get $l0)
        (i32.const 1052316))
      (i32.store offset=56
        (local.get $l0)
        (i32.const 0))
      (i64.store offset=48
        (local.get $l0)
        (i64.const 1))
      (i32.store
        (i32.add
          (local.get $l0)
          (i32.const 84))
        (i32.const 1))
      (i64.store offset=68 align=4
        (local.get $l0)
        (i64.const 1))
      (i32.store offset=64
        (local.get $l0)
        (i32.const 1048576))
      (i32.store offset=92
        (local.get $l0)
        (i32.const 5))
      (i32.store offset=80
        (local.get $l0)
        (i32.add
          (local.get $l0)
          (i32.const 88)))
      (i32.store offset=88
        (local.get $l0)
        (i32.add
          (local.get $l0)
          (i32.const 40)))
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $f76
              (i32.add
                (local.get $l0)
                (i32.const 48))
              (i32.add
                (local.get $l0)
                (i32.const 64)))))
        (call $f121
          (i32.add
            (local.get $l0)
            (i32.const 48))
          (i32.const 1048584)
          (i32.const 1048591)))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 24))
          (i32.const 8))
        (local.tee $l1
          (i32.load
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 48))
              (i32.const 8)))))
      (i64.store offset=24
        (local.get $l0)
        (local.tee $l2
          (i64.load offset=48
            (local.get $l0))))
      (i32.store
        (i32.add
          (local.get $l0)
          (i32.const 76))
        (local.get $l1))
      (i32.store offset=64
        (local.get $l0)
        (i32.const 6))
      (i64.store offset=68 align=4
        (local.get $l0)
        (local.get $l2))
      (call $f54
        (i32.const 1050363)
        (i32.const 29)
        (i32.const 1050433)
        (i32.const 10)
        (i32.add
          (local.get $l0)
          (i32.const 64)))
      (unreachable))
    (call $f37
      (i32.add
        (local.get $l0)
        (i32.const 8)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 96)))
    (local.get $l1))
  (func $f169 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call $f234
      (local.get $p1)
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))))
  (func $f170 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 1050471)
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l1)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l1))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l1)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l1)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l1)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l1)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l2
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l1)
      (local.tee $l3
        (i64.load align=4
          (local.get $p0))))
    (local.set $p0
      (call $f68
        (i32.wrap_i64
          (local.get $l3))
        (local.get $l2)))
    (call $f37
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 48)))
    (local.get $p0))
  (func $f171 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f41
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.const 1050471)
      (local.get $p0))
    (local.set $p0
      (i32.or
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 4)))
    (block $B0
      (br_if $B0
        (i32.ne
          (i32.load offset=8
            (local.get $l2))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 32))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (i64.store offset=32
        (local.get $l2)
        (i64.load align=4
          (local.get $p0)))
      (call $f54
        (i32.const 1050395)
        (i32.const 27)
        (i32.const 1050450)
        (i32.const 3)
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 32))
        (i32.const 8))
      (local.tee $l3
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 8)))))
    (i64.store offset=32
      (local.get $l2)
      (local.tee $l4
        (i64.load align=4
          (local.get $p0))))
    (call $f69
      (i32.wrap_i64
        (local.get $l4))
      (local.get $l3)
      (local.get $p1))
    (call $f37
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 48))))
  (func $f172 (type $t2) (param $p0 i32)
    (call $f69
      (i32.const 1050495)
      (i32.const 14)
      (local.get $p0)))
  (func $f173 (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (i64.store
      (local.tee $l1
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 32))
          (i32.const 24)))
      (i64.const 0))
    (i64.store
      (local.tee $l2
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 32))
          (i32.const 16)))
      (i64.const 0))
    (i64.store
      (local.tee $l3
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 32))
          (i32.const 8)))
      (i64.const 0))
    (i64.store offset=32
      (local.get $l0)
      (i64.const 0))
    (local.set $l4
      (i32.const 0))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eq
            (local.get $l4)
            (i32.const 32)))
        (i64.store align=1
          (local.tee $l5
            (i32.add
              (local.get $l0)
              (local.get $l4)))
          (i64.load offset=32
            (local.get $l0)))
        (i64.store align=1
          (i32.add
            (local.get $l5)
            (i32.const 24))
          (i64.load
            (local.get $l1)))
        (i64.store align=1
          (i32.add
            (local.get $l5)
            (i32.const 16))
          (i64.load
            (local.get $l2)))
        (i64.store align=1
          (i32.add
            (local.get $l5)
            (i32.const 8))
          (i64.load
            (local.get $l3)))
        (local.set $l4
          (i32.add
            (local.get $l4)
            (i32.const 32)))
        (br $L1)))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i64.const 0))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 16))
      (i64.const 0))
    (i64.store align=1
      (i32.add
        (local.get $l0)
        (i32.const 23))
      (i64.const 0))
    (i64.store
      (local.get $l0)
      (i64.const 0))
    (i32.store8 offset=31
      (local.get $l0)
      (i32.const 3))
    (call $f46
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (local.set $l4
      (i32.or
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 4)))
    (block $B2
      (br_if $B2
        (i32.ne
          (i32.load offset=32
            (local.get $l0))
          (i32.const 1)))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 64))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $l4)
            (i32.const 8))))
      (i64.store offset=64
        (local.get $l0)
        (i64.load align=4
          (local.get $l4)))
      (call $f54
        (i32.const 1050521)
        (i32.const 25)
        (i32.const 1050546)
        (i32.const 4)
        (i32.add
          (local.get $l0)
          (i32.const 64)))
      (unreachable))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 64))
        (i32.const 8))
      (local.tee $l5
        (i32.load
          (i32.add
            (local.get $l4)
            (i32.const 8)))))
    (i64.store offset=64
      (local.get $l0)
      (local.tee $l6
        (i64.load align=4
          (local.get $l4))))
    (call $f148
      (local.get $l0)
      (i32.const 1)
      (i32.wrap_i64
        (local.get $l6))
      (local.get $l5))
    (call $f37
      (i32.add
        (local.get $l0)
        (i32.const 64)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 80))))
  (func $version (export "version") (type $t19)
    (local $l0 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f106
      (local.get $l0)
      (i32.const 1049078)
      (i32.const 5))
    (call $env.finish
      (i32.load
        (local.get $l0))
      (i32.load offset=8
        (local.get $l0)))
    (call $f37
      (local.get $l0))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 16))))
  (func $f175 (type $t19)
    (local $l0 i32)
    (call $env.bigIntGetCallValue
      (local.tee $l0
        (call $env.bigIntNew
          (i64.const 0))))
    (block $B0
      (br_if $B0
        (i32.gt_s
          (call $env.bigIntCmp
            (local.get $l0)
            (call $env.bigIntNew
              (i64.const 0)))
          (i32.const 0)))
      (return))
    (call $f254
      (i32.const 1051423))
    (unreachable))
  (func $init (export "init") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 3))
    (local.set $l1
      (call $f67))
    (call $f60
      (local.get $l0)
      (i32.const 1))
    (local.set $l2
      (call $f56
        (i32.const 2)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (call $f73
            (local.get $l1)
            (i64.const 10000))))
      (call $f53
        (i32.const 1049083)
        (i32.const 23))
      (unreachable))
    (drop
      (call $env.bigIntStorageStoreUnsigned
        (i32.const 1050313)
        (i32.const 10)
        (local.get $l1)))
    (call $f145
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (drop
      (call $env.storageStore
        (i32.const 1050254)
        (i32.const 5)
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 32)))
    (drop
      (call $env.storageStore
        (i32.const 1050259)
        (i32.const 17)
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 32)))
    (call $f147
      (i32.add
        (local.get $l0)
        (i32.const 32))
      (i32.const 1))
    (call $f133
      (i32.const 1))
    (drop
      (call $env.storageStore
        (i32.const 1050276)
        (i32.const 12)
        (local.get $l0)
        (i32.const 32)))
    (drop
      (call $env.int64storageStore
        (i32.const 1050288)
        (i32.const 25)
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 64))))
  (func $getContractOwner (export "getContractOwner") (type $t19)
    (local $l0 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f163
      (local.get $l0))
    (call $f65
      (local.get $l0))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 32))))
  (func $getNodeRewardDestination (export "getNodeRewardDestination") (type $t19)
    (local $l0 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f164
      (i32.add
        (local.get $l0)
        (i32.const 32))
      (i32.const 1050259)
      (i32.const 17))
    (call $f165
      (local.get $l0)
      (i32.load offset=32
        (local.get $l0))
      (i32.load offset=40
        (local.get $l0)))
    (call $f37
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (call $f65
      (local.get $l0))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 48))))
  (func $getAuctionContractAddress (export "getAuctionContractAddress") (type $t19)
    (local $l0 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f152
      (local.get $l0))
    (call $f65
      (local.get $l0))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 32))))
  (func $getTimeBeforeForceUnstake (export "getTimeBeforeForceUnstake") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f50
      (call $f166)))
  (func $getNodeShare (export "getNodeShare") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $env.bigIntFinishUnsigned
      (call $f156)))
  (func $getStakePerNode (export "getStakePerNode") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $env.bigIntFinishUnsigned
      (call $f129)))
  (func $setStakePerNode (export "setStakePerNode") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (local.set $l1
      (call $f67))
    (call $f145
      (local.get $l0))
    (call $f163
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (call $f112
                (local.get $l0)
                (i32.add
                  (local.get $l0)
                  (i32.const 32)))))
          (local.set $l0
            (i32.const 36))
          (local.set $l1
            (i32.const 1049106))
          (br $B1))
        (br_if $B0
          (i32.eqz
            (i32.and
              (call $f168)
              (i32.const 255))))
        (local.set $l0
          (i32.const 41))
        (local.set $l1
          (i32.const 1049142)))
      (call $f53
        (local.get $l1)
        (local.get $l0))
      (unreachable))
    (drop
      (call $env.bigIntStorageStoreUnsigned
        (i32.const 1050323)
        (i32.const 14)
        (local.get $l1)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 64))))
  (func $getExpectedStake (export "getExpectedStake") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $env.bigIntFinishUnsigned
      (call $f128)))
  (func $getNrDelegators (export "getNrDelegators") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f50
      (i64.extend_i32_u
        (i32.add
          (call $f132)
          (i32.const -1)))))
  (func $getNumNodes (export "getNumNodes") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f50
      (i64.extend_i32_u
        (call $f130))))
  (func $setNumNodes (export "setNumNodes") (type $t19)
    (local $l0 i32) (local $l1 i64) (local $l2 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i64.ge_u
          (local.tee $l1
            (call $f56
              (i32.const 0)))
          (i64.const 4294967296)))
      (call $f145
        (local.get $l0))
      (call $f163
        (i32.add
          (local.get $l0)
          (i32.const 32)))
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (call $f112
                  (local.get $l0)
                  (i32.add
                    (local.get $l0)
                    (i32.const 32)))))
            (local.set $l0
              (i32.const 1049183))
            (local.set $l2
              (i32.const 41))
            (br $B2))
          (br_if $B1
            (i32.eqz
              (i32.and
                (call $f168)
                (i32.const 255))))
          (local.set $l0
            (i32.const 1049224))
          (local.set $l2
            (i32.const 38)))
        (call $f53
          (local.get $l0)
          (local.get $l2))
        (unreachable))
      (drop
        (call $env.int64storageStore
          (i32.const 1050346)
          (i32.const 9)
          (i64.and
            (local.get $l1)
            (i64.const 4294967295))))
      (i32.store offset=40
        (local.get $l0)
        (i32.const 0))
      (i64.store offset=32
        (local.get $l0)
        (i64.const 1))
      (call $f167
        (i32.add
          (local.get $l0)
          (i32.const 32)))
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 64)))
      (return))
    (call $f52
      (i32.const 1051586)
      (i32.const 21))
    (unreachable))
  (func $getBlsKeys (export "getBlsKeys") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f135
      (i32.add
        (local.get $l0)
        (i32.const 8)))
    (local.set $l1
      (i32.mul
        (i32.load offset=16
          (local.get $l0))
        (i32.const 96)))
    (local.set $l2
      (i32.or
        (i32.add
          (local.get $l0)
          (i32.const 24))
        (i32.const 4)))
    (block $B0
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.eqz
              (local.get $l1)))
          (call $f34
            (i32.add
              (local.get $l0)
              (i32.const 24)))
          (br_if $B0
            (i32.eq
              (i32.load offset=24
                (local.get $l0))
              (i32.const 1)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 48))
              (i32.const 8))
            (local.tee $l3
              (i32.load
                (i32.add
                  (local.get $l2)
                  (i32.const 8)))))
          (i64.store offset=48
            (local.get $l0)
            (local.tee $l4
              (i64.load align=4
                (local.get $l2))))
          (call $env.finish
            (i32.wrap_i64
              (local.get $l4))
            (local.get $l3))
          (local.set $l1
            (i32.add
              (local.get $l1)
              (i32.const -96)))
          (call $f37
            (i32.add
              (local.get $l0)
              (i32.const 48)))
          (br $L2)))
      (call $f78
        (i32.add
          (local.get $l0)
          (i32.const 8)))
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 64)))
      (return))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 48))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (i64.store offset=48
      (local.get $l0)
      (i64.load align=4
        (local.get $l2)))
    (call $f54
      (i32.const 1050631)
      (i32.const 26)
      (i32.const 1048860)
      (i32.const 6)
      (i32.add
        (local.get $l0)
        (i32.const 48)))
    (unreachable))
  (func $getNumBlsKeys (export "getNumBlsKeys") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f50
      (i64.extend_i32_u
        (call $f134))))
  (func $setBlsKeys (export "setBlsKeys") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 464))))
    (call $f175)
    (local.set $l1
      (call $env.getNumArguments))
    (call $f93
      (i32.add
        (local.get $l0)
        (i32.const 16))
      (call $f130))
    (i32.store offset=36
      (local.get $l0)
      (i32.load offset=20
        (local.get $l0)))
    (local.set $l2
      (i32.const 0))
    (i32.store offset=32
      (local.get $l0)
      (i32.const 0))
    (local.set $l3
      (i32.or
        (i32.add
          (local.get $l0)
          (i32.const 40))
        (i32.const 7)))
    (local.set $l4
      (i32.add
        (local.get $l0)
        (i32.const 368)))
    (local.set $l5
      (i32.or
        (i32.add
          (local.get $l0)
          (i32.const 360))
        (i32.const 1)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (loop $L4
              (call $f44
                (i32.add
                  (local.get $l0)
                  (i32.const 8))
                (i32.add
                  (local.get $l0)
                  (i32.const 32)))
              (block $B5
                (br_if $B5
                  (i32.load offset=8
                    (local.get $l0)))
                (br_if $B0
                  (i32.lt_s
                    (local.get $l2)
                    (local.get $l1)))
                (i32.store
                  (i32.add
                    (i32.add
                      (local.get $l0)
                      (i32.const 264))
                    (i32.const 8))
                  (i32.load
                    (i32.add
                      (i32.add
                        (local.get $l0)
                        (i32.const 16))
                      (i32.const 8))))
                (i64.store offset=264
                  (local.get $l0)
                  (i64.load offset=16
                    (local.get $l0)))
                (call $f145
                  (i32.add
                    (local.get $l0)
                    (i32.const 40)))
                (call $f163
                  (i32.add
                    (local.get $l0)
                    (i32.const 360)))
                (br_if $B3
                  (i32.eqz
                    (call $f112
                      (i32.add
                        (local.get $l0)
                        (i32.const 40))
                      (i32.add
                        (local.get $l0)
                        (i32.const 360)))))
                (local.set $l2
                  (i32.const 1049262))
                (local.set $l5
                  (i32.const 27))
                (br $B2))
              (block $B6
                (block $B7
                  (block $B8
                    (block $B9
                      (br_if $B9
                        (i32.ge_s
                          (local.get $l2)
                          (local.get $l1)))
                      (call $f57
                        (i32.add
                          (local.get $l0)
                          (i32.const 136))
                        (local.get $l2))
                      (local.set $l6
                        (i32.load offset=136
                          (local.get $l0)))
                      (i32.store offset=156
                        (local.get $l0)
                        (i32.load offset=144
                          (local.get $l0)))
                      (i32.store offset=152
                        (local.get $l0)
                        (local.get $l6))
                      (i32.store8 offset=160
                        (local.get $l0)
                        (i32.const 1))
                      (call $f117
                        (i32.add
                          (local.get $l0)
                          (i32.const 360))
                        (i32.add
                          (local.get $l0)
                          (i32.const 152)))
                      (i32.store8
                        (local.tee $l6
                          (i32.add
                            (i32.add
                              (local.get $l0)
                              (i32.const 356))
                            (i32.const 2)))
                        (i32.load8_u
                          (i32.add
                            (local.get $l5)
                            (i32.const 2))))
                      (i32.store16 offset=356
                        (local.get $l0)
                        (i32.load16_u align=1
                          (local.get $l5)))
                      (local.set $l7
                        (i32.load offset=364
                          (local.get $l0)))
                      (local.set $l8
                        (i32.load8_u offset=360
                          (local.get $l0)))
                      (drop
                        (call $f271
                          (i32.add
                            (local.get $l0)
                            (i32.const 264))
                          (local.get $l4)
                          (i32.const 89)))
                      (br_if $B8
                        (i32.eq
                          (local.get $l8)
                          (i32.const 1)))
                      (i32.store8
                        (local.tee $l8
                          (i32.add
                            (i32.add
                              (local.get $l0)
                              (i32.const 260))
                            (i32.const 2)))
                        (i32.load8_u
                          (local.get $l6)))
                      (i32.store16 offset=260
                        (local.get $l0)
                        (i32.load16_u offset=356
                          (local.get $l0)))
                      (drop
                        (call $f271
                          (i32.add
                            (local.get $l0)
                            (i32.const 171))
                          (i32.add
                            (local.get $l0)
                            (i32.const 264))
                          (i32.const 89)))
                      (br_if $B6
                        (i32.eqz
                          (i32.load offset=156
                            (local.get $l0))))
                      (local.set $l7
                        (i32.const 4))
                      (br $B7))
                    (call $f52
                      (i32.const 1051477)
                      (i32.const 25))
                    (unreachable))
                  (i32.store
                    (i32.add
                      (i32.add
                        (local.get $l0)
                        (i32.const 360))
                      (i32.const 8))
                    (i32.load align=1
                      (i32.add
                        (i32.add
                          (local.get $l0)
                          (i32.const 264))
                        (i32.const 8))))
                  (i64.store offset=360
                    (local.get $l0)
                    (i64.load offset=264 align=1
                      (local.get $l0))))
                (i32.store
                  (i32.add
                    (local.get $l0)
                    (i32.const 276))
                  (i32.load
                    (i32.add
                      (local.get $l0)
                      (i32.const 368))))
                (i32.store offset=264
                  (local.get $l0)
                  (local.get $l7))
                (i64.store offset=268 align=4
                  (local.get $l0)
                  (i64.load offset=360
                    (local.get $l0)))
                (call $f54
                  (i32.const 1050657)
                  (i32.const 30)
                  (i32.const 1048860)
                  (i32.const 6)
                  (i32.add
                    (local.get $l0)
                    (i32.const 264)))
                (unreachable))
              (i32.store16 offset=40
                (local.get $l0)
                (i32.load16_u offset=260
                  (local.get $l0)))
              (i32.store8 offset=42
                (local.get $l0)
                (i32.load8_u
                  (local.get $l8)))
              (drop
                (call $f271
                  (i32.add
                    (local.get $l0)
                    (i32.const 360))
                  (i32.add
                    (local.get $l0)
                    (i32.const 171))
                  (i32.const 89)))
              (i32.store offset=43 align=1
                (local.get $l0)
                (local.get $l7))
              (drop
                (call $f271
                  (local.get $l3)
                  (i32.add
                    (local.get $l0)
                    (i32.const 360))
                  (i32.const 89)))
              (local.set $l2
                (i32.add
                  (local.get $l2)
                  (i32.const 1)))
              (call $f37
                (i32.add
                  (local.get $l0)
                  (i32.const 136)))
              (call $f101
                (i32.add
                  (local.get $l0)
                  (i32.const 16))
                (i32.add
                  (local.get $l0)
                  (i32.const 40)))
              (br $L4)))
          (br_if $B1
            (i32.eqz
              (i32.and
                (call $f168)
                (i32.const 255))))
          (local.set $l2
            (i32.const 1049289))
          (local.set $l5
            (i32.const 35)))
        (call $f78
          (i32.add
            (local.get $l0)
            (i32.const 264)))
        (call $f53
          (local.get $l2)
          (local.get $l5))
        (unreachable))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 360))
          (i32.const 8))
        (i32.load
          (i32.add
            (i32.add
              (local.get $l0)
              (i32.const 264))
            (i32.const 8))))
      (i64.store offset=360
        (local.get $l0)
        (i64.load offset=264
          (local.get $l0)))
      (call $f167
        (i32.add
          (local.get $l0)
          (i32.const 360)))
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 464)))
      (return))
    (call $f52
      (i32.const 1051477)
      (i32.const 25))
    (unreachable))
  (func $stakeState (export "stakeState") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (local.set $l1
      (call $f168))
    (i32.store8 offset=28
      (local.get $l0)
      (i32.const 1))
    (i32.store offset=24
      (local.get $l0)
      (i32.const 0))
    (i64.store offset=16
      (local.get $l0)
      (i64.const 1))
    (call $f108
      (i32.add
        (local.get $l0)
        (i32.const 32))
      (i32.add
        (local.get $l0)
        (i32.const 16))
      (local.get $l1))
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.load offset=32
            (local.get $l0))
          (i32.const 7)))
      (i64.store
        (local.tee $l1
          (i32.add
            (local.get $l0)
            (i32.const 8)))
        (i64.load
          (local.tee $l2
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 32))
              (i32.const 8)))))
      (i64.store
        (local.get $l0)
        (i64.load offset=32
          (local.get $l0)))
      (call $f37
        (i32.add
          (local.get $l0)
          (i32.const 16)))
      (i64.store
        (local.get $l2)
        (i64.load
          (local.get $l1)))
      (i64.store offset=32
        (local.get $l0)
        (i64.load
          (local.get $l0)))
      (call $f54
        (i32.const 1050631)
        (i32.const 26)
        (i32.const 1050433)
        (i32.const 10)
        (i32.add
          (local.get $l0)
          (i32.const 32)))
      (unreachable))
    (call $f36
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (i32.store
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (local.tee $l1
        (i32.load
          (i32.add
            (i32.add
              (local.get $l0)
              (i32.const 16))
            (i32.const 8)))))
    (i64.store
      (local.get $l0)
      (local.tee $l3
        (i64.load offset=16
          (local.get $l0))))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 8))
      (local.get $l1))
    (i64.store offset=32
      (local.get $l0)
      (local.get $l3))
    (call $env.finish
      (i32.wrap_i64
        (local.get $l3))
      (local.get $l1))
    (call $f37
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 48))))
  (func $getUserId (export "getUserId") (type $t19)
    (local $l0 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (call $f60
      (local.get $l0)
      (i32.const 0))
    (call $f50
      (i64.extend_i32_u
        (call $f146
          (local.get $l0))))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 32))))
  (func $getFilledStake (export "getFilledStake") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $env.bigIntFinishUnsigned
      (call $f143)))
  (func $getStake (export "getStake") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (call $f60
      (local.get $l0)
      (i32.const 0))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 24))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 24))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 16))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 8))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l0)
      (i64.load
        (local.get $l0)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l1
              (call $f146
                (i32.add
                  (local.get $l0)
                  (i32.const 32))))))
        (local.set $l1
          (call $f138
            (local.get $l1)))
        (br $B0))
      (local.set $l1
        (call $f33)))
    (call $env.bigIntFinishUnsigned
      (local.get $l1))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 64))))
  (func $stake (export "stake") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (call $f59
      (i32.const 0))
    (local.set $l0
      (call $f70))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (i32.and
                (call $f168)
                (i32.const 255))))
          (local.set $l1
            (i32.const 37))
          (local.set $l0
            (i32.const 1049324))
          (br $B1))
        (br_if $B0
          (call $f116
            (local.get $l0)))
        (call $f61
          (local.tee $l1
            (call $f162))
          (local.get $l0))
        (call $f172
          (local.get $l1))
        (br_if $B0
          (i32.eqz
            (local.tee $l0
              (call $f142
                (local.get $l0)))))
        (local.set $l1
          (i32.const 36)))
      (call $f53
        (local.get $l0)
        (local.get $l1))
      (unreachable)))
  (func $stakeGenesis (export "stakeGenesis") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (call $f175)
    (call $f59
      (i32.const 1))
    (local.set $l0
      (call $f67))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i64.eq
              (call $env.getBlockNonce)
              (i64.const 0)))
          (local.set $l1
            (i32.const 18))
          (local.set $l0
            (i32.const 1049361))
          (br $B1))
        (br_if $B0
          (i32.eqz
            (local.tee $l0
              (call $f142
                (local.get $l0)))))
        (local.set $l1
          (i32.const 36)))
      (call $f53
        (local.get $l0)
        (local.get $l1))
      (unreachable)))
  (func $unstake (export "unstake") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 160))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (local.set $l1
      (call $f67))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.eqz
                  (i32.and
                    (call $f168)
                    (i32.const 255))))
              (local.set $l2
                (i32.const 1049415))
              (local.set $l3
                (i32.const 39))
              (br $B3))
            (br_if $B1
              (call $f116
                (local.get $l1)))
            (call $f145
              (local.get $l0))
            (block $B5
              (br_if $B5
                (local.tee $l2
                  (call $f146
                    (local.get $l0))))
              (local.set $l2
                (i32.const 1049454))
              (local.set $l3
                (i32.const 27))
              (br $B3))
            (call $f136
              (i32.add
                (local.get $l0)
                (i32.const 32))
              (local.get $l2))
            (br_if $B2
              (i32.eqz
                (call $f75
                  (local.get $l1)
                  (local.tee $l3
                    (i32.load offset=40
                      (local.get $l0))))))
            (local.set $l2
              (i32.const 1049481))
            (local.set $l3
              (i32.const 35)))
          (call $f53
            (local.get $l2)
            (local.get $l3))
          (unreachable))
        (call $f62
          (local.get $l3)
          (local.get $l1))
        (call $f139
          (local.get $l2)
          (i32.load offset=32
            (local.get $l0))
          (i32.load offset=36
            (local.get $l0))
          (local.get $l3))
        (call $f62
          (local.tee $l2
            (call $f162))
          (local.get $l1))
        (call $f172
          (local.get $l2))
        (call $f62
          (local.tee $l2
            (call $f143))
          (local.get $l1))
        (call $f144
          (local.get $l2))
        (call $f198
          (local.get $l0)
          (local.get $l1)
          (i32.const 1049516)
          (i32.const 18))
        (i64.store
          (local.tee $l4
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 112))
              (i32.const 24)))
          (i64.const 0))
        (i64.store
          (local.tee $l5
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 112))
              (i32.const 16)))
          (i64.const 0))
        (i64.store
          (local.tee $l6
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 112))
              (i32.const 8)))
          (i64.const 0))
        (i64.store offset=112
          (local.get $l0)
          (i64.const 0))
        (local.set $l2
          (i32.const 0))
        (block $B6
          (loop $L7
            (br_if $B6
              (i32.eq
                (local.get $l2)
                (i32.const 64)))
            (i64.store align=1
              (local.tee $l3
                (i32.add
                  (i32.add
                    (local.get $l0)
                    (i32.const 48))
                  (local.get $l2)))
              (i64.load offset=112
                (local.get $l0)))
            (i64.store align=1
              (i32.add
                (local.get $l3)
                (i32.const 24))
              (i64.load
                (local.get $l4)))
            (i64.store align=1
              (i32.add
                (local.get $l3)
                (i32.const 16))
              (i64.load
                (local.get $l5)))
            (i64.store align=1
              (i32.add
                (local.get $l3)
                (i32.const 8))
              (i64.load
                (local.get $l6)))
            (local.set $l2
              (i32.add
                (local.get $l2)
                (i32.const 32)))
            (br $L7)))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l0)
              (i32.const 48))
            (i32.const 8))
          (i64.const 0))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l0)
              (i32.const 48))
            (i32.const 16))
          (i64.const 0))
        (i64.store align=1
          (i32.add
            (local.get $l0)
            (i32.const 71))
          (i64.const 0))
        (i64.store
          (i32.add
            (local.get $l0)
            (i32.const 88))
          (i64.load
            (i32.add
              (local.get $l0)
              (i32.const 8))))
        (i64.store
          (i32.add
            (local.get $l0)
            (i32.const 96))
          (i64.load
            (i32.add
              (local.get $l0)
              (i32.const 16))))
        (i64.store
          (i32.add
            (local.get $l0)
            (i32.const 104))
          (i64.load
            (i32.add
              (local.get $l0)
              (i32.const 24))))
        (i64.store offset=48
          (local.get $l0)
          (i64.const 0))
        (i32.store8 offset=79
          (local.get $l0)
          (i32.const 2))
        (i64.store offset=80
          (local.get $l0)
          (i64.load
            (local.get $l0)))
        (call $f47
          (i32.add
            (local.get $l0)
            (i32.const 112))
          (local.get $l1))
        (local.set $l2
          (i32.or
            (i32.add
              (local.get $l0)
              (i32.const 112))
            (i32.const 4)))
        (br_if $B0
          (i32.eq
            (i32.load offset=112
              (local.get $l0))
            (i32.const 1)))
        (i32.store
          (i32.add
            (i32.add
              (local.get $l0)
              (i32.const 144))
            (i32.const 8))
          (local.tee $l3
            (i32.load
              (i32.add
                (local.get $l2)
                (i32.const 8)))))
        (i64.store offset=144
          (local.get $l0)
          (local.tee $l7
            (i64.load align=4
              (local.get $l2))))
        (call $f148
          (i32.add
            (local.get $l0)
            (i32.const 48))
          (i32.const 2)
          (i32.wrap_i64
            (local.get $l7))
          (local.get $l3))
        (call $f37
          (i32.add
            (local.get $l0)
            (i32.const 144))))
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 160)))
      (return))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 144))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (i64.store offset=144
      (local.get $l0)
      (i64.load align=4
        (local.get $l2)))
    (call $f54
      (i32.const 1050521)
      (i32.const 25)
      (i32.const 1050546)
      (i32.const 4)
      (i32.add
        (local.get $l0)
        (i32.const 144)))
    (unreachable))
  (func $f198 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f251
      (i32.add
        (local.get $l4)
        (i32.const 16))
      (local.get $p1))
    (call $f252
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 16))
      (i32.const 1052424))
    (drop
      (call $env.transferValue
        (local.get $p0)
        (i32.load
          (local.get $l4))
        (local.get $p2)
        (local.get $p3)))
    (call $f253
      (local.get $l4))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 32))))
  (func $activate (export "activate") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 288))))
    (call $f175)
    (local.set $l1
      (call $env.getNumArguments))
    (call $f98
      (i32.add
        (local.get $l0)
        (i32.const 32))
      (call $f130))
    (i32.store offset=84
      (local.get $l0)
      (i32.load offset=36
        (local.get $l0)))
    (local.set $l2
      (i32.const 0))
    (i32.store offset=80
      (local.get $l0)
      (i32.const 0))
    (loop $L0
      (call $f44
        (i32.add
          (local.get $l0)
          (i32.const 24))
        (i32.add
          (local.get $l0)
          (i32.const 80)))
      (block $B1
        (br_if $B1
          (i32.load offset=24
            (local.get $l0)))
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (br_if $B8
                        (i32.lt_s
                          (local.get $l2)
                          (local.get $l1)))
                      (i32.store
                        (i32.add
                          (i32.add
                            (local.get $l0)
                            (i32.const 48))
                          (i32.const 8))
                        (i32.load
                          (i32.add
                            (i32.add
                              (local.get $l0)
                              (i32.const 32))
                            (i32.const 8))))
                      (i64.store offset=48
                        (local.get $l0)
                        (i64.load offset=32
                          (local.get $l0)))
                      (call $f145
                        (i32.add
                          (local.get $l0)
                          (i32.const 80)))
                      (call $f163
                        (i32.add
                          (local.get $l0)
                          (i32.const 176)))
                      (local.set $l2
                        (i32.const 1049631))
                      (local.set $l1
                        (i32.const 23))
                      (br_if $B5
                        (call $f112
                          (i32.add
                            (local.get $l0)
                            (i32.const 80))
                          (i32.add
                            (local.get $l0)
                            (i32.const 176))))
                      (local.set $l2
                        (i32.const 1049654))
                      (br_if $B5
                        (i32.and
                          (call $f168)
                          (i32.const 255)))
                      (local.set $l2
                        (i32.const 1049677))
                      (local.set $l1
                        (i32.const 24))
                      (br_if $B5
                        (i32.ne
                          (call $f134)
                          (call $f130)))
                      (local.set $l2
                        (i32.add
                          (i32.load offset=48
                            (local.get $l0))
                          (i32.const 8)))
                      (local.set $l3
                        (i32.add
                          (i32.and
                            (i32.load offset=56
                              (local.get $l0))
                            (i32.const 1073741823))
                          (i32.const 1)))
                      (block $B9
                        (loop $L10
                          (block $B11
                            (br_if $B11
                              (local.tee $l3
                                (i32.add
                                  (local.get $l3)
                                  (i32.const -1))))
                            (call $f135
                              (i32.add
                                (local.get $l0)
                                (i32.const 64)))
                            (br_if $B9
                              (local.tee $l4
                                (i32.load offset=72
                                  (local.get $l0))))
                            (local.set $l2
                              (i32.const 1049725))
                            (local.set $l1
                              (i32.const 29))
                            (br $B6))
                          (local.set $l5
                            (i32.load
                              (local.get $l2)))
                          (local.set $l2
                            (i32.add
                              (local.get $l2)
                              (i32.const 12)))
                          (br_if $L10
                            (i32.eq
                              (local.get $l5)
                              (i32.const 32))))
                        (local.set $l2
                          (i32.const 1049701))
                        (br $B5))
                      (call $f149
                        (i32.add
                          (local.get $l0)
                          (i32.const 16)))
                      (br_if $B7
                        (local.tee $l2
                          (i32.load offset=16
                            (local.get $l0))))
                      (call $f151
                        (i32.const 1))
                      (call $f152
                        (i32.add
                          (local.get $l0)
                          (i32.const 80)))
                      (local.set $l6
                        (call $f153
                          (i32.add
                            (local.get $l0)
                            (i32.const 80))))
                      (i32.store offset=116
                        (local.get $l0)
                        (i32.const 1049756))
                      (i32.store offset=112
                        (local.get $l0)
                        (local.get $l6))
                      (i32.store offset=124
                        (local.get $l0)
                        (call $f128))
                      (i32.store
                        (i32.add
                          (i32.add
                            (local.get $l0)
                            (i32.const 128))
                          (i32.const 8))
                        (local.tee $l7
                          (i32.load
                            (i32.add
                              (i32.add
                                (local.get $l0)
                                (i32.const 64))
                              (i32.const 8)))))
                      (i64.store offset=128
                        (local.get $l0)
                        (i64.load offset=64
                          (local.get $l0)))
                      (i32.store
                        (i32.add
                          (i32.add
                            (local.get $l0)
                            (i32.const 144))
                          (i32.const 8))
                        (i32.load
                          (i32.add
                            (i32.add
                              (local.get $l0)
                              (i32.const 48))
                            (i32.const 8))))
                      (i64.store offset=144
                        (local.get $l0)
                        (i64.load offset=48
                          (local.get $l0)))
                      (call $f98
                        (i32.add
                          (local.get $l0)
                          (i32.const 160))
                        (local.tee $l2
                          (i32.shl
                            (local.get $l7)
                            (i32.const 1))))
                      (block $B12
                        (br_if $B12
                          (i32.lt_u
                            (local.tee $l3
                              (i32.load offset=168
                                (local.get $l0)))
                            (local.get $l2)))
                        (i32.store offset=168
                          (local.get $l0)
                          (local.get $l2))
                        (call $f83
                          (i32.add
                            (i32.load offset=160
                              (local.get $l0))
                            (i32.mul
                              (local.get $l2)
                              (i32.const 12)))
                          (i32.sub
                            (local.get $l3)
                            (local.get $l2)))
                        (br $B4))
                      (call $f105
                        (i32.add
                          (local.get $l0)
                          (i32.const 160))
                        (local.tee $l5
                          (i32.sub
                            (local.get $l2)
                            (local.get $l3))))
                      (local.set $l2
                        (i32.load offset=160
                          (local.get $l0)))
                      (local.set $l3
                        (i32.load offset=168
                          (local.get $l0)))
                      (i32.store offset=180
                        (local.get $l0)
                        (local.get $l5))
                      (i32.store offset=176
                        (local.get $l0)
                        (i32.const 1))
                      (local.set $l2
                        (i32.add
                          (local.get $l2)
                          (i32.mul
                            (local.get $l3)
                            (i32.const 12))))
                      (loop $L13
                        (call $f44
                          (i32.add
                            (local.get $l0)
                            (i32.const 8))
                          (i32.add
                            (local.get $l0)
                            (i32.const 176)))
                        (block $B14
                          (br_if $B14
                            (i32.load offset=8
                              (local.get $l0)))
                          (block $B15
                            (br_if $B15
                              (i32.eqz
                                (local.get $l5)))
                            (i64.store align=4
                              (local.get $l2)
                              (i64.const 1))
                            (i32.store
                              (i32.add
                                (local.get $l2)
                                (i32.const 8))
                              (i32.const 0))
                            (local.set $l3
                              (i32.add
                                (local.get $l3)
                                (i32.const 1))))
                          (i32.store offset=168
                            (local.get $l0)
                            (local.get $l3))
                          (br $B4))
                        (i64.store align=4
                          (local.get $l2)
                          (i64.const 1))
                        (i32.store
                          (i32.add
                            (local.get $l2)
                            (i32.const 8))
                          (i32.const 0))
                        (local.set $l2
                          (i32.add
                            (local.get $l2)
                            (i32.const 12)))
                        (local.set $l3
                          (i32.add
                            (local.get $l3)
                            (i32.const 1)))
                        (br $L13)))
                    (call $f52
                      (i32.const 1051477)
                      (i32.const 25))
                    (unreachable))
                  (local.set $l1
                    (i32.load offset=20
                      (local.get $l0))))
                (call $f78
                  (i32.add
                    (local.get $l0)
                    (i32.const 64))))
              (call $f82
                (i32.add
                  (local.get $l0)
                  (i32.const 48)))
              (br_if $B3
                (i32.eqz
                  (local.get $l2)))
              (call $f53
                (local.get $l2)
                (local.get $l1))
              (unreachable))
            (local.set $l3
              (i32.add
                (i32.shl
                  (local.get $l7)
                  (i32.const 1))
                (i32.const -1)))
            (local.set $l8
              (i32.mul
                (i32.sub
                  (local.tee $l5
                    (i32.load offset=152
                      (local.get $l0)))
                  (local.get $l7))
                (i32.const 12)))
            (local.set $l1
              (i32.add
                (i32.load offset=128
                  (local.get $l0))
                (i32.mul
                  (local.tee $l2
                    (i32.add
                      (local.get $l7)
                      (i32.const -1)))
                  (i32.const 96))))
            (local.set $l2
              (i32.add
                (i32.load offset=144
                  (local.get $l0))
                (i32.mul
                  (local.get $l2)
                  (i32.const 12))))
            (block $B16
              (loop $L17
                (br_if $B16
                  (i32.lt_s
                    (local.tee $l9
                      (i32.add
                        (local.get $l7)
                        (i32.const -1)))
                    (i32.const 0)))
                (drop
                  (call $f271
                    (i32.add
                      (local.get $l0)
                      (i32.const 176))
                    (local.get $l1)
                    (i32.const 96)))
                (call $f106
                  (i32.add
                    (local.get $l0)
                    (i32.const 272))
                  (i32.add
                    (local.get $l0)
                    (i32.const 176))
                  (i32.const 96))
                (call $f37
                  (local.tee $l7
                    (call $f113
                      (i32.add
                        (local.get $l0)
                        (i32.const 160))
                      (i32.add
                        (local.get $l3)
                        (i32.const -1))
                      (i32.const 1048924))))
                (i32.store
                  (i32.add
                    (local.get $l7)
                    (i32.const 8))
                  (i32.load
                    (local.tee $l10
                      (i32.add
                        (i32.add
                          (local.get $l0)
                          (i32.const 272))
                        (i32.const 8)))))
                (i64.store align=4
                  (local.get $l7)
                  (i64.load offset=272
                    (local.get $l0)))
                (br_if $B2
                  (i32.le_u
                    (local.get $l5)
                    (local.get $l9)))
                (i32.store
                  (local.get $l10)
                  (i32.load
                    (i32.add
                      (local.get $l2)
                      (i32.const 8))))
                (i64.store offset=272
                  (local.get $l0)
                  (i64.load align=4
                    (local.get $l2)))
                (local.set $l7
                  (call $f272
                    (local.get $l2)
                    (i32.add
                      (local.get $l2)
                      (i32.const 12))
                    (local.get $l8)))
                (call $f37
                  (local.tee $l2
                    (call $f113
                      (i32.add
                        (local.get $l0)
                        (i32.const 160))
                      (local.get $l3)
                      (i32.const 1048940))))
                (i32.store
                  (i32.add
                    (local.get $l2)
                    (i32.const 8))
                  (i32.load
                    (local.get $l10)))
                (i64.store align=4
                  (local.get $l2)
                  (i64.load offset=272
                    (local.get $l0)))
                (local.set $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const -2)))
                (local.set $l1
                  (i32.add
                    (local.get $l1)
                    (i32.const -96)))
                (local.set $l2
                  (i32.add
                    (local.get $l7)
                    (i32.const -12)))
                (local.set $l5
                  (i32.add
                    (local.get $l5)
                    (i32.const -1)))
                (local.set $l7
                  (local.get $l9))
                (br $L17)))
            (i32.store
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 176))
                (i32.const 8))
              (i32.load
                (i32.add
                  (i32.add
                    (local.get $l0)
                    (i32.const 160))
                  (i32.const 8))))
            (i32.store offset=152
              (local.get $l0)
              (local.get $l5))
            (i32.store offset=136
              (local.get $l0)
              (local.get $l7))
            (i64.store offset=176
              (local.get $l0)
              (i64.load offset=160
                (local.get $l0)))
            (call $f82
              (i32.add
                (local.get $l0)
                (i32.const 144)))
            (call $f78
              (i32.add
                (local.get $l0)
                (i32.const 128)))
            (call $f122
              (local.get $l6)
              (local.get $l4)
              (i32.add
                (local.get $l0)
                (i32.const 176))
              (i32.add
                (local.get $l0)
                (i32.const 124)))
            (call $f84
              (i32.add
                (local.get $l0)
                (i32.const 112))))
          (global.set $g0
            (i32.add
              (local.get $l0)
              (i32.const 288)))
          (return))
        (call $f103
          (i32.const 1048772)
          (i32.const 29)
          (i32.const 1051976))
        (unreachable))
      (block $B18
        (br_if $B18
          (i32.ge_s
            (local.get $l2)
            (local.get $l1)))
        (call $f57
          (i32.add
            (local.get $l0)
            (i32.const 176))
          (local.get $l2))
        (block $B19
          (br_if $B19
            (i32.ne
              (local.tee $l3
                (i32.load offset=40
                  (local.get $l0)))
              (i32.load offset=36
                (local.get $l0))))
          (call $f105
            (i32.add
              (local.get $l0)
              (i32.const 32))
            (i32.const 1))
          (local.set $l3
            (i32.load offset=40
              (local.get $l0))))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const 1)))
        (i64.store align=4
          (local.tee $l5
            (i32.add
              (i32.load offset=32
                (local.get $l0))
              (i32.mul
                (local.get $l3)
                (i32.const 12))))
          (i64.load offset=176
            (local.get $l0)))
        (i32.store
          (i32.add
            (local.get $l5)
            (i32.const 8))
          (i32.load
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 176))
              (i32.const 8))))
        (i32.store offset=40
          (local.get $l0)
          (i32.add
            (local.get $l3)
            (i32.const 1)))
        (br $L0)))
    (call $f52
      (i32.const 1051477)
      (i32.const 25))
    (unreachable))
  (func $activateGenesis (export "activateGenesis") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i64.eq
              (call $env.getBlockNonce)
              (i64.const 0)))
          (local.set $l1
            (i32.const 1049361))
          (local.set $l0
            (i32.const 18))
          (br $B1))
        (call $f149
          (i32.add
            (local.get $l0)
            (i32.const 8)))
        (br_if $B0
          (i32.eqz
            (local.tee $l1
              (i32.load offset=8
                (local.get $l0)))))
        (local.set $l0
          (i32.load offset=12
            (local.get $l0))))
      (call $f53
        (local.get $l1)
        (local.get $l0))
      (unreachable))
    (call $f151
      (i32.const 2))
    (call $f173)
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 16))))
  (func $deactivate (export "deactivate") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f145
      (local.get $l0))
    (call $f163
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (call $f112
                (local.get $l0)
                (i32.add
                  (local.get $l0)
                  (i32.const 32)))))
          (local.set $l0
            (i32.const 1049780))
          (local.set $l1
            (i32.const 25))
          (br $B1))
        (br_if $B0
          (i32.eq
            (i32.and
              (call $f168)
              (i32.const 255))
            (i32.const 2)))
        (local.set $l0
          (i32.const 1049805))
        (local.set $l1
          (i32.const 22)))
      (call $f53
        (local.get $l0)
        (local.get $l1))
      (unreachable))
    (call $f150)
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 64))))
  (func $forceUnstake (export "forceUnstake") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i64) (local $l4 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f145
      (local.get $l0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (local.tee $l1
                (call $f146
                  (local.get $l0))))
            (local.set $l0
              (i32.const 1049827))
            (local.set $l1
              (i32.const 37))
            (br $B2))
          (block $B4
            (br_if $B4
              (i32.eqz
                (call $f116
                  (call $f170
                    (local.get $l1)))))
            (local.set $l0
              (i32.const 1049864))
            (local.set $l1
              (i32.const 67))
            (br $B2))
          (call $f41
            (local.get $l0)
            (i32.const 1050477)
            (local.get $l1))
          (local.set $l1
            (i32.or
              (local.get $l0)
              (i32.const 4)))
          (br_if $B0
            (i32.eq
              (i32.load
                (local.get $l0))
              (i32.const 1)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 32))
              (i32.const 8))
            (local.tee $l2
              (i32.load
                (i32.add
                  (local.get $l1)
                  (i32.const 8)))))
          (i64.store offset=32
            (local.get $l0)
            (local.tee $l3
              (i64.load align=4
                (local.get $l1))))
          (local.set $l3
            (call $env.int64storageLoad
              (i32.wrap_i64
                (local.get $l3))
              (local.get $l2)))
          (call $f37
            (i32.add
              (local.get $l0)
              (i32.const 32)))
          (local.set $l4
            (call $f166))
          (br_if $B1
            (i64.gt_u
              (call $env.getBlockTimestamp)
              (i64.add
                (local.get $l4)
                (local.get $l3))))
          (local.set $l0
            (i32.const 1049931))
          (local.set $l1
            (i32.const 29)))
        (call $f53
          (local.get $l0)
          (local.get $l1))
        (unreachable))
      (call $f150)
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 48)))
      (return))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $l1)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l0)
      (i64.load align=4
        (local.get $l1)))
    (call $f54
      (i32.const 1050395)
      (i32.const 27)
      (i32.const 1050450)
      (i32.const 3)
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (unreachable))
  (func $unBond (export "unBond") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.and
            (call $f168)
            (i32.const 255))
          (i32.const 4)))
      (call $f53
        (i32.const 1049960)
        (i32.const 32))
      (unreachable))
    (call $f135
      (i32.add
        (local.get $l0)
        (i32.const 8)))
    (call $f151
      (i32.const 5))
    (call $f159)
    (call $f152
      (i32.add
        (local.get $l0)
        (i32.const 24)))
    (local.set $l1
      (call $f153
        (i32.add
          (local.get $l0)
          (i32.const 24))))
    (i32.store offset=60
      (local.get $l0)
      (i32.const 1049756))
    (i32.store offset=56
      (local.get $l0)
      (local.get $l1))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 64))
        (i32.const 8))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 8))
          (i32.const 8))))
    (i64.store offset=64
      (local.get $l0)
      (i64.load offset=8
        (local.get $l0)))
    (call $f127
      (local.get $l1)
      (i32.add
        (local.get $l0)
        (i32.const 64)))
    (call $f84
      (i32.add
        (local.get $l0)
        (i32.const 56)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 80))))
  (func $getTotalCumulatedRewards (export "getTotalCumulatedRewards") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $env.bigIntFinishUnsigned
      (call $f154)))
  (func $_rewards_for_node (export "_rewards_for_node") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 1))
    (call $env.bigIntFinishUnsigned
      (call $f155
        (call $f67))))
  (func $computeAllRewards (export "computeAllRewards") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f159))
  (func $getClaimableRewards (export "getClaimableRewards") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (call $f60
      (local.get $l0)
      (i32.const 0))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 24))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 24))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 16))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 8))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l0)
      (i64.load
        (local.get $l0)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l1
              (call $f146
                (i32.add
                  (local.get $l0)
                  (i32.const 32))))))
        (call $f157
          (i32.add
            (local.get $l0)
            (i32.const 64))
          (local.get $l1))
        (local.set $l1
          (i32.load offset=68
            (local.get $l0)))
        (br $B0))
      (local.set $l1
        (call $f33)))
    (call $env.bigIntFinishUnsigned
      (local.get $l1))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 80))))
  (func $claimRewards (export "claimRewards") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f145
      (local.get $l0))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (call $f146
              (local.get $l0)))))
      (call $f157
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (local.get $l1))
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $f73
              (local.tee $l2
                (i32.load offset=36
                  (local.get $l0)))
              (i64.const 0))))
        (call $f198
          (local.get $l0)
          (local.get $l2)
          (i32.const 1050006)
          (i32.const 16))
        (call $f61
          (local.tee $l3
            (call $f160))
          (local.get $l2))
        (drop
          (call $env.bigIntStorageStoreUnsigned
            (i32.const 1050483)
            (i32.const 12)
            (local.get $l3)))
        (i32.store offset=36
          (local.get $l0)
          (local.tee $l2
            (call $f33))))
      (call $f139
        (local.get $l1)
        (i32.load offset=32
          (local.get $l0))
        (local.get $l2)
        (i32.load offset=40
          (local.get $l0)))
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 48)))
      (return))
    (call $f53
      (i32.const 1049992)
      (i32.const 14))
    (unreachable))
  (func $getUnexpectedBalance (export "getUnexpectedBalance") (type $t19)
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $env.bigIntFinishUnsigned
      (call $f161)))
  (func $withdrawUnexpectedBalance (export "withdrawUnexpectedBalance") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 0))
    (call $f145
      (local.get $l0))
    (call $f163
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (block $B0
      (br_if $B0
        (call $f112
          (local.get $l0)
          (i32.add
            (local.get $l0)
            (i32.const 32))))
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $f73
              (local.tee $l1
                (call $f161))
              (i64.const 0))))
        (call $f198
          (local.get $l0)
          (local.get $l1)
          (i32.const 1050064)
          (i32.const 18)))
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 64)))
      (return))
    (call $f53
      (i32.const 1050022)
      (i32.const 42))
    (unreachable))
  (func $offerStakeForSale (export "offerStakeForSale") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i64) (local $l4 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (local.set $l1
      (call $f67))
    (call $f145
      (i32.add
        (local.get $l0)
        (i32.const 8)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $l2
            (call $f146
              (i32.add
                (local.get $l0)
                (i32.const 8)))))
        (local.set $l0
          (i32.const 1050082))
        (local.set $l2
          (i32.const 40))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.eqz
            (call $f75
              (local.get $l1)
              (call $f138
                (local.get $l2)))))
        (local.set $l0
          (i32.const 1050122))
        (local.set $l2
          (i32.const 37))
        (br $B0))
      (call $f171
        (local.get $l2)
        (local.get $l1))
      (local.set $l3
        (call $env.getBlockTimestamp))
      (call $f41
        (i32.add
          (local.get $l0)
          (i32.const 40))
        (i32.const 1050477)
        (local.get $l2))
      (local.set $l2
        (i32.or
          (i32.add
            (local.get $l0)
            (i32.const 40))
          (i32.const 4)))
      (block $B3
        (br_if $B3
          (i32.ne
            (i32.load offset=40
              (local.get $l0))
            (i32.const 1)))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l0)
              (i32.const 64))
            (i32.const 8))
          (i64.load align=4
            (i32.add
              (local.get $l2)
              (i32.const 8))))
        (i64.store offset=64
          (local.get $l0)
          (i64.load align=4
            (local.get $l2)))
        (call $f54
          (i32.const 1050395)
          (i32.const 27)
          (i32.const 1050450)
          (i32.const 3)
          (i32.add
            (local.get $l0)
            (i32.const 64)))
        (unreachable))
      (i32.store
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 64))
          (i32.const 8))
        (local.tee $l1
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 8)))))
      (i64.store offset=64
        (local.get $l0)
        (local.tee $l4
          (i64.load align=4
            (local.get $l2))))
      (drop
        (call $env.int64storageStore
          (i32.wrap_i64
            (local.get $l4))
          (local.get $l1)
          (local.get $l3)))
      (call $f37
        (i32.add
          (local.get $l0)
          (i32.const 64)))
      (global.set $g0
        (i32.add
          (local.get $l0)
          (i32.const 80)))
      (return))
    (call $f53
      (local.get $l0)
      (local.get $l2))
    (unreachable))
  (func $getStakeForSale (export "getStakeForSale") (type $t19)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f175)
    (call $f59
      (i32.const 1))
    (call $f60
      (local.get $l0)
      (i32.const 0))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 24))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 24))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 16))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 8))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l0)
      (i64.load
        (local.get $l0)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l1
              (call $f146
                (i32.add
                  (local.get $l0)
                  (i32.const 32))))))
        (local.set $l1
          (call $f170
            (local.get $l1)))
        (br $B0))
      (local.set $l1
        (call $f33)))
    (call $env.bigIntFinishUnsigned
      (local.get $l1))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 64))))
  (func $purchaseStake (export "purchaseStake") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 240))))
    (call $f59
      (i32.const 1))
    (call $f60
      (local.get $l0)
      (i32.const 0))
    (local.set $l1
      (call $f70))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 24))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 24))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 16))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l0)
          (i32.const 32))
        (i32.const 8))
      (i64.load
        (i32.add
          (local.get $l0)
          (i32.const 8))))
    (i64.store offset=32
      (local.get $l0)
      (i64.load
        (local.get $l0)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (call $f116
              (local.get $l1)))
          (block $B3
            (br_if $B3
              (local.tee $l2
                (call $f146
                  (i32.add
                    (local.get $l0)
                    (i32.const 32)))))
            (local.set $l2
              (i32.const 1050159))
            (local.set $l3
              (i32.const 14))
            (br $B0))
          (block $B4
            (br_if $B4
              (i32.eqz
                (call $f75
                  (local.get $l1)
                  (local.tee $l3
                    (call $f170
                      (local.get $l2))))))
            (local.set $l2
              (i32.const 1050173))
            (local.set $l3
              (i32.const 29))
            (br $B0))
          (call $f62
            (local.get $l3)
            (local.get $l1))
          (call $f171
            (local.get $l2)
            (local.get $l3))
          (block $B5
            (br_if $B5
              (i32.eqz
                (call $f75
                  (local.get $l1)
                  (local.tee $l3
                    (call $f138
                      (local.get $l2))))))
            (local.set $l2
              (i32.const 1050202))
            (local.set $l3
              (i32.const 35))
            (br $B0))
          (call $f62
            (local.get $l3)
            (local.get $l1))
          (call $f141
            (local.get $l2)
            (local.get $l3))
          (call $f145
            (i32.add
              (local.get $l0)
              (i32.const 64)))
          (block $B6
            (br_if $B6
              (local.tee $l2
                (call $f146
                  (i32.add
                    (local.get $l0)
                    (i32.const 64)))))
            (call $f147
              (i32.add
                (local.get $l0)
                (i32.const 64))
              (local.tee $l2
                (call $f131))))
          (call $f61
            (local.tee $l3
              (call $f138
                (local.get $l2)))
            (local.get $l1))
          (call $f141
            (local.get $l2)
            (local.get $l3))
          (call $f198
            (i32.add
              (local.get $l0)
              (i32.const 32))
            (local.get $l1)
            (i32.const 1050237)
            (i32.const 17))
          (i64.store
            (local.tee $l4
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 192))
                (i32.const 24)))
            (i64.const 0))
          (i64.store
            (local.tee $l5
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 192))
                (i32.const 16)))
            (i64.const 0))
          (i64.store
            (local.tee $l6
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 192))
                (i32.const 8)))
            (i64.const 0))
          (i64.store offset=192
            (local.get $l0)
            (i64.const 0))
          (local.set $l2
            (i32.const 0))
          (block $B7
            (loop $L8
              (br_if $B7
                (i32.eq
                  (local.get $l2)
                  (i32.const 96)))
              (i64.store align=1
                (local.tee $l3
                  (i32.add
                    (i32.add
                      (local.get $l0)
                      (i32.const 96))
                    (local.get $l2)))
                (i64.load offset=192
                  (local.get $l0)))
              (i64.store align=1
                (i32.add
                  (local.get $l3)
                  (i32.const 24))
                (i64.load
                  (local.get $l4)))
              (i64.store align=1
                (i32.add
                  (local.get $l3)
                  (i32.const 16))
                (i64.load
                  (local.get $l5)))
              (i64.store align=1
                (i32.add
                  (local.get $l3)
                  (i32.const 8))
                (i64.load
                  (local.get $l6)))
              (local.set $l2
                (i32.add
                  (local.get $l2)
                  (i32.const 32)))
              (br $L8)))
          (i64.store
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 96))
              (i32.const 8))
            (i64.const 0))
          (i64.store
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 96))
              (i32.const 16))
            (i64.const 0))
          (i64.store align=1
            (i32.add
              (local.get $l0)
              (i32.const 119))
            (i64.const 0))
          (i64.store
            (i32.add
              (local.get $l0)
              (i32.const 136))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 32))
                (i32.const 8))))
          (i64.store
            (i32.add
              (local.get $l0)
              (i32.const 144))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 32))
                (i32.const 16))))
          (i64.store
            (i32.add
              (local.get $l0)
              (i32.const 152))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 32))
                (i32.const 24))))
          (i64.store
            (i32.add
              (local.get $l0)
              (i32.const 168))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 64))
                (i32.const 8))))
          (i64.store
            (i32.add
              (local.get $l0)
              (i32.const 176))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 64))
                (i32.const 16))))
          (i64.store
            (i32.add
              (local.get $l0)
              (i32.const 184))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 64))
                (i32.const 24))))
          (i64.store offset=96
            (local.get $l0)
            (i64.const 0))
          (i32.store8 offset=127
            (local.get $l0)
            (i32.const 9))
          (i64.store offset=128
            (local.get $l0)
            (i64.load offset=32
              (local.get $l0)))
          (i64.store offset=160
            (local.get $l0)
            (i64.load offset=64
              (local.get $l0)))
          (call $f47
            (i32.add
              (local.get $l0)
              (i32.const 192))
            (local.get $l1))
          (local.set $l2
            (i32.or
              (i32.add
                (local.get $l0)
                (i32.const 192))
              (i32.const 4)))
          (br_if $B1
            (i32.eq
              (i32.load offset=192
                (local.get $l0))
              (i32.const 1)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l0)
                (i32.const 224))
              (i32.const 8))
            (local.tee $l3
              (i32.load
                (i32.add
                  (local.get $l2)
                  (i32.const 8)))))
          (i64.store offset=224
            (local.get $l0)
            (local.tee $l7
              (i64.load align=4
                (local.get $l2))))
          (call $f148
            (i32.add
              (local.get $l0)
              (i32.const 96))
            (i32.const 3)
            (i32.wrap_i64
              (local.get $l7))
            (local.get $l3))
          (call $f37
            (i32.add
              (local.get $l0)
              (i32.const 224))))
        (global.set $g0
          (i32.add
            (local.get $l0)
            (i32.const 240)))
        (return))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 224))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $l2)
            (i32.const 8))))
      (i64.store offset=224
        (local.get $l0)
        (i64.load align=4
          (local.get $l2)))
      (call $f54
        (i32.const 1050521)
        (i32.const 25)
        (i32.const 1050546)
        (i32.const 4)
        (i32.add
          (local.get $l0)
          (i32.const 224)))
      (unreachable))
    (call $f53
      (local.get $l2)
      (local.get $l3))
    (unreachable))
  (func $callBack (export "callBack") (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64) (local $l9 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 112))))
    (local.set $l1
      (i32.const 0))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 88))
      (i64.load offset=1048740 align=1
        (i32.const 0)))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 80))
      (i64.load offset=1048732 align=1
        (i32.const 0)))
    (i64.store
      (i32.add
        (local.get $l0)
        (i32.const 72))
      (i64.load offset=1048724 align=1
        (i32.const 0)))
    (i64.store offset=64
      (local.get $l0)
      (i64.load offset=1048716 align=1
        (i32.const 0)))
    (call $f164
      (i32.add
        (local.get $l0)
        (i32.const 16))
      (i32.add
        (local.get $l0)
        (i32.const 64))
      (i32.const 32))
    (local.set $l2
      (i32.load offset=24
        (local.get $l0)))
    (local.set $l3
      (i32.load offset=16
        (local.get $l0)))
    (block $B0
      (block $B1
        (block $B2
          (loop $L3
            (br_if $B1
              (i32.gt_u
                (local.get $l1)
                (local.get $l2)))
            (block $B4
              (br_if $B4
                (i32.ne
                  (local.get $l2)
                  (local.get $l1)))
              (call $f215
                (local.get $l0)
                (i32.const 0)
                (local.get $l2)
                (local.get $l3)
                (local.get $l2)
                (i32.const 1051992))
              (local.set $l4
                (i32.load offset=4
                  (local.get $l0)))
              (local.set $l3
                (i32.load
                  (local.get $l0)))
              (br $B2))
            (block $B5
              (br_if $B5
                (i32.eq
                  (i32.load8_u
                    (i32.add
                      (local.get $l3)
                      (local.get $l1)))
                  (i32.const 64)))
              (local.set $l1
                (i32.add
                  (local.get $l1)
                  (i32.const 1)))
              (br $L3)))
          (call $f215
            (i32.add
              (local.get $l0)
              (i32.const 8))
            (i32.const 0)
            (local.get $l1)
            (local.get $l3)
            (local.get $l2)
            (i32.const 1052008))
          (local.set $l4
            (i32.load offset=12
              (local.get $l0)))
          (local.set $l3
            (i32.load offset=8
              (local.get $l0))))
        (local.set $l1
          (i32.add
            (local.get $l1)
            (i32.const 1)))
        (br_if $B0
          (local.get $l3)))
      (local.set $l3
        (i32.const 1051708))
      (local.set $l4
        (i32.const 0)))
    (block $B6
      (block $B7
        (block $B8
          (block $B9
            (block $B10
              (block $B11
                (block $B12
                  (block $B13
                    (block $B14
                      (block $B15
                        (block $B16
                          (block $B17
                            (block $B18
                              (block $B19
                                (block $B20
                                  (block $B21
                                    (block $B22
                                      (block $B23
                                        (block $B24
                                          (block $B25
                                            (block $B26
                                              (block $B27
                                                (block $B28
                                                  (br_if $B28
                                                    (i32.eqz
                                                      (local.tee $l5
                                                        (call $env.getNumArguments))))
                                                  (block $B29
                                                    (br_if $B29
                                                      (i32.le_u
                                                        (local.tee $l6
                                                          (i32.add
                                                            (local.get $l4)
                                                            (i32.const -22)))
                                                        (i32.const 2)))
                                                    (br_if $B6
                                                      (local.get $l4))
                                                    (br $B19))
                                                  (br_table $B27 $B25 $B26 $B27
                                                    (local.get $l6)))
                                                (call $f52
                                                  (i32.const 1051502)
                                                  (i32.const 48))
                                                (unreachable))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u
                                                    (local.get $l3))
                                                  (i32.const 97)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=1
                                                    (local.get $l3))
                                                  (i32.const 117)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=2
                                                    (local.get $l3))
                                                  (i32.const 99)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=3
                                                    (local.get $l3))
                                                  (i32.const 116)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=4
                                                    (local.get $l3))
                                                  (i32.const 105)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=5
                                                    (local.get $l3))
                                                  (i32.const 111)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=6
                                                    (local.get $l3))
                                                  (i32.const 110)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=7
                                                    (local.get $l3))
                                                  (i32.const 95)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=8
                                                    (local.get $l3))
                                                  (i32.const 115)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=9
                                                    (local.get $l3))
                                                  (i32.const 116)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=10
                                                    (local.get $l3))
                                                  (i32.const 97)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=11
                                                    (local.get $l3))
                                                  (i32.const 107)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=12
                                                    (local.get $l3))
                                                  (i32.const 101)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=13
                                                    (local.get $l3))
                                                  (i32.const 95)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=14
                                                    (local.get $l3))
                                                  (i32.const 99)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=15
                                                    (local.get $l3))
                                                  (i32.const 97)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=16
                                                    (local.get $l3))
                                                  (i32.const 108)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=17
                                                    (local.get $l3))
                                                  (i32.const 108)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=18
                                                    (local.get $l3))
                                                  (i32.const 98)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=19
                                                    (local.get $l3))
                                                  (i32.const 97)))
                                              (br_if $B6
                                                (i32.ne
                                                  (i32.load8_u offset=20
                                                    (local.get $l3))
                                                  (i32.const 99)))
                                              (br_if $B24
                                                (i32.eq
                                                  (i32.load8_u offset=21
                                                    (local.get $l3))
                                                  (i32.const 107)))
                                              (br $B6))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u
                                                  (local.get $l3))
                                                (i32.const 97)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=1
                                                  (local.get $l3))
                                                (i32.const 117)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=2
                                                  (local.get $l3))
                                                (i32.const 99)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=3
                                                  (local.get $l3))
                                                (i32.const 116)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=4
                                                  (local.get $l3))
                                                (i32.const 105)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=5
                                                  (local.get $l3))
                                                (i32.const 111)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=6
                                                  (local.get $l3))
                                                (i32.const 110)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=7
                                                  (local.get $l3))
                                                (i32.const 95)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=8
                                                  (local.get $l3))
                                                (i32.const 117)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=9
                                                  (local.get $l3))
                                                (i32.const 110)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=10
                                                  (local.get $l3))
                                                (i32.const 83)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=11
                                                  (local.get $l3))
                                                (i32.const 116)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=12
                                                  (local.get $l3))
                                                (i32.const 97)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=13
                                                  (local.get $l3))
                                                (i32.const 107)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=14
                                                  (local.get $l3))
                                                (i32.const 101)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=15
                                                  (local.get $l3))
                                                (i32.const 95)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=16
                                                  (local.get $l3))
                                                (i32.const 99)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=17
                                                  (local.get $l3))
                                                (i32.const 97)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=18
                                                  (local.get $l3))
                                                (i32.const 108)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=19
                                                  (local.get $l3))
                                                (i32.const 108)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=20
                                                  (local.get $l3))
                                                (i32.const 98)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=21
                                                  (local.get $l3))
                                                (i32.const 97)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=22
                                                  (local.get $l3))
                                                (i32.const 99)))
                                            (br_if $B6
                                              (i32.ne
                                                (i32.load8_u offset=23
                                                  (local.get $l3))
                                                (i32.const 107)))
                                            (br_if $B15
                                              (i32.lt_s
                                                (local.get $l5)
                                                (i32.const 1)))
                                            (br_if $B22
                                              (i64.eqz
                                                (call $f66)))
                                            (br_if $B14
                                              (i32.le_s
                                                (local.get $l5)
                                                (i32.const 1)))
                                            (call $f57
                                              (i32.add
                                                (local.get $l0)
                                                (i32.const 64))
                                              (i32.const 1))
                                            (br_if $B22
                                              (i32.eqz
                                                (local.tee $l7
                                                  (i32.load offset=64
                                                    (local.get $l0)))))
                                            (local.set $l8
                                              (i64.load offset=68 align=4
                                                (local.get $l0)))
                                            (call $f151
                                              (i32.const 2))
                                            (i64.store
                                              (local.tee $l5
                                                (i32.add
                                                  (i32.add
                                                    (local.get $l0)
                                                    (i32.const 64))
                                                  (i32.const 24)))
                                              (i64.const 0))
                                            (i64.store
                                              (local.tee $l6
                                                (i32.add
                                                  (i32.add
                                                    (local.get $l0)
                                                    (i32.const 64))
                                                  (i32.const 16)))
                                              (i64.const 0))
                                            (i64.store
                                              (local.tee $l9
                                                (i32.add
                                                  (i32.add
                                                    (local.get $l0)
                                                    (i32.const 64))
                                                  (i32.const 8)))
                                              (i64.const 0))
                                            (i64.store offset=64
                                              (local.get $l0)
                                              (i64.const 0))
                                            (local.set $l3
                                              (i32.const 0))
                                            (loop $L30
                                              (br_if $B23
                                                (i32.eq
                                                  (local.get $l3)
                                                  (i32.const 32)))
                                              (i64.store align=1
                                                (local.tee $l4
                                                  (i32.add
                                                    (i32.add
                                                      (local.get $l0)
                                                      (i32.const 32))
                                                    (local.get $l3)))
                                                (i64.load offset=64
                                                  (local.get $l0)))
                                              (i64.store align=1
                                                (i32.add
                                                  (local.get $l4)
                                                  (i32.const 24))
                                                (i64.load
                                                  (local.get $l5)))
                                              (i64.store align=1
                                                (i32.add
                                                  (local.get $l4)
                                                  (i32.const 16))
                                                (i64.load
                                                  (local.get $l6)))
                                              (i64.store align=1
                                                (i32.add
                                                  (local.get $l4)
                                                  (i32.const 8))
                                                (i64.load
                                                  (local.get $l9)))
                                              (local.set $l3
                                                (i32.add
                                                  (local.get $l3)
                                                  (i32.const 32)))
                                              (br $L30)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u
                                                (local.get $l3))
                                              (i32.const 97)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=1
                                                (local.get $l3))
                                              (i32.const 117)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=2
                                                (local.get $l3))
                                              (i32.const 99)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=3
                                                (local.get $l3))
                                              (i32.const 116)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=4
                                                (local.get $l3))
                                              (i32.const 105)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=5
                                                (local.get $l3))
                                              (i32.const 111)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=6
                                                (local.get $l3))
                                              (i32.const 110)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=7
                                                (local.get $l3))
                                              (i32.const 95)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=8
                                                (local.get $l3))
                                              (i32.const 117)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=9
                                                (local.get $l3))
                                              (i32.const 110)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=10
                                                (local.get $l3))
                                              (i32.const 66)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=11
                                                (local.get $l3))
                                              (i32.const 111)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=12
                                                (local.get $l3))
                                              (i32.const 110)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=13
                                                (local.get $l3))
                                              (i32.const 100)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=14
                                                (local.get $l3))
                                              (i32.const 95)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=15
                                                (local.get $l3))
                                              (i32.const 99)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=16
                                                (local.get $l3))
                                              (i32.const 97)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=17
                                                (local.get $l3))
                                              (i32.const 108)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=18
                                                (local.get $l3))
                                              (i32.const 108)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=19
                                                (local.get $l3))
                                              (i32.const 98)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=20
                                                (local.get $l3))
                                              (i32.const 97)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=21
                                                (local.get $l3))
                                              (i32.const 99)))
                                          (br_if $B6
                                            (i32.ne
                                              (i32.load8_u offset=22
                                                (local.get $l3))
                                              (i32.const 107)))
                                          (br_if $B12
                                            (i32.lt_s
                                              (local.get $l5)
                                              (i32.const 1)))
                                          (br_if $B20
                                            (i64.eqz
                                              (call $f66)))
                                          (br_if $B11
                                            (i32.le_s
                                              (local.get $l5)
                                              (i32.const 1)))
                                          (call $f57
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 64))
                                            (i32.const 1))
                                          (br_if $B20
                                            (i32.eqz
                                              (local.tee $l7
                                                (i32.load offset=64
                                                  (local.get $l0)))))
                                          (local.set $l8
                                            (i64.load offset=68 align=4
                                              (local.get $l0)))
                                          (call $f151
                                            (i32.const 4))
                                          (i64.store
                                            (local.tee $l5
                                              (i32.add
                                                (i32.add
                                                  (local.get $l0)
                                                  (i32.const 64))
                                                (i32.const 24)))
                                            (i64.const 0))
                                          (i64.store
                                            (local.tee $l6
                                              (i32.add
                                                (i32.add
                                                  (local.get $l0)
                                                  (i32.const 64))
                                                (i32.const 16)))
                                            (i64.const 0))
                                          (i64.store
                                            (local.tee $l9
                                              (i32.add
                                                (i32.add
                                                  (local.get $l0)
                                                  (i32.const 64))
                                                (i32.const 8)))
                                            (i64.const 0))
                                          (i64.store offset=64
                                            (local.get $l0)
                                            (i64.const 0))
                                          (local.set $l3
                                            (i32.const 0))
                                          (loop $L31
                                            (br_if $B21
                                              (i32.eq
                                                (local.get $l3)
                                                (i32.const 32)))
                                            (i64.store align=1
                                              (local.tee $l4
                                                (i32.add
                                                  (i32.add
                                                    (local.get $l0)
                                                    (i32.const 32))
                                                  (local.get $l3)))
                                              (i64.load offset=64
                                                (local.get $l0)))
                                            (i64.store align=1
                                              (i32.add
                                                (local.get $l4)
                                                (i32.const 24))
                                              (i64.load
                                                (local.get $l5)))
                                            (i64.store align=1
                                              (i32.add
                                                (local.get $l4)
                                                (i32.const 16))
                                              (i64.load
                                                (local.get $l6)))
                                            (i64.store align=1
                                              (i32.add
                                                (local.get $l4)
                                                (i32.const 8))
                                              (i64.load
                                                (local.get $l9)))
                                            (local.set $l3
                                              (i32.add
                                                (local.get $l3)
                                                (i32.const 32)))
                                            (br $L31)))
                                        (br_if $B18
                                          (i32.lt_s
                                            (local.get $l5)
                                            (i32.const 1)))
                                        (block $B32
                                          (br_if $B32
                                            (i64.eqz
                                              (call $f66)))
                                          (br_if $B17
                                            (i32.le_s
                                              (local.get $l5)
                                              (i32.const 1)))
                                          (call $f57
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 64))
                                            (i32.const 1))
                                          (br_if $B32
                                            (i32.eqz
                                              (local.tee $l7
                                                (i32.load offset=64
                                                  (local.get $l0)))))
                                          (local.set $l8
                                            (i64.load offset=68 align=4
                                              (local.get $l0)))
                                          (local.set $l3
                                            (i32.const 0))
                                          (call $f151
                                            (i32.const 0))
                                          (i64.store
                                            (local.tee $l5
                                              (i32.add
                                                (i32.add
                                                  (local.get $l0)
                                                  (i32.const 64))
                                                (i32.const 24)))
                                            (i64.const 0))
                                          (i64.store
                                            (local.tee $l6
                                              (i32.add
                                                (i32.add
                                                  (local.get $l0)
                                                  (i32.const 64))
                                                (i32.const 16)))
                                            (i64.const 0))
                                          (i64.store
                                            (local.tee $l9
                                              (i32.add
                                                (i32.add
                                                  (local.get $l0)
                                                  (i32.const 64))
                                                (i32.const 8)))
                                            (i64.const 0))
                                          (i64.store offset=64
                                            (local.get $l0)
                                            (i64.const 0))
                                          (block $B33
                                            (loop $L34
                                              (br_if $B33
                                                (i32.eq
                                                  (local.get $l3)
                                                  (i32.const 32)))
                                              (i64.store align=1
                                                (local.tee $l4
                                                  (i32.add
                                                    (i32.add
                                                      (local.get $l0)
                                                      (i32.const 32))
                                                    (local.get $l3)))
                                                (i64.load offset=64
                                                  (local.get $l0)))
                                              (i64.store align=1
                                                (i32.add
                                                  (local.get $l4)
                                                  (i32.const 24))
                                                (i64.load
                                                  (local.get $l5)))
                                              (i64.store align=1
                                                (i32.add
                                                  (local.get $l4)
                                                  (i32.const 16))
                                                (i64.load
                                                  (local.get $l6)))
                                              (i64.store align=1
                                                (i32.add
                                                  (local.get $l4)
                                                  (i32.const 8))
                                                (i64.load
                                                  (local.get $l9)))
                                              (local.set $l3
                                                (i32.add
                                                  (local.get $l3)
                                                  (i32.const 32)))
                                              (br $L34)))
                                          (i64.store
                                            (i32.add
                                              (i32.add
                                                (local.get $l0)
                                                (i32.const 32))
                                              (i32.const 8))
                                            (i64.const 0))
                                          (i64.store
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 48))
                                            (i64.const 0))
                                          (i64.store align=1
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 55))
                                            (i64.const 0))
                                          (i64.store offset=32
                                            (local.get $l0)
                                            (i64.const 0))
                                          (i32.store8 offset=63
                                            (local.get $l0)
                                            (i32.const 4))
                                          (i64.store offset=100 align=4
                                            (local.get $l0)
                                            (local.get $l8))
                                          (i32.store offset=96
                                            (local.get $l0)
                                            (local.get $l7))
                                          (call $f38
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 64))
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 96)))
                                          (local.set $l3
                                            (i32.or
                                              (i32.add
                                                (local.get $l0)
                                                (i32.const 64))
                                              (i32.const 4)))
                                          (br_if $B16
                                            (i32.eq
                                              (i32.load offset=64
                                                (local.get $l0))
                                              (i32.const 1)))
                                          (i32.store
                                            (i32.add
                                              (i32.add
                                                (local.get $l0)
                                                (i32.const 96))
                                              (i32.const 8))
                                            (local.tee $l4
                                              (i32.load
                                                (i32.add
                                                  (local.get $l3)
                                                  (i32.const 8)))))
                                          (i64.store offset=96
                                            (local.get $l0)
                                            (local.tee $l8
                                              (i64.load align=4
                                                (local.get $l3))))
                                          (call $f148
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 32))
                                            (i32.const 1)
                                            (i32.wrap_i64
                                              (local.get $l8))
                                            (local.get $l4))
                                          (call $f37
                                            (i32.add
                                              (local.get $l0)
                                              (i32.const 96)))
                                          (br $B19))
                                        (call $f151
                                          (i32.const 2))
                                        (call $f115
                                          (local.tee $l3
                                            (call $f162))
                                          (call $f128))
                                        (call $f172
                                          (local.get $l3))
                                        (call $f173)
                                        (br $B19))
                                      (i64.store
                                        (i32.add
                                          (i32.add
                                            (local.get $l0)
                                            (i32.const 32))
                                          (i32.const 8))
                                        (i64.const 0))
                                      (i64.store
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 48))
                                        (i64.const 0))
                                      (i64.store align=1
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 55))
                                        (i64.const 0))
                                      (i64.store offset=32
                                        (local.get $l0)
                                        (i64.const 0))
                                      (i32.store8 offset=63
                                        (local.get $l0)
                                        (i32.const 6))
                                      (i64.store offset=100 align=4
                                        (local.get $l0)
                                        (local.get $l8))
                                      (i32.store offset=96
                                        (local.get $l0)
                                        (local.get $l7))
                                      (call $f38
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 64))
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 96)))
                                      (local.set $l3
                                        (i32.or
                                          (i32.add
                                            (local.get $l0)
                                            (i32.const 64))
                                          (i32.const 4)))
                                      (br_if $B13
                                        (i32.eq
                                          (i32.load offset=64
                                            (local.get $l0))
                                          (i32.const 1)))
                                      (i32.store
                                        (i32.add
                                          (i32.add
                                            (local.get $l0)
                                            (i32.const 96))
                                          (i32.const 8))
                                        (local.tee $l4
                                          (i32.load
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 8)))))
                                      (i64.store offset=96
                                        (local.get $l0)
                                        (local.tee $l8
                                          (i64.load align=4
                                            (local.get $l3))))
                                      (call $f148
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 32))
                                        (i32.const 1)
                                        (i32.wrap_i64
                                          (local.get $l8))
                                        (local.get $l4))
                                      (call $f37
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 96)))
                                      (br $B19))
                                    (call $f151
                                      (i32.const 4))
                                    (i64.store
                                      (local.tee $l5
                                        (i32.add
                                          (i32.add
                                            (local.get $l0)
                                            (i32.const 64))
                                          (i32.const 24)))
                                      (i64.const 0))
                                    (i64.store
                                      (local.tee $l6
                                        (i32.add
                                          (i32.add
                                            (local.get $l0)
                                            (i32.const 64))
                                          (i32.const 16)))
                                      (i64.const 0))
                                    (i64.store
                                      (local.tee $l9
                                        (i32.add
                                          (i32.add
                                            (local.get $l0)
                                            (i32.const 64))
                                          (i32.const 8)))
                                      (i64.const 0))
                                    (i64.store offset=64
                                      (local.get $l0)
                                      (i64.const 0))
                                    (local.set $l3
                                      (i32.const 0))
                                    (block $B35
                                      (loop $L36
                                        (br_if $B35
                                          (i32.eq
                                            (local.get $l3)
                                            (i32.const 32)))
                                        (i64.store align=1
                                          (local.tee $l4
                                            (i32.add
                                              (i32.add
                                                (local.get $l0)
                                                (i32.const 32))
                                              (local.get $l3)))
                                          (i64.load offset=64
                                            (local.get $l0)))
                                        (i64.store align=1
                                          (i32.add
                                            (local.get $l4)
                                            (i32.const 24))
                                          (i64.load
                                            (local.get $l5)))
                                        (i64.store align=1
                                          (i32.add
                                            (local.get $l4)
                                            (i32.const 16))
                                          (i64.load
                                            (local.get $l6)))
                                        (i64.store align=1
                                          (i32.add
                                            (local.get $l4)
                                            (i32.const 8))
                                          (i64.load
                                            (local.get $l9)))
                                        (local.set $l3
                                          (i32.add
                                            (local.get $l3)
                                            (i32.const 32)))
                                        (br $L36)))
                                    (i64.store
                                      (i32.add
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 32))
                                        (i32.const 8))
                                      (i64.const 0))
                                    (i64.store
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 48))
                                      (i64.const 0))
                                    (i64.store align=1
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 55))
                                      (i64.const 0))
                                    (i64.store offset=32
                                      (local.get $l0)
                                      (i64.const 0))
                                    (i32.store8 offset=63
                                      (local.get $l0)
                                      (i32.const 5))
                                    (call $f46
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 64)))
                                    (local.set $l3
                                      (i32.or
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 64))
                                        (i32.const 4)))
                                    (br_if $B7
                                      (i32.eq
                                        (i32.load offset=64
                                          (local.get $l0))
                                        (i32.const 1)))
                                    (i32.store
                                      (i32.add
                                        (i32.add
                                          (local.get $l0)
                                          (i32.const 96))
                                        (i32.const 8))
                                      (local.tee $l4
                                        (i32.load
                                          (i32.add
                                            (local.get $l3)
                                            (i32.const 8)))))
                                    (i64.store offset=96
                                      (local.get $l0)
                                      (local.tee $l8
                                        (i64.load align=4
                                          (local.get $l3))))
                                    (call $f148
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 32))
                                      (i32.const 1)
                                      (i32.wrap_i64
                                        (local.get $l8))
                                      (local.get $l4))
                                    (call $f37
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 96)))
                                    (br $B19))
                                  (i64.store
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 48))
                                    (i64.const 0))
                                  (i64.store align=1
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 55))
                                    (i64.const 0))
                                  (i32.store8 offset=63
                                    (local.get $l0)
                                    (i32.const 8))
                                  (i64.store
                                    (i32.add
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 32))
                                      (i32.const 8))
                                    (i64.const 0))
                                  (i64.store offset=32
                                    (local.get $l0)
                                    (i64.const 0))
                                  (i64.store offset=100 align=4
                                    (local.get $l0)
                                    (local.get $l8))
                                  (i32.store offset=96
                                    (local.get $l0)
                                    (local.get $l7))
                                  (call $f38
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 64))
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 96)))
                                  (local.set $l3
                                    (i32.or
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 64))
                                      (i32.const 4)))
                                  (br_if $B10
                                    (i32.eq
                                      (i32.load offset=64
                                        (local.get $l0))
                                      (i32.const 1)))
                                  (i32.store
                                    (i32.add
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 96))
                                      (i32.const 8))
                                    (local.tee $l4
                                      (i32.load
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 8)))))
                                  (i64.store offset=96
                                    (local.get $l0)
                                    (local.tee $l8
                                      (i64.load align=4
                                        (local.get $l3))))
                                  (call $f148
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 32))
                                    (i32.const 1)
                                    (i32.wrap_i64
                                      (local.get $l8))
                                    (local.get $l4))
                                  (call $f37
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 96)))
                                  (br $B19))
                                (local.set $l3
                                  (i32.const 0))
                                (call $f151
                                  (i32.const 0))
                                (call $f114
                                  (local.tee $l4
                                    (call $f162))
                                  (call $f128))
                                (call $f172
                                  (local.get $l4))
                                (i64.store
                                  (local.tee $l5
                                    (i32.add
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 64))
                                      (i32.const 24)))
                                  (i64.const 0))
                                (i64.store
                                  (local.tee $l6
                                    (i32.add
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 64))
                                      (i32.const 16)))
                                  (i64.const 0))
                                (i64.store
                                  (local.tee $l9
                                    (i32.add
                                      (i32.add
                                        (local.get $l0)
                                        (i32.const 64))
                                      (i32.const 8)))
                                  (i64.const 0))
                                (i64.store offset=64
                                  (local.get $l0)
                                  (i64.const 0))
                                (block $B37
                                  (loop $L38
                                    (br_if $B37
                                      (i32.eq
                                        (local.get $l3)
                                        (i32.const 32)))
                                    (i64.store align=1
                                      (local.tee $l4
                                        (i32.add
                                          (i32.add
                                            (local.get $l0)
                                            (i32.const 32))
                                          (local.get $l3)))
                                      (i64.load offset=64
                                        (local.get $l0)))
                                    (i64.store align=1
                                      (i32.add
                                        (local.get $l4)
                                        (i32.const 24))
                                      (i64.load
                                        (local.get $l5)))
                                    (i64.store align=1
                                      (i32.add
                                        (local.get $l4)
                                        (i32.const 16))
                                      (i64.load
                                        (local.get $l6)))
                                    (i64.store align=1
                                      (i32.add
                                        (local.get $l4)
                                        (i32.const 8))
                                      (i64.load
                                        (local.get $l9)))
                                    (local.set $l3
                                      (i32.add
                                        (local.get $l3)
                                        (i32.const 32)))
                                    (br $L38)))
                                (i64.store
                                  (i32.add
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 32))
                                    (i32.const 8))
                                  (i64.const 0))
                                (i64.store
                                  (i32.add
                                    (local.get $l0)
                                    (i32.const 48))
                                  (i64.const 0))
                                (i64.store align=1
                                  (i32.add
                                    (local.get $l0)
                                    (i32.const 55))
                                  (i64.const 0))
                                (i64.store offset=32
                                  (local.get $l0)
                                  (i64.const 0))
                                (i32.store8 offset=63
                                  (local.get $l0)
                                  (i32.const 7))
                                (call $f46
                                  (i32.add
                                    (local.get $l0)
                                    (i32.const 64)))
                                (local.set $l3
                                  (i32.or
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 64))
                                    (i32.const 4)))
                                (br_if $B8
                                  (i32.eq
                                    (i32.load offset=64
                                      (local.get $l0))
                                    (i32.const 1)))
                                (i32.store
                                  (i32.add
                                    (i32.add
                                      (local.get $l0)
                                      (i32.const 96))
                                    (i32.const 8))
                                  (local.tee $l4
                                    (i32.load
                                      (i32.add
                                        (local.get $l3)
                                        (i32.const 8)))))
                                (i64.store offset=96
                                  (local.get $l0)
                                  (local.tee $l8
                                    (i64.load align=4
                                      (local.get $l3))))
                                (call $f148
                                  (i32.add
                                    (local.get $l0)
                                    (i32.const 32))
                                  (i32.const 1)
                                  (i32.wrap_i64
                                    (local.get $l8))
                                  (local.get $l4))
                                (call $f37
                                  (i32.add
                                    (local.get $l0)
                                    (i32.const 96))))
                              (br_if $B9
                                (i32.le_u
                                  (local.get $l1)
                                  (local.get $l2)))
                              (i64.store
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 88))
                                (i64.load offset=1048740 align=1
                                  (i32.const 0)))
                              (i64.store
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 80))
                                (i64.load offset=1048732 align=1
                                  (i32.const 0)))
                              (i64.store
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 72))
                                (i64.load offset=1048724 align=1
                                  (i32.const 0)))
                              (i64.store offset=64
                                (local.get $l0)
                                (i64.load offset=1048716 align=1
                                  (i32.const 0)))
                              (drop
                                (call $env.storageStore
                                  (i32.add
                                    (local.get $l0)
                                    (i32.const 64))
                                  (i32.const 32)
                                  (i32.const 1051708)
                                  (i32.const 0)))
                              (call $f37
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 16)))
                              (global.set $g0
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 112)))
                              (return))
                            (call $f52
                              (i32.const 1051477)
                              (i32.const 25))
                            (unreachable))
                          (call $f52
                            (i32.const 1051477)
                            (i32.const 25))
                          (unreachable))
                        (i64.store
                          (i32.add
                            (i32.add
                              (local.get $l0)
                              (i32.const 96))
                            (i32.const 8))
                          (i64.load align=4
                            (i32.add
                              (local.get $l3)
                              (i32.const 8))))
                        (i64.store offset=96
                          (local.get $l0)
                          (i64.load align=4
                            (local.get $l3)))
                        (call $f54
                          (i32.const 1050521)
                          (i32.const 25)
                          (i32.const 1050546)
                          (i32.const 4)
                          (i32.add
                            (local.get $l0)
                            (i32.const 96)))
                        (unreachable))
                      (call $f52
                        (i32.const 1051477)
                        (i32.const 25))
                      (unreachable))
                    (call $f52
                      (i32.const 1051477)
                      (i32.const 25))
                    (unreachable))
                  (i64.store
                    (i32.add
                      (i32.add
                        (local.get $l0)
                        (i32.const 96))
                      (i32.const 8))
                    (i64.load align=4
                      (i32.add
                        (local.get $l3)
                        (i32.const 8))))
                  (i64.store offset=96
                    (local.get $l0)
                    (i64.load align=4
                      (local.get $l3)))
                  (call $f54
                    (i32.const 1050521)
                    (i32.const 25)
                    (i32.const 1050546)
                    (i32.const 4)
                    (i32.add
                      (local.get $l0)
                      (i32.const 96)))
                  (unreachable))
                (call $f52
                  (i32.const 1051477)
                  (i32.const 25))
                (unreachable))
              (call $f52
                (i32.const 1051477)
                (i32.const 25))
              (unreachable))
            (i64.store
              (i32.add
                (i32.add
                  (local.get $l0)
                  (i32.const 96))
                (i32.const 8))
              (i64.load align=4
                (i32.add
                  (local.get $l3)
                  (i32.const 8))))
            (i64.store offset=96
              (local.get $l0)
              (i64.load align=4
                (local.get $l3)))
            (call $f54
              (i32.const 1050521)
              (i32.const 25)
              (i32.const 1050546)
              (i32.const 4)
              (i32.add
                (local.get $l0)
                (i32.const 96)))
            (unreachable))
          (call $f52
            (i32.const 1051550)
            (i32.const 36))
          (unreachable))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l0)
              (i32.const 96))
            (i32.const 8))
          (i64.load align=4
            (i32.add
              (local.get $l3)
              (i32.const 8))))
        (i64.store offset=96
          (local.get $l0)
          (i64.load align=4
            (local.get $l3)))
        (call $f54
          (i32.const 1050521)
          (i32.const 25)
          (i32.const 1050546)
          (i32.const 4)
          (i32.add
            (local.get $l0)
            (i32.const 96)))
        (unreachable))
      (i64.store
        (i32.add
          (i32.add
            (local.get $l0)
            (i32.const 96))
          (i32.const 8))
        (i64.load align=4
          (i32.add
            (local.get $l3)
            (i32.const 8))))
      (i64.store offset=96
        (local.get $l0)
        (i64.load align=4
          (local.get $l3)))
      (call $f54
        (i32.const 1050521)
        (i32.const 25)
        (i32.const 1050546)
        (i32.const 4)
        (i32.add
          (local.get $l0)
          (i32.const 96)))
      (unreachable))
    (call $f103
      (i32.const 1050576)
      (i32.const 55)
      (i32.const 1050560))
    (unreachable))
  (func $f215 (type $t20) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_u
            (local.get $p2)
            (local.get $p1)))
        (br_if $B0
          (i32.ge_u
            (local.get $p4)
            (local.get $p2)))
        (call $f232
          (local.get $p2)
          (local.get $p4)
          (local.get $p5))
        (unreachable))
      (call $f233
        (local.get $p1)
        (local.get $p2)
        (local.get $p5))
      (unreachable))
    (i32.store offset=4
      (local.get $p0)
      (i32.sub
        (local.get $p2)
        (local.get $p1)))
    (i32.store
      (local.get $p0)
      (i32.add
        (local.get $p3)
        (local.get $p1))))
  (func $f216 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call $f256
      (local.get $p0)
      (local.get $p1)))
  (func $f217 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f257
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)))
  (func $f218 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l4
            (call $f256
              (local.get $p3)
              (local.get $p2)))))
      (drop
        (call $f271
          (local.get $l4)
          (local.get $p0)
          (select
            (local.get $p3)
            (local.get $p1)
            (i32.gt_u
              (local.get $p1)
              (local.get $p3)))))
      (call $f257
        (local.get $p0)
        (local.get $p1)
        (local.get $p2)))
    (local.get $l4))
  (func $f219 (type $t4) (param $p0 i32) (result i32)
    (call $f220
      (local.get $p0)))
  (func $f220 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (call $f256
              (local.get $p0)
              (i32.const 1)))))
      (drop
        (call $f270
          (local.get $l1)
          (i32.const 0)
          (local.get $p0))))
    (local.get $l1))
  (func $f221 (type $t19)
    (call $f249
      (i32.const 1052780)
      (i32.const 16))
    (unreachable))
  (func $f222 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $l5
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.ge_u
          (i32.sub
            (local.tee $l6
              (i32.load
                (i32.add
                  (local.get $p1)
                  (i32.const 4))))
            (local.get $p2))
          (local.get $p3)))
      (block $B1
        (br_if $B1
          (i32.ge_u
            (local.tee $p3
              (i32.add
                (local.get $p2)
                (local.get $p3)))
            (local.get $p2)))
        (i32.store offset=4
          (local.get $p0)
          (local.get $p3))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (i32.const 0))
        (local.set $l5
          (i32.const 1))
        (br $B0))
      (local.set $l5
        (i32.const 1))
      (block $B2
        (block $B3
          (block $B4
            (br_if $B4
              (i32.lt_s
                (local.tee $p2
                  (select
                    (local.tee $p2
                      (i32.shl
                        (local.get $l6)
                        (i32.const 1)))
                    (local.get $p3)
                    (i32.gt_u
                      (local.get $p2)
                      (local.get $p3))))
                (i32.const 0)))
            (block $B5
              (br_if $B5
                (local.get $l6))
              (local.set $l5
                (i32.const 1))
              (i32.store offset=12
                (local.get $l4)
                (i32.const 1))
              (i32.store offset=8
                (local.get $l4)
                (local.get $p2))
              (br_if $B2
                (i32.eqz
                  (local.get $p2)))
              (local.set $l5
                (call $f109
                  (local.get $p2)
                  (i32.const 1)))
              (br $B3))
            (local.set $p3
              (i32.load
                (local.get $p1)))
            (i32.store offset=12
              (local.get $l4)
              (local.tee $l5
                (i32.ne
                  (local.get $l6)
                  (i32.const 0))))
            (i32.store offset=8
              (local.get $l4)
              (local.get $l6))
            (block $B6
              (br_if $B6
                (i32.eqz
                  (local.get $p2)))
              (local.set $l5
                (call $f111
                  (local.get $p3)
                  (local.get $l6)
                  (local.get $l5)
                  (local.get $p2)))
              (br $B3))
            (call $f110
              (local.get $p3)
              (local.get $l6)
              (local.get $l5))
            (br $B2))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 8))
            (i32.const 0))
          (br $B0))
        (br_if $B2
          (local.get $l5))
        (call $f97)
        (unreachable))
      (i32.store
        (local.get $p1)
        (local.get $l5))
      (i32.store
        (i32.add
          (local.get $p1)
          (i32.const 4))
        (local.get $p2))
      (local.set $l5
        (i32.const 0)))
    (i32.store
      (local.get $p0)
      (local.get $l5))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $f223 (type $t2) (param $p0 i32))
  (func $f224 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f222
      (local.get $l3)
      (local.tee $p0
        (i32.load
          (local.get $p0)))
      (i32.load
        (local.tee $l4
          (i32.add
            (local.get $p0)
            (i32.const 8))))
      (local.get $p2))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (i32.load
              (local.get $l3))
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (i32.load
              (i32.add
                (local.get $l3)
                (i32.const 8)))))
        (call $f103
          (i32.const 1051933)
          (i32.const 40)
          (i32.const 1050772))
        (unreachable))
      (i32.store
        (local.get $l4)
        (i32.add
          (local.tee $l5
            (i32.load
              (local.get $l4)))
          (local.get $p2)))
      (drop
        (call $f271
          (i32.add
            (local.get $l5)
            (i32.load
              (local.get $p0)))
          (local.get $p1)
          (local.get $p2)))
      (global.set $g0
        (i32.add
          (local.get $l3)
          (i32.const 16)))
      (return
        (i32.const 0)))
    (call $f104)
    (unreachable))
  (func $f225 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.lt_u
                  (local.get $p1)
                  (i32.const 128)))
              (i32.store offset=12
                (local.get $l2)
                (i32.const 0))
              (br_if $B3
                (i32.lt_u
                  (local.get $p1)
                  (i32.const 2048)))
              (local.set $l3
                (i32.add
                  (local.get $l2)
                  (i32.const 12)))
              (block $B5
                (br_if $B5
                  (i32.ge_u
                    (local.get $p1)
                    (i32.const 65536)))
                (i32.store8 offset=14
                  (local.get $l2)
                  (i32.or
                    (i32.and
                      (local.get $p1)
                      (i32.const 63))
                    (i32.const 128)))
                (i32.store8 offset=13
                  (local.get $l2)
                  (i32.or
                    (i32.and
                      (i32.shr_u
                        (local.get $p1)
                        (i32.const 6))
                      (i32.const 63))
                    (i32.const 128)))
                (i32.store8 offset=12
                  (local.get $l2)
                  (i32.or
                    (i32.and
                      (i32.shr_u
                        (local.get $p1)
                        (i32.const 12))
                      (i32.const 15))
                    (i32.const 224)))
                (local.set $p1
                  (i32.const 3))
                (br $B2))
              (i32.store8 offset=15
                (local.get $l2)
                (i32.or
                  (i32.and
                    (local.get $p1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=12
                (local.get $l2)
                (i32.or
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 18))
                  (i32.const 240)))
              (i32.store8 offset=14
                (local.get $l2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get $p1)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=13
                (local.get $l2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get $p1)
                      (i32.const 12))
                    (i32.const 63))
                  (i32.const 128)))
              (local.set $p1
                (i32.const 4))
              (br $B2))
            (block $B6
              (br_if $B6
                (i32.ne
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $p0)))
                  (i32.load
                    (i32.add
                      (local.get $p0)
                      (i32.const 4)))))
              (call $f222
                (i32.add
                  (local.get $l2)
                  (i32.const 16))
                (local.get $p0)
                (local.get $l4)
                (i32.const 1))
              (block $B7
                (br_if $B7
                  (i32.ne
                    (i32.load offset=16
                      (local.get $l2))
                    (i32.const 1)))
                (br_if $B0
                  (i32.eqz
                    (i32.load
                      (i32.add
                        (local.get $l2)
                        (i32.const 24)))))
                (call $f103
                  (i32.const 1051933)
                  (i32.const 40)
                  (i32.const 1050772))
                (unreachable))
              (local.set $l4
                (i32.load offset=8
                  (local.get $p0))))
            (i32.store8
              (i32.add
                (i32.load
                  (local.get $p0))
                (local.get $l4))
              (local.get $p1))
            (i32.store offset=8
              (local.get $p0)
              (i32.add
                (i32.load offset=8
                  (local.get $p0))
                (i32.const 1)))
            (br $B1))
          (i32.store8 offset=13
            (local.get $l2)
            (i32.or
              (i32.and
                (local.get $p1)
                (i32.const 63))
              (i32.const 128)))
          (i32.store8 offset=12
            (local.get $l2)
            (i32.or
              (i32.and
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 6))
                (i32.const 31))
              (i32.const 192)))
          (local.set $l3
            (i32.add
              (local.get $l2)
              (i32.const 12)))
          (local.set $p1
            (i32.const 2)))
        (call $f222
          (i32.add
            (local.get $l2)
            (i32.const 16))
          (local.get $p0)
          (i32.load
            (local.tee $l4
              (i32.add
                (local.get $p0)
                (i32.const 8))))
          (local.get $p1))
        (block $B8
          (br_if $B8
            (i32.ne
              (i32.load offset=16
                (local.get $l2))
              (i32.const 1)))
          (br_if $B0
            (i32.eqz
              (i32.load
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (i32.const 16))
                  (i32.const 8)))))
          (call $f103
            (i32.const 1051933)
            (i32.const 40)
            (i32.const 1050772))
          (unreachable))
        (i32.store
          (local.get $l4)
          (i32.add
            (local.tee $l5
              (i32.load
                (local.get $l4)))
            (local.get $p1)))
        (drop
          (call $f271
            (i32.add
              (local.get $l5)
              (i32.load
                (local.get $p0)))
            (local.get $l3)
            (local.get $p1))))
      (global.set $g0
        (i32.add
          (local.get $l2)
          (i32.const 32)))
      (return
        (i32.const 0)))
    (call $f104)
    (unreachable))
  (func $f226 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=4
      (local.get $l2)
      (i32.load
        (local.get $p0)))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (local.set $p1
      (call $f77
        (i32.add
          (local.get $l2)
          (i32.const 4))
        (i32.const 1050788)
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $p1))
  (func $f227 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (drop
      (i32.load
        (local.get $p0)))
    (loop $L0 (result i32)
      (br $L0)))
  (func $f228 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $f230
      (local.get $p0))
    (unreachable))
  (func $f229 (type $t21) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (local.set $l7
      (i32.add
        (local.tee $l6
          (i32.and
            (local.tee $l5
              (i32.load
                (local.get $p0)))
            (i32.const 1)))
        (local.get $p4)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.and
            (local.get $l5)
            (i32.const 4)))
        (local.set $p1
          (i32.const 0))
        (br $B0))
      (local.set $l8
        (i32.const 0))
      (block $B2
        (br_if $B2
          (i32.eqz
            (local.get $p2)))
        (local.set $l9
          (local.get $p2))
        (local.set $l10
          (local.get $p1))
        (loop $L3
          (local.set $l8
            (i32.add
              (local.get $l8)
              (i32.eq
                (i32.and
                  (i32.load8_u
                    (local.get $l10))
                  (i32.const 192))
                (i32.const 128))))
          (local.set $l10
            (i32.add
              (local.get $l10)
              (i32.const 1)))
          (br_if $L3
            (local.tee $l9
              (i32.add
                (local.get $l9)
                (i32.const -1))))))
      (local.set $l7
        (i32.sub
          (i32.add
            (local.get $l7)
            (local.get $p2))
          (local.get $l8))))
    (local.set $l8
      (select
        (i32.const 43)
        (i32.const 1114112)
        (local.get $l6)))
    (block $B4
      (block $B5
        (br_if $B5
          (i32.eq
            (i32.load offset=8
              (local.get $p0))
            (i32.const 1)))
        (local.set $l10
          (i32.const 1))
        (br_if $B4
          (call $f231
            (local.get $p0)
            (local.get $l8)
            (local.get $p1)
            (local.get $p2)))
        (local.set $l10
          (call_indirect $T0 (type $t0)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p3)
            (local.get $p4)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 28))))))
        (br $B4))
      (block $B6
        (br_if $B6
          (i32.gt_u
            (local.tee $l9
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 12))))
            (local.get $l7)))
        (local.set $l10
          (i32.const 1))
        (br_if $B4
          (call $f231
            (local.get $p0)
            (local.get $l8)
            (local.get $p1)
            (local.get $p2)))
        (return
          (call_indirect $T0 (type $t0)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p3)
            (local.get $p4)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 28)))))))
      (block $B7
        (block $B8
          (br_if $B8
            (i32.and
              (local.get $l5)
              (i32.const 8)))
          (local.set $l10
            (i32.const 0))
          (local.set $l5
            (local.tee $l9
              (i32.sub
                (local.get $l9)
                (local.get $l7))))
          (block $B9
            (block $B10
              (block $B11
                (br_table $B9 $B10 $B11 $B10 $B9
                  (select
                    (i32.const 1)
                    (local.tee $l7
                      (i32.load8_u offset=32
                        (local.get $p0)))
                    (i32.eq
                      (local.get $l7)
                      (i32.const 3)))))
              (local.set $l10
                (i32.shr_u
                  (local.get $l9)
                  (i32.const 1)))
              (local.set $l5
                (i32.shr_u
                  (i32.add
                    (local.get $l9)
                    (i32.const 1))
                  (i32.const 1)))
              (br $B9))
            (local.set $l5
              (i32.const 0))
            (local.set $l10
              (local.get $l9)))
          (local.set $l10
            (i32.add
              (local.get $l10)
              (i32.const 1)))
          (loop $L12
            (br_if $B7
              (i32.eqz
                (local.tee $l10
                  (i32.add
                    (local.get $l10)
                    (i32.const -1)))))
            (br_if $L12
              (i32.eqz
                (call_indirect $T0 (type $t1)
                  (i32.load offset=24
                    (local.get $p0))
                  (i32.load offset=4
                    (local.get $p0))
                  (i32.load offset=16
                    (i32.load offset=28
                      (local.get $p0)))))))
          (return
            (i32.const 1)))
        (local.set $l5
          (i32.load offset=4
            (local.get $p0)))
        (i32.store offset=4
          (local.get $p0)
          (i32.const 48))
        (local.set $l6
          (i32.load8_u offset=32
            (local.get $p0)))
        (local.set $l10
          (i32.const 1))
        (i32.store8 offset=32
          (local.get $p0)
          (i32.const 1))
        (br_if $B4
          (call $f231
            (local.get $p0)
            (local.get $l8)
            (local.get $p1)
            (local.get $p2)))
        (local.set $l10
          (i32.const 0))
        (local.set $p2
          (local.tee $l9
            (i32.sub
              (local.get $l9)
              (local.get $l7))))
        (block $B13
          (block $B14
            (block $B15
              (br_table $B13 $B14 $B15 $B14 $B13
                (select
                  (i32.const 1)
                  (local.tee $l8
                    (i32.load8_u offset=32
                      (local.get $p0)))
                  (i32.eq
                    (local.get $l8)
                    (i32.const 3)))))
            (local.set $l10
              (i32.shr_u
                (local.get $l9)
                (i32.const 1)))
            (local.set $p2
              (i32.shr_u
                (i32.add
                  (local.get $l9)
                  (i32.const 1))
                (i32.const 1)))
            (br $B13))
          (local.set $p2
            (i32.const 0))
          (local.set $l10
            (local.get $l9)))
        (local.set $l10
          (i32.add
            (local.get $l10)
            (i32.const 1)))
        (block $B16
          (loop $L17
            (br_if $B16
              (i32.eqz
                (local.tee $l10
                  (i32.add
                    (local.get $l10)
                    (i32.const -1)))))
            (br_if $L17
              (i32.eqz
                (call_indirect $T0 (type $t1)
                  (i32.load offset=24
                    (local.get $p0))
                  (i32.load offset=4
                    (local.get $p0))
                  (i32.load offset=16
                    (i32.load offset=28
                      (local.get $p0)))))))
          (return
            (i32.const 1)))
        (local.set $l9
          (i32.load offset=4
            (local.get $p0)))
        (local.set $l10
          (i32.const 1))
        (br_if $B4
          (call_indirect $T0 (type $t0)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p3)
            (local.get $p4)
            (i32.load offset=12
              (i32.load offset=28
                (local.get $p0)))))
        (local.set $l8
          (i32.add
            (local.get $p2)
            (i32.const 1)))
        (local.set $p2
          (i32.load offset=28
            (local.get $p0)))
        (local.set $p1
          (i32.load offset=24
            (local.get $p0)))
        (block $B18
          (loop $L19
            (br_if $B18
              (i32.eqz
                (local.tee $l8
                  (i32.add
                    (local.get $l8)
                    (i32.const -1)))))
            (local.set $l10
              (i32.const 1))
            (br_if $B4
              (call_indirect $T0 (type $t1)
                (local.get $p1)
                (local.get $l9)
                (i32.load offset=16
                  (local.get $p2))))
            (br $L19)))
        (i32.store8 offset=32
          (local.get $p0)
          (local.get $l6))
        (i32.store offset=4
          (local.get $p0)
          (local.get $l5))
        (return
          (i32.const 0)))
      (local.set $l9
        (i32.load offset=4
          (local.get $p0)))
      (local.set $l10
        (i32.const 1))
      (br_if $B4
        (call $f231
          (local.get $p0)
          (local.get $l8)
          (local.get $p1)
          (local.get $p2)))
      (br_if $B4
        (call_indirect $T0 (type $t0)
          (i32.load offset=24
            (local.get $p0))
          (local.get $p3)
          (local.get $p4)
          (i32.load offset=12
            (i32.load offset=28
              (local.get $p0)))))
      (local.set $l8
        (i32.add
          (local.get $l5)
          (i32.const 1)))
      (local.set $p2
        (i32.load offset=28
          (local.get $p0)))
      (local.set $p0
        (i32.load offset=24
          (local.get $p0)))
      (loop $L20
        (block $B21
          (br_if $B21
            (local.tee $l8
              (i32.add
                (local.get $l8)
                (i32.const -1))))
          (return
            (i32.const 0)))
        (local.set $l10
          (i32.const 1))
        (br_if $L20
          (i32.eqz
            (call_indirect $T0 (type $t1)
              (local.get $p0)
              (local.get $l9)
              (i32.load offset=16
                (local.get $p2)))))))
    (local.get $l10))
  (func $f230 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (local.get $p0))
            (call $f248
              (i32.add
                (local.get $l1)
                (i32.const 40))
              (i32.const 22))
            (call $f121
              (i32.add
                (local.get $l1)
                (i32.const 40))
              (i32.const 1052796)
              (i32.const 1052818))
            (local.set $p0
              (i32.load offset=48
                (local.get $l1)))
            (local.set $l2
              (i32.load offset=40
                (local.get $l1)))
            (br $B2))
          (i32.store offset=12
            (local.get $l1)
            (local.get $p0))
          (i32.store offset=20
            (local.get $l1)
            (i32.const 6))
          (i32.store offset=16
            (local.get $l1)
            (i32.add
              (local.get $l1)
              (i32.const 12)))
          (br_if $B1
            (i32.eqz
              (local.tee $p0
                (call $f109
                  (i32.const 32)
                  (i32.const 1)))))
          (i64.store offset=28 align=4
            (local.get $l1)
            (i64.const 32))
          (i32.store offset=24
            (local.get $l1)
            (local.get $p0))
          (i32.store offset=36
            (local.get $l1)
            (i32.add
              (local.get $l1)
              (i32.const 24)))
          (i32.store
            (i32.add
              (local.get $l1)
              (i32.const 60))
            (i32.const 1))
          (i64.store offset=44 align=4
            (local.get $l1)
            (i64.const 1))
          (i32.store offset=40
            (local.get $l1)
            (i32.const 1052820))
          (i32.store offset=56
            (local.get $l1)
            (i32.add
              (local.get $l1)
              (i32.const 16)))
          (br_if $B0
            (call $f77
              (i32.add
                (local.get $l1)
                (i32.const 36))
              (i32.const 1050788)
              (i32.add
                (local.get $l1)
                (i32.const 40))))
          (local.set $l2
            (i32.load offset=24
              (local.get $l1)))
          (local.set $p0
            (i32.load offset=32
              (local.get $l1))))
        (call $f250
          (local.get $l2)
          (local.get $p0))
        (unreachable))
      (call $f97)
      (unreachable))
    (call $f236
      (i32.const 1050812)
      (i32.const 51)
      (i32.add
        (local.get $l1)
        (i32.const 40))
      (i32.const 1050864)
      (i32.const 1050880))
    (unreachable))
  (func $f231 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.get $p1)
            (i32.const 1114112)))
        (local.set $l4
          (i32.const 1))
        (br_if $B0
          (call_indirect $T0 (type $t1)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p1)
            (i32.load offset=16
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 28)))))))
      (block $B2
        (br_if $B2
          (local.get $p2))
        (return
          (i32.const 0)))
      (local.set $l4
        (call_indirect $T0 (type $t0)
          (i32.load offset=24
            (local.get $p0))
          (local.get $p2)
          (local.get $p3)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 28)))))))
    (local.get $l4))
  (func $f232 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i32.store
      (local.get $l3)
      (local.get $p0))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 28))
      (i32.const 2))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 44))
      (i32.const 1))
    (i64.store offset=12 align=4
      (local.get $l3)
      (i64.const 2))
    (i32.store offset=8
      (local.get $l3)
      (i32.const 1051184))
    (i32.store offset=36
      (local.get $l3)
      (i32.const 1))
    (i32.store offset=24
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (i32.store offset=40
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 4)))
    (i32.store offset=32
      (local.get $l3)
      (local.get $l3))
    (call $f228
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2))
    (unreachable))
  (func $f233 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i32.store
      (local.get $l3)
      (local.get $p0))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 28))
      (i32.const 2))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 44))
      (i32.const 1))
    (i64.store offset=12 align=4
      (local.get $l3)
      (i64.const 2))
    (i32.store offset=8
      (local.get $l3)
      (i32.const 1051240))
    (i32.store offset=36
      (local.get $l3)
      (i32.const 1))
    (i32.store offset=24
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (i32.store offset=40
      (local.get $l3)
      (i32.add
        (local.get $l3)
        (i32.const 4)))
    (i32.store offset=32
      (local.get $l3)
      (local.get $l3))
    (call $f228
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2))
    (unreachable))
  (func $f234 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32)
    (local.set $l3
      (i32.load
        (i32.add
          (local.get $p0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eq
                (local.tee $l4
                  (i32.load
                    (i32.add
                      (local.get $p0)
                      (i32.const 8))))
                (i32.const 1)))
            (br_if $B2
              (i32.eq
                (local.get $l3)
                (i32.const 1)))
            (local.set $l3
              (call_indirect $T0 (type $t0)
                (i32.load offset=24
                  (local.get $p0))
                (local.get $p1)
                (local.get $p2)
                (i32.load offset=12
                  (i32.load
                    (i32.add
                      (local.get $p0)
                      (i32.const 28))))))
            (br $B0))
          (br_if $B1
            (i32.ne
              (local.get $l3)
              (i32.const 1))))
        (block $B4
          (block $B5
            (br_if $B5
              (local.get $p2))
            (local.set $p2
              (i32.const 0))
            (br $B4))
          (local.set $l5
            (i32.add
              (local.get $p1)
              (local.get $p2)))
          (local.set $l6
            (i32.add
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 20)))
              (i32.const 1)))
          (local.set $l7
            (i32.const 0))
          (local.set $l3
            (local.get $p1))
          (local.set $l8
            (local.get $p1))
          (loop $L6
            (local.set $l9
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (block $B7
              (block $B8
                (block $B9
                  (br_if $B9
                    (i32.gt_s
                      (local.tee $l10
                        (i32.load8_s
                          (local.get $l3)))
                      (i32.const -1)))
                  (block $B10
                    (block $B11
                      (br_if $B11
                        (i32.ne
                          (local.get $l9)
                          (local.get $l5)))
                      (local.set $l11
                        (i32.const 0))
                      (local.set $l3
                        (local.get $l5))
                      (br $B10))
                    (local.set $l11
                      (i32.and
                        (i32.load8_u offset=1
                          (local.get $l3))
                        (i32.const 63)))
                    (local.set $l3
                      (local.tee $l9
                        (i32.add
                          (local.get $l3)
                          (i32.const 2)))))
                  (local.set $l12
                    (i32.and
                      (local.get $l10)
                      (i32.const 31)))
                  (block $B12
                    (br_if $B12
                      (i32.gt_u
                        (local.tee $l10
                          (i32.and
                            (local.get $l10)
                            (i32.const 255)))
                        (i32.const 223)))
                    (local.set $l10
                      (i32.or
                        (local.get $l11)
                        (i32.shl
                          (local.get $l12)
                          (i32.const 6))))
                    (br $B8))
                  (block $B13
                    (block $B14
                      (br_if $B14
                        (i32.ne
                          (local.get $l3)
                          (local.get $l5)))
                      (local.set $l13
                        (i32.const 0))
                      (local.set $l14
                        (local.get $l5))
                      (br $B13))
                    (local.set $l13
                      (i32.and
                        (i32.load8_u
                          (local.get $l3))
                        (i32.const 63)))
                    (local.set $l14
                      (local.tee $l9
                        (i32.add
                          (local.get $l3)
                          (i32.const 1)))))
                  (local.set $l11
                    (i32.or
                      (local.get $l13)
                      (i32.shl
                        (local.get $l11)
                        (i32.const 6))))
                  (block $B15
                    (br_if $B15
                      (i32.ge_u
                        (local.get $l10)
                        (i32.const 240)))
                    (local.set $l10
                      (i32.or
                        (local.get $l11)
                        (i32.shl
                          (local.get $l12)
                          (i32.const 12))))
                    (br $B8))
                  (block $B16
                    (block $B17
                      (br_if $B17
                        (i32.ne
                          (local.get $l14)
                          (local.get $l5)))
                      (local.set $l10
                        (i32.const 0))
                      (local.set $l3
                        (local.get $l9))
                      (br $B16))
                    (local.set $l3
                      (i32.add
                        (local.get $l14)
                        (i32.const 1)))
                    (local.set $l10
                      (i32.and
                        (i32.load8_u
                          (local.get $l14))
                        (i32.const 63))))
                  (br_if $B7
                    (i32.ne
                      (local.tee $l10
                        (i32.or
                          (i32.or
                            (i32.shl
                              (local.get $l11)
                              (i32.const 6))
                            (i32.and
                              (i32.shl
                                (local.get $l12)
                                (i32.const 18))
                              (i32.const 1835008)))
                          (local.get $l10)))
                      (i32.const 1114112)))
                  (br $B4))
                (local.set $l10
                  (i32.and
                    (local.get $l10)
                    (i32.const 255))))
              (local.set $l3
                (local.get $l9)))
            (block $B18
              (br_if $B18
                (i32.eqz
                  (local.tee $l6
                    (i32.add
                      (local.get $l6)
                      (i32.const -1)))))
              (local.set $l7
                (i32.add
                  (i32.sub
                    (local.get $l7)
                    (local.get $l8))
                  (local.get $l3)))
              (local.set $l8
                (local.get $l3))
              (br_if $L6
                (i32.ne
                  (local.get $l5)
                  (local.get $l3)))
              (br $B4)))
          (br_if $B4
            (i32.eq
              (local.get $l10)
              (i32.const 1114112)))
          (block $B19
            (block $B20
              (br_if $B20
                (i32.eqz
                  (local.get $l7)))
              (br_if $B20
                (i32.eq
                  (local.get $l7)
                  (local.get $p2)))
              (local.set $l3
                (i32.const 0))
              (br_if $B19
                (i32.ge_u
                  (local.get $l7)
                  (local.get $p2)))
              (br_if $B19
                (i32.lt_s
                  (i32.load8_s
                    (i32.add
                      (local.get $p1)
                      (local.get $l7)))
                  (i32.const -64))))
            (local.set $l3
              (local.get $p1)))
          (local.set $p2
            (select
              (local.get $l7)
              (local.get $p2)
              (local.get $l3)))
          (local.set $p1
            (select
              (local.get $l3)
              (local.get $p1)
              (local.get $l3))))
        (br_if $B1
          (i32.eq
            (local.get $l4)
            (i32.const 1)))
        (return
          (call_indirect $T0 (type $t0)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 28)))))))
      (local.set $l9
        (i32.const 0))
      (block $B21
        (br_if $B21
          (i32.eqz
            (local.get $p2)))
        (local.set $l10
          (local.get $p2))
        (local.set $l3
          (local.get $p1))
        (loop $L22
          (local.set $l9
            (i32.add
              (local.get $l9)
              (i32.eq
                (i32.and
                  (i32.load8_u
                    (local.get $l3))
                  (i32.const 192))
                (i32.const 128))))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (br_if $L22
            (local.tee $l10
              (i32.add
                (local.get $l10)
                (i32.const -1))))))
      (block $B23
        (br_if $B23
          (i32.lt_u
            (i32.sub
              (local.get $p2)
              (local.get $l9))
            (local.tee $l6
              (i32.load offset=12
                (local.get $p0)))))
        (return
          (call_indirect $T0 (type $t0)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 28)))))))
      (local.set $l7
        (i32.const 0))
      (local.set $l9
        (i32.const 0))
      (block $B24
        (br_if $B24
          (i32.eqz
            (local.get $p2)))
        (local.set $l9
          (i32.const 0))
        (local.set $l10
          (local.get $p2))
        (local.set $l3
          (local.get $p1))
        (loop $L25
          (local.set $l9
            (i32.add
              (local.get $l9)
              (i32.eq
                (i32.and
                  (i32.load8_u
                    (local.get $l3))
                  (i32.const 192))
                (i32.const 128))))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (br_if $L25
            (local.tee $l10
              (i32.add
                (local.get $l10)
                (i32.const -1))))))
      (local.set $l10
        (local.tee $l9
          (i32.add
            (i32.sub
              (local.get $l9)
              (local.get $p2))
            (local.get $l6))))
      (block $B26
        (block $B27
          (block $B28
            (br_table $B26 $B27 $B28 $B27 $B26
              (select
                (i32.const 0)
                (local.tee $l3
                  (i32.load8_u offset=32
                    (local.get $p0)))
                (i32.eq
                  (local.get $l3)
                  (i32.const 3)))))
          (local.set $l7
            (i32.shr_u
              (local.get $l9)
              (i32.const 1)))
          (local.set $l10
            (i32.shr_u
              (i32.add
                (local.get $l9)
                (i32.const 1))
              (i32.const 1)))
          (br $B26))
        (local.set $l10
          (i32.const 0))
        (local.set $l7
          (local.get $l9)))
      (local.set $l3
        (i32.add
          (local.get $l7)
          (i32.const 1)))
      (block $B29
        (loop $L30
          (br_if $B29
            (i32.eqz
              (local.tee $l3
                (i32.add
                  (local.get $l3)
                  (i32.const -1)))))
          (br_if $L30
            (i32.eqz
              (call_indirect $T0 (type $t1)
                (i32.load offset=24
                  (local.get $p0))
                (i32.load offset=4
                  (local.get $p0))
                (i32.load offset=16
                  (i32.load offset=28
                    (local.get $p0)))))))
        (return
          (i32.const 1)))
      (local.set $l9
        (i32.load offset=4
          (local.get $p0)))
      (local.set $l3
        (i32.const 1))
      (br_if $B0
        (call_indirect $T0 (type $t0)
          (i32.load offset=24
            (local.get $p0))
          (local.get $p1)
          (local.get $p2)
          (i32.load offset=12
            (i32.load offset=28
              (local.get $p0)))))
      (local.set $l3
        (i32.add
          (local.get $l10)
          (i32.const 1)))
      (local.set $l10
        (i32.load offset=28
          (local.get $p0)))
      (local.set $p0
        (i32.load offset=24
          (local.get $p0)))
      (loop $L31
        (block $B32
          (br_if $B32
            (local.tee $l3
              (i32.add
                (local.get $l3)
                (i32.const -1))))
          (return
            (i32.const 0)))
        (br_if $L31
          (i32.eqz
            (call_indirect $T0 (type $t1)
              (local.get $p0)
              (local.get $l9)
              (i32.load offset=16
                (local.get $l10))))))
      (return
        (i32.const 1)))
    (local.get $l3))
  (func $f235 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call $f234
      (local.get $p1)
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))))
  (func $f236 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (i32.store offset=12
      (local.get $l5)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l5)
      (local.get $p0))
    (i32.store offset=20
      (local.get $l5)
      (local.get $p3))
    (i32.store offset=16
      (local.get $l5)
      (local.get $p2))
    (i32.store
      (i32.add
        (local.get $l5)
        (i32.const 44))
      (i32.const 2))
    (i32.store
      (i32.add
        (local.get $l5)
        (i32.const 60))
      (i32.const 7))
    (i64.store offset=28 align=4
      (local.get $l5)
      (i64.const 2))
    (i32.store offset=24
      (local.get $l5)
      (i32.const 1051388))
    (i32.store offset=52
      (local.get $l5)
      (i32.const 8))
    (i32.store offset=40
      (local.get $l5)
      (i32.add
        (local.get $l5)
        (i32.const 48)))
    (i32.store offset=56
      (local.get $l5)
      (i32.add
        (local.get $l5)
        (i32.const 16)))
    (i32.store offset=48
      (local.get $l5)
      (i32.add
        (local.get $l5)
        (i32.const 8)))
    (call $f228
      (i32.add
        (local.get $l5)
        (i32.const 24))
      (local.get $p4))
    (unreachable))
  (func $f237 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call_indirect $T0 (type $t1)
      (i32.load
        (local.get $p0))
      (local.get $p1)
      (i32.load offset=12
        (i32.load offset=4
          (local.get $p0)))))
  (func $f238 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call_indirect $T0 (type $t0)
      (i32.load offset=24
        (local.get $p1))
      (i32.const 1051406)
      (i32.const 5)
      (i32.load offset=12
        (i32.load
          (i32.add
            (local.get $p1)
            (i32.const 28))))))
  (func $f239 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.ge_u
              (i32.sub
                (local.tee $l3
                  (i32.load offset=4
                    (local.get $p0)))
                (local.tee $l4
                  (i32.load offset=8
                    (local.get $p0))))
              (local.get $p1)))
          (br_if $B0
            (i32.lt_u
              (local.tee $p1
                (i32.add
                  (local.get $l4)
                  (local.get $p1)))
              (local.get $l4)))
          (br_if $B0
            (i32.lt_s
              (local.tee $l4
                (select
                  (local.tee $l4
                    (i32.shl
                      (local.get $l3)
                      (i32.const 1)))
                  (local.get $p1)
                  (i32.gt_u
                    (local.get $l4)
                    (local.get $p1))))
              (i32.const 0)))
          (block $B3
            (block $B4
              (br_if $B4
                (local.get $l3))
              (call $f241
                (i32.add
                  (local.get $l2)
                  (i32.const 8))
                (local.get $l4))
              (local.set $l4
                (i32.load offset=12
                  (local.get $l2)))
              (local.set $p1
                (i32.load offset=8
                  (local.get $l2)))
              (br $B3))
            (local.set $p1
              (i32.ne
                (local.get $l3)
                (i32.const 0)))
            (local.set $l5
              (i32.load
                (local.get $p0)))
            (block $B5
              (br_if $B5
                (i32.eqz
                  (local.get $l4)))
              (local.set $p1
                (call $f111
                  (local.get $l5)
                  (local.get $l3)
                  (local.get $p1)
                  (local.get $l4)))
              (br $B3))
            (call $f242
              (local.get $l5)
              (local.get $l3)
              (local.get $p1)))
          (br_if $B1
            (i32.eqz
              (local.get $p1)))
          (i32.store offset=4
            (local.get $p0)
            (local.get $l4))
          (i32.store
            (local.get $p0)
            (local.get $p1)))
        (global.set $g0
          (i32.add
            (local.get $l2)
            (i32.const 16)))
        (return))
      (call $f97)
      (unreachable))
    (call $f104)
    (unreachable))
  (func $f240 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 96))))
    (i32.store offset=8
      (local.get $l4)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l4)
      (local.get $p3))
    (block $B0
      (br_if $B0
        (i32.ne
          (local.get $p1)
          (local.get $p3)))
      (drop
        (call $f271
          (local.get $p0)
          (local.get $p2)
          (local.get $p1)))
      (global.set $g0
        (i32.add
          (local.get $l4)
          (i32.const 96)))
      (return))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l4)
          (i32.const 40))
        (i32.const 20))
      (i32.const 4))
    (i32.store
      (i32.add
        (local.get $l4)
        (i32.const 52))
      (i32.const 9))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l4)
          (i32.const 16))
        (i32.const 20))
      (i32.const 3))
    (i32.store offset=64
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 8)))
    (i32.store offset=68
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 12)))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l4)
          (i32.const 72))
        (i32.const 20))
      (i32.const 0))
    (i64.store offset=20 align=4
      (local.get $l4)
      (i64.const 3))
    (i32.store offset=16
      (local.get $l4)
      (i32.const 1051708))
    (i32.store offset=44
      (local.get $l4)
      (i32.const 9))
    (i32.store offset=88
      (local.get $l4)
      (i32.const 1051708))
    (i64.store offset=76 align=4
      (local.get $l4)
      (i64.const 1))
    (i32.store offset=72
      (local.get $l4)
      (i32.const 1051700))
    (i32.store offset=32
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 40)))
    (i32.store offset=56
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 72)))
    (i32.store offset=48
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 68)))
    (i32.store offset=40
      (local.get $l4)
      (i32.add
        (local.get $l4)
        (i32.const 64)))
    (call $f228
      (i32.add
        (local.get $l4)
        (i32.const 16))
      (i32.const 1051732))
    (unreachable))
  (func $f241 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p1))
        (local.set $l2
          (i32.const 1))
        (br $B0))
      (local.set $l2
        (call $f109
          (local.get $p1)
          (i32.const 1))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (i32.store
      (local.get $p0)
      (local.get $l2)))
  (func $f242 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (call $f110
        (local.get $p0)
        (local.get $p1)
        (local.get $p2))))
  (func $f243 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 128))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.and
                  (local.tee $l3
                    (i32.load
                      (local.get $p1)))
                  (i32.const 16)))
              (br_if $B3
                (i32.and
                  (local.get $l3)
                  (i32.const 32)))
              (local.set $p0
                (call $f119
                  (local.get $p0)
                  (local.get $p1)))
              (br $B2))
            (local.set $l3
              (i32.load
                (local.get $p0)))
            (local.set $p0
              (i32.const 0))
            (loop $L5
              (i32.store8
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (local.get $p0))
                  (i32.const 127))
                (select
                  (i32.or
                    (local.tee $l4
                      (i32.and
                        (local.get $l3)
                        (i32.const 15)))
                    (i32.const 48))
                  (i32.add
                    (local.get $l4)
                    (i32.const 87))
                  (i32.lt_u
                    (local.get $l4)
                    (i32.const 10))))
              (local.set $p0
                (i32.add
                  (local.get $p0)
                  (i32.const -1)))
              (br_if $L5
                (local.tee $l3
                  (i32.shr_u
                    (local.get $l3)
                    (i32.const 4)))))
            (br_if $B1
              (i32.ge_u
                (local.tee $l3
                  (i32.add
                    (local.get $p0)
                    (i32.const 128)))
                (i32.const 129)))
            (local.set $p0
              (call $f229
                (local.get $p1)
                (i32.const 1051364)
                (i32.const 2)
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (local.get $p0))
                  (i32.const 128))
                (i32.sub
                  (i32.const 0)
                  (local.get $p0))))
            (br $B2))
          (local.set $l3
            (i32.load
              (local.get $p0)))
          (local.set $p0
            (i32.const 0))
          (loop $L6
            (i32.store8
              (i32.add
                (i32.add
                  (local.get $l2)
                  (local.get $p0))
                (i32.const 127))
              (select
                (i32.or
                  (local.tee $l4
                    (i32.and
                      (local.get $l3)
                      (i32.const 15)))
                  (i32.const 48))
                (i32.add
                  (local.get $l4)
                  (i32.const 55))
                (i32.lt_u
                  (local.get $l4)
                  (i32.const 10))))
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const -1)))
            (br_if $L6
              (local.tee $l3
                (i32.shr_u
                  (local.get $l3)
                  (i32.const 4)))))
          (br_if $B0
            (i32.ge_u
              (local.tee $l3
                (i32.add
                  (local.get $p0)
                  (i32.const 128)))
              (i32.const 129)))
          (local.set $p0
            (call $f229
              (local.get $p1)
              (i32.const 1051364)
              (i32.const 2)
              (i32.add
                (i32.add
                  (local.get $l2)
                  (local.get $p0))
                (i32.const 128))
              (i32.sub
                (i32.const 0)
                (local.get $p0)))))
        (global.set $g0
          (i32.add
            (local.get $l2)
            (i32.const 128)))
        (return
          (local.get $p0)))
      (call $f233
        (local.get $l3)
        (i32.const 128)
        (i32.const 1051348))
      (unreachable))
    (call $f233
      (local.get $l3)
      (i32.const 128)
      (i32.const 1051348))
    (unreachable))
  (func $f244 (type $t19)
    (call $f104)
    (unreachable))
  (func $f245 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.ne
          (local.tee $l2
            (i32.load offset=8
              (local.get $p0)))
          (i32.load offset=4
            (local.get $p0))))
      (call $f239
        (local.get $p0)
        (i32.const 1))
      (local.set $l2
        (i32.load offset=8
          (local.get $p0))))
    (i32.store8
      (i32.add
        (i32.load
          (local.get $p0))
        (local.get $l2))
      (local.get $p1))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (i32.load offset=8
          (local.get $p0))
        (i32.const 1))))
  (func $f246 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $f51
      (local.get $p0)
      (i64.extend_i32_u
        (local.get $p1))
      (i32.const 32)
      (i32.const 0)))
  (func $f247 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (local.set $l3
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 28))))
    (local.set $l4
      (i32.load offset=24
        (local.get $p1)))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.tee $p1
            (i32.load
              (local.get $p0)))
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (local.set $p1
      (call $f77
        (local.get $l4)
        (local.get $l3)
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $p1))
  (func $f248 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f107
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.get $p1)
      (i32.const 0))
    (local.set $l3
      (i64.load offset=8
        (local.get $l2)))
    (i32.store offset=8
      (local.get $p0)
      (i32.const 0))
    (i64.store align=4
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f249 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $f250
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f250 (type $t6) (param $p0 i32) (param $p1 i32)
    (call $env.signalError
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f251 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.gt_u
              (local.tee $l3
                (call $env.bigIntUnsignedByteLength
                  (local.get $p1)))
              (i32.const 32)))
          (call $f48
            (local.get $l2)
            (i32.const 32))
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.get $l3)))
            (br_if $B0
              (i32.le_u
                (local.tee $l4
                  (i32.load offset=8
                    (local.get $l2)))
                (local.tee $l3
                  (i32.sub
                    (i32.const 32)
                    (local.get $l3)))))
            (drop
              (call $env.bigIntGetUnsignedBytes
                (local.get $p1)
                (i32.add
                  (i32.load
                    (local.get $l2))
                  (local.get $l3)))))
          (i64.store align=4
            (local.get $p0)
            (i64.load
              (local.get $l2)))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 8))
            (i32.load
              (i32.add
                (local.get $l2)
                (i32.const 8))))
          (br $B1))
        (i32.store
          (local.get $p0)
          (i32.const 0)))
      (global.set $g0
        (i32.add
          (local.get $l2)
          (i32.const 16)))
      (return))
    (call $f45
      (local.get $l3)
      (local.get $l4)
      (i32.const 1052604))
    (unreachable))
  (func $f252 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.load
          (local.get $p1)))
      (call $f103
        (i32.const 1052440)
        (i32.const 43)
        (local.get $p2))
      (unreachable))
    (i64.store align=4
      (local.get $p0)
      (i64.load align=4
        (local.get $p1)))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 8)))))
  (func $f253 (type $t2) (param $p0 i32)
    (call $f86
      (local.get $p0)))
  (func $f254 (type $t2) (param $p0 i32)
    (call $f255
      (local.get $p0))
    (unreachable))
  (func $f255 (type $t2) (param $p0 i32)
    (call $f250
      (local.get $p0)
      (i32.const 54))
    (unreachable))
  (func $f256 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $p1
      (select
        (local.get $p1)
        (i32.const 1)
        (local.get $p1)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (local.set $p0
        (i32.shr_u
          (i32.add
            (local.get $p0)
            (i32.const 3))
          (i32.const 2)))
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.get $p1)
            (i32.const 4)))
        (br_if $B1
          (i32.gt_u
            (local.tee $l3
              (i32.add
                (local.get $p0)
                (i32.const -1)))
            (i32.const 255)))
        (i32.store offset=4
          (local.get $l2)
          (i32.const 1052892))
        (i32.store offset=12
          (local.get $l2)
          (i32.load
            (local.tee $l3
              (i32.add
                (i32.shl
                  (local.get $l3)
                  (i32.const 2))
                (i32.const 1052896)))))
        (local.set $p1
          (call $f259
            (local.get $p0)
            (local.get $p1)
            (i32.add
              (local.get $l2)
              (i32.const 12))
            (i32.add
              (local.get $l2)
              (i32.const 4))
            (i32.const 1052868)))
        (i32.store
          (local.get $l3)
          (i32.load offset=12
            (local.get $l2)))
        (br $B0))
      (i32.store offset=8
        (local.get $l2)
        (i32.load offset=1052892
          (i32.const 0)))
      (local.set $p1
        (call $f259
          (local.get $p0)
          (local.get $p1)
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (i32.const 1051708)
          (i32.const 1052844)))
      (i32.store offset=1052892
        (i32.const 0)
        (i32.load offset=8
          (local.get $l2))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $f257 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (i32.store offset=4
        (local.get $l3)
        (local.get $p0))
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.get $p2)
            (i32.const 4)))
        (br_if $B1
          (i32.gt_u
            (local.tee $p0
              (i32.add
                (i32.shr_u
                  (i32.add
                    (local.get $p1)
                    (i32.const 3))
                  (i32.const 2))
                (i32.const -1)))
            (i32.const 255)))
        (i32.store offset=8
          (local.get $l3)
          (i32.const 1052892))
        (i32.store offset=12
          (local.get $l3)
          (i32.load
            (local.tee $p0
              (i32.add
                (i32.shl
                  (local.get $p0)
                  (i32.const 2))
                (i32.const 1052896)))))
        (call $f269
          (i32.add
            (local.get $l3)
            (i32.const 4))
          (i32.add
            (local.get $l3)
            (i32.const 12))
          (i32.add
            (local.get $l3)
            (i32.const 8))
          (i32.const 1052868))
        (i32.store
          (local.get $p0)
          (i32.load offset=12
            (local.get $l3)))
        (br $B0))
      (i32.store offset=12
        (local.get $l3)
        (i32.load offset=1052892
          (i32.const 0)))
      (call $f269
        (i32.add
          (local.get $l3)
          (i32.const 4))
        (i32.add
          (local.get $l3)
          (i32.const 12))
        (i32.const 1051708)
        (i32.const 1052844))
      (i32.store offset=1052892
        (i32.const 0)
        (i32.load offset=12
          (local.get $l3))))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f258 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l4)
      (i32.load
        (local.tee $p1
          (i32.load
            (local.get $p1)))))
    (local.set $p2
      (call $f259
        (local.tee $l5
          (select
            (local.tee $p2
              (i32.mul
                (local.tee $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const 2)))
                (local.get $p2)))
            (i32.const 2048)
            (i32.gt_u
              (local.get $p2)
              (i32.const 2048))))
        (i32.const 4)
        (i32.add
          (local.get $l4)
          (i32.const 12))
        (i32.const 1051708)
        (i32.const 1052844)))
    (i32.store
      (local.get $p1)
      (i32.load offset=12
        (local.get $l4)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p2))
        (local.set $p1
          (i32.const 1))
        (br $B0))
      (i64.store offset=4 align=4
        (local.get $p2)
        (i64.const 0))
      (i32.store
        (local.get $p2)
        (i32.or
          (i32.add
            (local.get $p2)
            (i32.shl
              (local.get $l5)
              (i32.const 2)))
          (i32.const 2)))
      (local.set $p1
        (i32.const 0)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p2))
    (i32.store
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $f259 (type $t21) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (local.tee $l6
          (call $f260
            (local.get $p0)
            (local.get $p1)
            (local.get $p2)
            (local.get $p3)
            (local.get $p4))))
      (call_indirect $T0 (type $t3)
        (i32.add
          (local.get $l5)
          (i32.const 8))
        (local.get $p3)
        (local.get $p0)
        (local.get $p1)
        (i32.load offset=12
          (local.get $p4)))
      (local.set $l6
        (i32.const 0))
      (br_if $B0
        (i32.load offset=8
          (local.get $l5)))
      (i32.store offset=8
        (local.tee $l6
          (i32.load offset=12
            (local.get $l5)))
        (i32.load
          (local.get $p2)))
      (i32.store
        (local.get $p2)
        (local.get $l6))
      (local.set $l6
        (call $f260
          (local.get $p0)
          (local.get $p1)
          (local.get $p2)
          (local.get $p3)
          (local.get $p4))))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 16)))
    (local.get $l6))
  (func $f260 (type $t21) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    (local.set $l5
      (i32.add
        (local.get $p1)
        (i32.const -1)))
    (local.set $l6
      (i32.const 0))
    (local.set $l7
      (i32.sub
        (i32.const 0)
        (local.get $p1)))
    (local.set $l8
      (i32.shl
        (local.get $p0)
        (i32.const 2)))
    (local.set $l9
      (i32.load
        (local.get $p2)))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eqz
            (local.get $l9)))
        (local.set $p1
          (local.get $l9))
        (block $B2
          (loop $L3
            (block $B4
              (br_if $B4
                (i32.and
                  (local.tee $l9
                    (i32.load offset=8
                      (local.get $p1)))
                  (i32.const 1)))
              (br_if $B2
                (i32.lt_u
                  (i32.sub
                    (local.tee $l10
                      (i32.and
                        (i32.load
                          (local.get $p1))
                        (i32.const -4)))
                    (local.tee $l11
                      (i32.add
                        (local.get $p1)
                        (i32.const 8))))
                  (local.get $l8)))
              (block $B5
                (block $B6
                  (br_if $B6
                    (i32.le_u
                      (i32.add
                        (i32.add
                          (local.get $l11)
                          (i32.shl
                            (call_indirect $T0 (type $t1)
                              (local.get $p3)
                              (local.get $p0)
                              (i32.load offset=16
                                (local.get $p4)))
                            (i32.const 2)))
                        (i32.const 8))
                      (local.tee $l9
                        (i32.and
                          (i32.sub
                            (local.get $l10)
                            (local.get $l8))
                          (local.get $l7)))))
                  (local.set $l9
                    (i32.load
                      (local.get $l11)))
                  (br_if $B2
                    (i32.and
                      (local.get $l5)
                      (local.get $l11)))
                  (i32.store
                    (local.get $p2)
                    (i32.and
                      (local.get $l9)
                      (i32.const -4)))
                  (local.set $l9
                    (local.get $p1))
                  (br $B5))
                (i32.store
                  (local.get $l9)
                  (i32.const 0))
                (i64.store align=4
                  (local.tee $l9
                    (i32.add
                      (local.get $l9)
                      (i32.const -8)))
                  (i64.const 0))
                (i32.store
                  (local.get $l9)
                  (i32.and
                    (i32.load
                      (local.get $p1))
                    (i32.const -4)))
                (block $B7
                  (br_if $B7
                    (i32.eqz
                      (local.tee $p2
                        (i32.and
                          (local.tee $l11
                            (i32.load
                              (local.get $p1)))
                          (i32.const -4)))))
                  (br_if $B7
                    (i32.and
                      (local.get $l11)
                      (i32.const 2)))
                  (i32.store offset=4
                    (local.get $p2)
                    (i32.or
                      (i32.and
                        (i32.load offset=4
                          (local.get $p2))
                        (i32.const 3))
                      (local.get $l9))))
                (i32.store offset=4
                  (local.get $l9)
                  (i32.or
                    (i32.and
                      (i32.load offset=4
                        (local.get $l9))
                      (i32.const 3))
                    (local.get $p1)))
                (i32.store offset=8
                  (local.get $p1)
                  (i32.and
                    (i32.load offset=8
                      (local.get $p1))
                    (i32.const -2)))
                (i32.store
                  (local.get $p1)
                  (local.tee $l11
                    (i32.or
                      (i32.and
                        (local.tee $p2
                          (i32.load
                            (local.get $p1)))
                        (i32.const 3))
                      (local.get $l9))))
                (br_if $B5
                  (i32.eqz
                    (i32.and
                      (local.get $p2)
                      (i32.const 2))))
                (i32.store
                  (local.get $p1)
                  (i32.and
                    (local.get $l11)
                    (i32.const -3)))
                (i32.store
                  (local.get $l9)
                  (i32.or
                    (i32.load
                      (local.get $l9))
                    (i32.const 2))))
              (i32.store
                (local.get $l9)
                (i32.or
                  (i32.load
                    (local.get $l9))
                  (i32.const 1)))
              (local.set $l6
                (i32.add
                  (local.get $l9)
                  (i32.const 8)))
              (br $B0))
            (i32.store offset=8
              (local.get $p1)
              (i32.and
                (local.get $l9)
                (i32.const -2)))
            (block $B8
              (block $B9
                (br_if $B9
                  (local.tee $l9
                    (i32.and
                      (i32.load offset=4
                        (local.get $p1))
                      (i32.const -4))))
                (local.set $l9
                  (i32.const 0))
                (br $B8))
              (local.set $l9
                (select
                  (i32.const 0)
                  (local.get $l9)
                  (i32.and
                    (i32.load8_u
                      (local.get $l9))
                    (i32.const 1)))))
            (call $f261
              (local.get $p1))
            (block $B10
              (br_if $B10
                (i32.eqz
                  (i32.and
                    (i32.load8_u
                      (local.get $p1))
                    (i32.const 2))))
              (i32.store
                (local.get $l9)
                (i32.or
                  (i32.load
                    (local.get $l9))
                  (i32.const 2))))
            (i32.store
              (local.get $p2)
              (local.get $l9))
            (local.set $p1
              (local.get $l9))
            (br $L3)))
        (i32.store
          (local.get $p2)
          (local.get $l9))
        (br $L1)))
    (local.get $l6))
  (func $f261 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l2
            (i32.and
              (local.tee $l1
                (i32.load
                  (local.get $p0)))
              (i32.const -4)))))
      (br_if $B0
        (i32.and
          (local.get $l1)
          (i32.const 2)))
      (i32.store offset=4
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.load offset=4
              (local.get $l2))
            (i32.const 3))
          (i32.and
            (i32.load offset=4
              (local.get $p0))
            (i32.const -4)))))
    (block $B1
      (br_if $B1
        (i32.eqz
          (local.tee $l1
            (i32.and
              (local.tee $l2
                (i32.load offset=4
                  (local.get $p0)))
              (i32.const -4)))))
      (i32.store
        (local.get $l1)
        (i32.or
          (i32.and
            (i32.load
              (local.get $l1))
            (i32.const 3))
          (i32.and
            (i32.load
              (local.get $p0))
            (i32.const -4))))
      (local.set $l2
        (i32.load offset=4
          (local.get $p0))))
    (i32.store offset=4
      (local.get $p0)
      (i32.and
        (local.get $l2)
        (i32.const 3)))
    (i32.store
      (local.get $p0)
      (i32.and
        (i32.load
          (local.get $p0))
        (i32.const 3))))
  (func $f262 (type $t2) (param $p0 i32))
  (func $f263 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (local.tee $p3
              (memory.grow
                (i32.shr_u
                  (local.tee $l4
                    (i32.add
                      (select
                        (local.tee $p2
                          (i32.shl
                            (local.get $p2)
                            (i32.const 2)))
                        (local.tee $p3
                          (i32.add
                            (i32.shl
                              (local.get $p3)
                              (i32.const 3))
                            (i32.const 16384)))
                        (i32.gt_u
                          (local.get $p2)
                          (local.get $p3)))
                      (i32.const 65543)))
                  (i32.const 16))))
            (i32.const -1)))
        (local.set $p2
          (i32.const 1))
        (br $B0))
      (i64.store
        (local.tee $p3
          (i32.shl
            (local.get $p3)
            (i32.const 16)))
        (i64.const 0))
      (local.set $p2
        (i32.const 0))
      (i32.store offset=8
        (local.get $p3)
        (i32.const 0))
      (i32.store
        (local.get $p3)
        (i32.or
          (i32.add
            (local.get $p3)
            (i32.and
              (local.get $l4)
              (i32.const -65536)))
          (i32.const 2))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p3))
    (i32.store
      (local.get $p0)
      (local.get $p2)))
  (func $f264 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.const 512))
  (func $f265 (type $t4) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $f266 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local.get $p1))
  (func $f267 (type $t4) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $f268 (type $t2) (param $p0 i32))
  (func $f269 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (i32.store
      (local.tee $l4
        (i32.load
          (local.get $p0)))
      (i32.const 0))
    (i32.store
      (local.tee $p0
        (i32.add
          (local.get $l4)
          (i32.const -8)))
      (i32.and
        (i32.load
          (local.get $p0))
        (i32.const -2)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (call_indirect $T0 (type $t4)
            (local.get $p2)
            (i32.load offset=20
              (local.get $p3)))))
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.tee $p2
                (i32.and
                  (i32.load
                    (i32.add
                      (local.get $l4)
                      (i32.const -4)))
                  (i32.const -4)))))
          (br_if $B1
            (i32.eqz
              (i32.and
                (i32.load8_u
                  (local.get $p2))
                (i32.const 1)))))
        (br_if $B0
          (i32.eqz
            (local.tee $p3
              (i32.and
                (local.tee $p2
                  (i32.load
                    (local.get $p0)))
                (i32.const -4)))))
        (br_if $B0
          (i32.and
            (local.get $p2)
            (i32.const 2)))
        (br_if $B0
          (i32.and
            (i32.load8_u
              (local.get $p3))
            (i32.const 1)))
        (i32.store
          (local.get $l4)
          (i32.and
            (i32.load offset=8
              (local.get $p3))
            (i32.const -4)))
        (i32.store offset=8
          (local.get $p3)
          (i32.or
            (local.get $p0)
            (i32.const 1)))
        (return))
      (call $f261
        (local.get $p0))
      (block $B3
        (br_if $B3
          (i32.eqz
            (i32.and
              (i32.load8_u
                (local.get $p0))
              (i32.const 2))))
        (i32.store
          (local.get $p2)
          (i32.or
            (i32.load
              (local.get $p2))
            (i32.const 2))))
      (return))
    (i32.store
      (local.get $l4)
      (i32.load
        (local.get $p1)))
    (i32.store
      (local.get $p1)
      (local.get $p0)))
  (func $f270 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (local.set $l3
        (local.get $p0))
      (loop $L1
        (i32.store8
          (local.get $l3)
          (local.get $p1))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const 1)))
        (br_if $L1
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -1))))))
    (local.get $p0))
  (func $f271 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (local.set $l3
        (local.get $p0))
      (loop $L1
        (i32.store8
          (local.get $l3)
          (i32.load8_u
            (local.get $p1)))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const 1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (br_if $L1
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -1))))))
    (local.get $p0))
  (func $f272 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_u
            (local.get $p1)
            (local.get $p0)))
        (br_if $B0
          (i32.eqz
            (local.get $p2)))
        (local.set $l3
          (local.get $p0))
        (loop $L2
          (i32.store8
            (local.get $l3)
            (i32.load8_u
              (local.get $p1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 1)))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (br_if $L2
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const -1))))
          (br $B0)))
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (local.set $p1
        (i32.add
          (local.get $p1)
          (i32.const -1)))
      (local.set $l3
        (i32.add
          (local.get $p0)
          (i32.const -1)))
      (loop $L3
        (i32.store8
          (i32.add
            (local.get $l3)
            (local.get $p2))
          (i32.load8_u
            (i32.add
              (local.get $p1)
              (local.get $p2))))
        (br_if $L3
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -1))))))
    (local.get $p0))
  (func $f273 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l3
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.ne
              (local.tee $l4
                (i32.load8_u
                  (local.get $p0)))
              (local.tee $l5
                (i32.load8_u
                  (local.get $p1)))))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 1)))
          (br_if $B0
            (i32.eqz
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const -1)))))
          (br $L2)))
      (local.set $l3
        (i32.sub
          (local.get $l4)
          (local.get $l5))))
    (local.get $l3))
  (table $T0 33 33 funcref)
  (memory $memory (export "memory") 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end (export "__data_end") i32 (i32.const 1053920))
  (global $__heap_base (export "__heap_base") i32 (i32.const 1053920))
  (elem $e0 (i32.const 1) func $f119 $f227 $f72 $f120 $f169 $f247 $f237 $f235 $f243 $f88 $f92 $f90 $f91 $f89 $f71 $f87 $f122 $f126 $f127 $f223 $f224 $f225 $f226 $f238 $f262 $f263 $f264 $f265 $f268 $f258 $f266 $f267)
  (data $d0 (i32.const 1048576) "<\0c\10\00\00\00\00\00fmt err (): /home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/address.rstx_hash_________________________\0a\00\00\00\04\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00assertion failed: index < len, expected invalid length \00\ec\00\10\00\0f\00\00\00\e1\00\10\00\0b\00\00\00\14\00\10\00x\00\00\00\87\00\00\00$\00\00\00BLSKeysrc/bls_key.rs\22\01\10\00\0e\00\00\00,\00\00\00\0d\00\00\00\0e\00\00\00\00\00\00\00\01\00\00\00\0f\00\00\00src/util.rs\00P\01\10\00\0b\00\00\00\14\00\00\00\09\00\00\00P\01\10\00\0b\00\00\00\16\00\00\00\09\00\00\00stakeauction_stake_callbackasync call serialization errorusizeunStakeauction_unStake_callbackunBondauction_unBond_callback0.2.1node share out of rangeonly owner can change stake per nodecannot change stake per node while activeonly owner can change the number of nodescannot change nr of nodes while activeonly owner can set BLS keyscannot change BLS keys while activecannot stake while contract is activegenesis block onlypayment exceeds unfilled total stakecannot unstake while contract is activeonly delegators can unstakecannot unstake more than was stakeddelegation unstakecannot activate with 0 staketoo much stake filledcannot activate before all stake has been filledonly owner can activatecontract already activewrong number of BLS keyswrong size BLS signaturecannot activate with no nodes\00\00\10\00\00\00 \00\00\00\01\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00only owner can deactivatecontract is not activeonly delegators can call forceUnstakeonly delegators that are trying to sell stake can call forceUnstaketoo soon to call forceUnstakecontract is not in unbond periodunknown callerdelegation claimonly owner can withdraw unexpected balanceunexpected balanceonly delegators can offer stake for salecannot offer more stake than is ownedunknown sellerpayment exceeds stake offeredpayment exceeds stake owned by userpayment for stakeownernode_rewards_addrauction_addrtime_before_force_unstakenode_sharestake_per_nodenum_usersnum_nodesbls_keysstorage deserialization errorVecstorage serialization errorstake_stateStakeStateuser_idkeyu_staku_unclu_lastu_saleu_toffsent_rewardsinactive_stakefilled_stakeevent serialization errordatasrc/lib.rs\b6\07\10\00\0a\00\00\008\00\00\00\01\00\00\00No callback function with that name exists in contract.result serialization errorargument deserialization error\000\00\00\00\00\00\00\00\15\00\00\00\ef\03\10\00\00\00\00\00\da\03\10\00capacity overflow\00\00\00|\08\10\00\17\00\00\00\ee\02\00\00\05\00\00\00src/liballoc/raw_vec.rs\00|\08\10\00\17\00\00\00\e9\01\00\00'\00\00\00\14\00\00\00\04\00\00\00\04\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00a formatting trait implementation returned an error\00\14\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00\10\09\10\00\13\00\00\00J\02\00\00\05\00\00\00src/liballoc/fmt.rs\004\09\10\00 \00\00\00T\09\10\00\12\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00@\0a\10\00\06\00\00\00F\0a\10\00\22\00\00\00index  out of range for slice of length x\0a\10\00\16\00\00\00\8e\0a\10\00\0d\00\00\00slice index starts at  but ends at \00\bc\0a\10\00\16\00\00\00V\04\00\00$\00\00\00\bc\0a\10\00\16\00\00\00L\04\00\00\11\00\00\00src/libcore/fmt/mod.rs\00\00\e6\0a\10\00\16\00\00\00T\00\00\00\14\00\00\000xsrc/libcore/fmt/num.rs<\0c\10\00\00\00\00\00\0c\0b\10\00\02\00\00\00: ErrorELRONDrewardattempted to transfer funds via a non-payable functionwrong number of argumentswrong number of arguments returned by async calltoo many callback arguments providedargument out of rangeargument has wrong length: 32 bytes expectedcannot subtract because result would be negative\00\e9\0c\10\004\00\00\00\ad\0c\10\00-\00\00\00\da\0c\10\00\0c\00\00\00\e6\0c\10\00\03\00\00\00d\0c\10\00I\00\00\00(\00\00\00\09\00\00\00/rustc/a5fb9ae5b2ed3cb011ada9dc1e8633aa0927f279/src/libcore/macros/mod.rsassertion failed: `(left == right)`\0a  left: ``,\0a right: ``: destination and source slices have different lengthsinternal error: entered unreachable code\00\00\00d\0c\10\00I\00\00\00\22\00\00\00\09\00\00\00x\0d\10\00\80\00\00\00P\00\00\00\1e\00\00\00x\0d\10\00\80\00\00\00W\00\00\00\1e\00\00\00/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/call_data/cd_de.rs/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/serializer/bytes_de.rs\f8\0d\10\00\84\00\00\00R\00\00\00\1b\00\00\00\f8\0d\10\00\84\00\00\00S\00\00\00\1b\00\00\00invalid valueinput too longinput too shortsequence length requirednot yet implementedunsupported operation\00\00C\0f\10\00y\00\00\00\cb\00\00\00\1e\00\00\00called `Option::unwrap()` on a `None` value/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-node-0.4.4/src/ext.rs\cc\0f\10\00~\00\00\00<\01\00\00:\00\00\00/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-node-0.4.4/src/big_uint.rs\00\00C\0f\10\00y\00\00\00\d7\00\00\00\1e\00\00\00C\0f\10\00y\00\00\00\82\01\00\00\0d\00\00\00allocation errorunknown panic occurred\00\00\9c\10\10\00\10\00\00\00panic occurred: \19\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\04\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00")
  (data $d1 (i32.const 1052892) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
 
