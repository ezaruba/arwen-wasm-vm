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
  (type $t21 (func (param i64 i32) (result i32)))
  (type $t22 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t23 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
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
    i64.const 0
    call $env.bigIntNew)
  (func $f34 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1
    i32.store8 offset=12
    i32.const 0
    local.set $l2
    local.get $l1
    i32.const 0
    i32.store offset=8
    local.get $l1
    i64.const 1
    i64.store
    local.get $l1
    i32.const 16
    i32.add
    local.get $l1
    call $f35
    block $B0
      block $B1
        local.get $l1
        i32.load offset=16
        i32.const 7
        i32.ne
        br_if $B1
        local.get $l1
        i32.const 16
        i32.add
        call $f36
        local.get $p0
        local.get $l1
        i64.load
        i64.store offset=4 align=4
        local.get $p0
        i32.const 12
        i32.add
        local.get $l1
        i32.const 8
        i32.add
        i32.load
        i32.store
        br $B0
      end
      local.get $p0
      local.get $l1
      i64.load offset=16
      i64.store offset=4 align=4
      local.get $p0
      i32.const 12
      i32.add
      local.get $l1
      i32.const 24
      i32.add
      i64.load
      i64.store align=4
      local.get $l1
      call $f37
      i32.const 1
      local.set $l2
    end
    local.get $p0
    local.get $l2
    i32.store
    local.get $l1
    i32.const 32
    i32.add
    global.set $g0)
  (func $f35 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    i32.const 7
    i32.store
    local.get $p1
    i32.const 0
    i32.store8 offset=12)
  (func $f36 (type $t2) (param $p0 i32)
    block $B0
      local.get $p0
      i32.load
      i32.const 7
      i32.eq
      br_if $B0
      local.get $p0
      call $f81
    end)
  (func $f37 (type $t2) (param $p0 i32)
    local.get $p0
    call $f90)
  (func $f38 (type $t2) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 7
    i32.store
    local.get $l1
    call $f36
    local.get $p0
    i32.const 8
    i32.add
    i64.const 0
    i64.store align=4
    local.get $p0
    i64.const 4294967296
    i64.store align=4
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $f39 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 1
    i32.store8 offset=12
    local.get $l2
    i32.const 0
    i32.store offset=8
    local.get $l2
    i64.const 1
    i64.store
    local.get $l2
    i32.const 16
    i32.add
    local.get $p1
    call $env.bigIntUnsignedByteLength
    call $f40
    local.get $p1
    local.get $l2
    i32.load offset=16
    call $env.bigIntGetUnsignedBytes
    drop
    local.get $l2
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get $l2
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    i32.load
    local.tee $p1
    i32.store
    local.get $l2
    local.get $l2
    i64.load offset=16
    local.tee $l3
    i64.store offset=48
    local.get $l2
    local.get $l3
    i32.wrap_i64
    local.get $p1
    call $f41
    local.get $l2
    i32.const 48
    i32.add
    call $f37
    local.get $l2
    i32.const 16
    i32.add
    i32.const 12
    i32.add
    local.get $l2
    i32.const 36
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get $l2
    i32.const 7
    i32.store offset=16
    local.get $l2
    local.get $l2
    i64.load offset=36 align=4
    i64.store offset=20 align=4
    local.get $l2
    i32.const 16
    i32.add
    call $f36
    local.get $p0
    i32.const 12
    i32.add
    local.get $l2
    i32.load offset=8
    i32.store
    local.get $p0
    local.get $l2
    i64.load
    i64.store offset=4 align=4
    local.get $p0
    i32.const 0
    i32.store
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0)
  (func $f40 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    local.get $p1
    i32.const 1
    call $f111
    local.get $l2
    i64.load offset=8
    local.set $l3
    local.get $p0
    local.get $p1
    i32.store offset=8
    local.get $p0
    local.get $l3
    i64.store align=4
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $f41 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p1
    local.get $p2
    i32.add
    call $f125)
  (func $f42 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=16
    local.get $l2
    i64.const 1
    i64.store offset=8
    local.get $l2
    i32.const 1
    i32.store8 offset=20
    local.get $p1
    i32.load
    local.set $l3
    local.get $l2
    i32.const 56
    i32.add
    local.get $l2
    i32.const 8
    i32.add
    local.get $p1
    i32.load offset=8
    local.tee $l4
    call $f43
    block $B0
      block $B1
        local.get $l2
        i32.load offset=56
        i32.const 1
        i32.ne
        br_if $B1
        local.get $l2
        i32.const 40
        i32.add
        i32.const 8
        i32.add
        local.get $l2
        i32.const 72
        i32.add
        i32.load
        i32.store
        local.get $l2
        local.get $l2
        i32.const 56
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store offset=40
        local.get $l2
        i32.load offset=60
        local.set $l5
        br $B0
      end
      local.get $l2
      i32.load offset=60
      local.set $l6
      loop $L2
        block $B3
          local.get $l4
          br_if $B3
          i32.const 7
          local.set $l5
          br $B0
        end
        local.get $l2
        i32.const 56
        i32.add
        local.get $l3
        i32.load8_u
        local.get $l6
        call $f44
        block $B4
          local.get $l2
          i32.load offset=56
          local.tee $l5
          i32.const 7
          i32.eq
          br_if $B4
          local.get $l2
          i32.const 48
          i32.add
          local.get $l2
          i32.const 68
          i32.add
          i32.load
          i32.store
          local.get $l2
          local.get $l2
          i64.load offset=60 align=4
          i64.store offset=40
          br $B0
        end
        local.get $l4
        i32.const -1
        i32.add
        local.set $l4
        local.get $l3
        i32.const 1
        i32.add
        local.set $l3
        local.get $l2
        i32.const 56
        i32.add
        call $f36
        br $L2
      end
    end
    local.get $l2
    i32.const 24
    i32.add
    i32.const 12
    i32.add
    local.get $l2
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get $l2
    local.get $l2
    i64.load offset=40
    i64.store offset=28 align=4
    local.get $l2
    local.get $l5
    i32.store offset=24
    block $B5
      block $B6
        local.get $l5
        i32.const 7
        i32.ne
        br_if $B6
        local.get $l2
        i32.const 24
        i32.add
        call $f36
        local.get $p0
        local.get $l2
        i64.load offset=8
        i64.store offset=4 align=4
        local.get $p0
        i32.const 12
        i32.add
        local.get $l2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        i32.const 0
        local.set $l4
        br $B5
      end
      local.get $p0
      local.get $l2
      i64.load offset=24
      i64.store offset=4 align=4
      local.get $p0
      i32.const 12
      i32.add
      local.get $l2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store align=4
      local.get $l2
      i32.const 8
      i32.add
      call $f37
      i32.const 1
      local.set $l4
    end
    local.get $p1
    call $f37
    local.get $p0
    local.get $l4
    i32.store
    local.get $l2
    i32.const 80
    i32.add
    global.set $g0)
  (func $f43 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.load8_u offset=12
      br_if $B0
      local.get $p1
      local.get $p2
      call $f266
    end
    local.get $p0
    local.get $p1
    i32.store offset=4
    local.get $p1
    i32.const 0
    i32.store8 offset=12
    local.get $p0
    i32.const 0
    i32.store)
  (func $f44 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p2
    local.get $p1
    call $f112)
  (func $f45 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=16
    local.get $l2
    i64.const 1
    i64.store offset=8
    local.get $l2
    i32.const 0
    i32.store8 offset=20
    i32.const -7
    local.set $l3
    block $B0
      block $B1
        loop $L2
          block $B3
            local.get $l3
            br_if $B3
            local.get $l2
            i32.const 7
            i32.store offset=40
            br $B1
          end
          local.get $l2
          i32.const 64
          i32.add
          local.get $l3
          i32.const 1050566
          i32.add
          i32.load8_u
          local.get $l2
          i32.const 8
          i32.add
          call $f44
          block $B4
            local.get $l2
            i32.load offset=64
            i32.const 7
            i32.ne
            br_if $B4
            local.get $l3
            i32.const 1
            i32.add
            local.set $l3
            local.get $l2
            i32.const 64
            i32.add
            call $f36
            br $L2
          end
        end
        local.get $l2
        i32.const 40
        i32.add
        i32.const 8
        i32.add
        local.get $l2
        i32.const 64
        i32.add
        i32.const 8
        i32.add
        local.tee $l4
        i64.load
        i64.store
        local.get $l2
        local.get $l2
        i64.load offset=64
        local.tee $l5
        i64.store offset=40
        local.get $l5
        i32.wrap_i64
        local.tee $l3
        i32.const 7
        i32.eq
        br_if $B1
        local.get $l4
        local.get $l2
        i32.const 52
        i32.add
        i32.load
        i32.store
        local.get $l2
        local.get $l2
        i64.load offset=44 align=4
        i64.store offset=64
        br $B0
      end
      local.get $l2
      i32.const 40
      i32.add
      call $f36
      local.get $l2
      i32.const 0
      i32.store8 offset=20
      local.get $l2
      i64.const 137438953472
      i64.store offset=56
      block $B5
        block $B6
          loop $L7
            local.get $l2
            local.get $l2
            i32.const 56
            i32.add
            call $f46
            block $B8
              local.get $l2
              i32.load
              br_if $B8
              local.get $l2
              i32.const 7
              i32.store offset=40
              br $B5
            end
            block $B9
              local.get $l2
              i32.load offset=4
              local.tee $l3
              i32.const 31
              i32.gt_u
              br_if $B9
              local.get $l2
              i32.const 64
              i32.add
              local.get $p1
              local.get $l3
              i32.add
              i32.load8_u
              local.get $l2
              i32.const 8
              i32.add
              call $f44
              local.get $l2
              i32.load offset=64
              i32.const 7
              i32.ne
              br_if $B6
              local.get $l2
              i32.const 64
              i32.add
              call $f36
              br $L7
            end
          end
          local.get $l3
          i32.const 32
          i32.const 1048960
          call $f47
          unreachable
        end
        local.get $l2
        i32.const 40
        i32.add
        i32.const 8
        i32.add
        local.get $l2
        i32.const 64
        i32.add
        i32.const 8
        i32.add
        local.tee $p1
        i64.load
        i64.store
        local.get $l2
        local.get $l2
        i64.load offset=64
        local.tee $l5
        i64.store offset=40
        local.get $l5
        i32.wrap_i64
        local.tee $l3
        i32.const 7
        i32.eq
        br_if $B5
        local.get $p1
        local.get $l2
        i32.const 52
        i32.add
        i32.load
        i32.store
        local.get $l2
        local.get $l2
        i64.load offset=44 align=4
        i64.store offset=64
        br $B0
      end
      local.get $l2
      i32.const 40
      i32.add
      call $f36
      i32.const 7
      local.set $l3
    end
    local.get $l2
    i32.const 24
    i32.add
    i32.const 12
    i32.add
    local.get $l2
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get $l2
    local.get $l2
    i64.load offset=64
    i64.store offset=28 align=4
    local.get $l2
    local.get $l3
    i32.store offset=24
    block $B10
      block $B11
        local.get $l3
        i32.const 7
        i32.ne
        br_if $B11
        local.get $l2
        i32.const 24
        i32.add
        call $f36
        local.get $p0
        local.get $l2
        i64.load offset=8
        i64.store offset=4 align=4
        local.get $p0
        i32.const 12
        i32.add
        local.get $l2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        i32.const 0
        local.set $l3
        br $B10
      end
      local.get $p0
      local.get $l2
      i64.load offset=24
      i64.store offset=4 align=4
      local.get $p0
      i32.const 12
      i32.add
      local.get $l2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store align=4
      local.get $l2
      i32.const 8
      i32.add
      call $f37
      i32.const 1
      local.set $l3
    end
    local.get $p0
    local.get $l3
    i32.store
    local.get $l2
    i32.const 80
    i32.add
    global.set $g0)
  (func $f46 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    i32.const 0
    local.set $l2
    block $B0
      local.get $p1
      i32.load
      local.tee $l3
      local.get $p1
      i32.load offset=4
      i32.ge_u
      br_if $B0
      local.get $l3
      i32.const 1
      i32.add
      local.tee $l4
      local.get $l3
      i32.lt_u
      br_if $B0
      local.get $p1
      local.get $l4
      i32.store
      i32.const 1
      local.set $l2
    end
    local.get $p0
    local.get $l3
    i32.store offset=4
    local.get $p0
    local.get $l2
    i32.store)
  (func $f47 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1051120
    i32.store offset=8
    local.get $l3
    i32.const 1
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    call $f234
    unreachable)
  (func $f48 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 0
    local.set $l4
    local.get $l3
    i32.const 0
    i32.store offset=8
    local.get $l3
    i64.const 1
    i64.store
    local.get $l3
    i32.const 0
    i32.store8 offset=12
    block $B0
      block $B1
        loop $L2
          block $B3
            local.get $l4
            i32.const 6
            i32.ne
            br_if $B3
            local.get $l3
            i32.const 7
            i32.store offset=48
            br $B1
          end
          local.get $l3
          i32.const 64
          i32.add
          local.get $p1
          local.get $l4
          i32.add
          i32.load8_u
          local.get $l3
          call $f44
          block $B4
            local.get $l3
            i32.load offset=64
            i32.const 7
            i32.ne
            br_if $B4
            local.get $l4
            i32.const 1
            i32.add
            local.set $l4
            local.get $l3
            i32.const 64
            i32.add
            call $f36
            br $L2
          end
        end
        local.get $l3
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.get $l3
        i32.const 64
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get $l3
        local.get $l3
        i64.load offset=64
        local.tee $l5
        i64.store offset=48
        local.get $l5
        i32.wrap_i64
        local.tee $l4
        i32.const 7
        i32.eq
        br_if $B1
        local.get $l3
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        local.get $l3
        i32.const 60
        i32.add
        i32.load
        i32.store
        local.get $l3
        local.get $l3
        i64.load offset=52 align=4
        i64.store offset=32
        br $B0
      end
      local.get $l3
      i32.const 48
      i32.add
      call $f36
      local.get $l3
      i32.const 64
      i32.add
      local.get $l3
      local.get $p2
      i64.extend_i32_u
      call $f49
      block $B5
        local.get $l3
        i32.load offset=64
        local.tee $l4
        i32.const 7
        i32.eq
        br_if $B5
        local.get $l3
        i32.const 40
        i32.add
        local.get $l3
        i32.const 76
        i32.add
        i32.load
        i32.store
        local.get $l3
        local.get $l3
        i64.load offset=68 align=4
        i64.store offset=32
        br $B0
      end
      local.get $l3
      i32.const 64
      i32.add
      call $f36
      i32.const 7
      local.set $l4
    end
    local.get $l3
    i32.const 16
    i32.add
    i32.const 12
    i32.add
    local.get $l3
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get $l3
    local.get $l3
    i64.load offset=32
    i64.store offset=20 align=4
    local.get $l3
    local.get $l4
    i32.store offset=16
    block $B6
      block $B7
        local.get $l4
        i32.const 7
        i32.ne
        br_if $B7
        local.get $l3
        i32.const 16
        i32.add
        call $f36
        local.get $p0
        local.get $l3
        i64.load
        i64.store offset=4 align=4
        local.get $p0
        i32.const 12
        i32.add
        local.get $l3
        i32.const 8
        i32.add
        i32.load
        i32.store
        i32.const 0
        local.set $l4
        br $B6
      end
      local.get $p0
      local.get $l3
      i64.load offset=16
      i64.store offset=4 align=4
      local.get $p0
      i32.const 12
      i32.add
      local.get $l3
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store align=4
      local.get $l3
      call $f37
      i32.const 1
      local.set $l4
    end
    local.get $p0
    local.get $l4
    i32.store
    local.get $l3
    i32.const 80
    i32.add
    global.set $g0)
  (func $f49 (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i64)
    local.get $p1
    local.get $p2
    i32.const 64
    local.get $p1
    i32.load8_u offset=12
    call $f51
    local.get $p0
    i32.const 7
    i32.store)
  (func $f50 (type $t15) (param $p0 i64)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1
    i32.store8 offset=28
    local.get $l1
    i32.const 0
    i32.store offset=24
    local.get $l1
    i64.const 1
    i64.store offset=16
    local.get $l1
    i32.const 16
    i32.add
    local.get $p0
    i32.const 64
    i32.const 1
    call $f51
    local.get $l1
    i32.const 8
    i32.add
    local.get $l1
    i32.load offset=24
    local.tee $l2
    i32.store
    local.get $l1
    local.get $l1
    i64.load offset=16
    local.tee $p0
    i64.store
    local.get $p0
    i32.wrap_i64
    local.get $l2
    call $env.finish
    local.get $l1
    call $f37
    local.get $l1
    i32.const 32
    i32.add
    global.set $g0)
  (func $f51 (type $t16) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    local.get $p2
    i32.const -8
    i32.add
    local.set $p2
    block $B0
      loop $L1
        local.get $p2
        i32.const -1
        i32.le_s
        br_if $B0
        local.get $p3
        local.get $p1
        local.get $p2
        i32.const 63
        i32.and
        i64.extend_i32_u
        i64.shr_u
        i32.wrap_i64
        local.tee $l4
        i32.const 255
        i32.and
        i32.eqz
        i32.and
        local.set $l5
        i32.const 1
        local.set $p3
        block $B2
          local.get $l5
          br_if $B2
          local.get $p0
          local.get $l4
          call $f265
          i32.const 0
          local.set $p3
        end
        local.get $p2
        i32.const -8
        i32.add
        local.set $p2
        br $L1
      end
    end)
  (func $f52 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $f53
    unreachable)
  (func $f53 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $f64
    unreachable)
  (func $f54 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    i32.const 0
    i32.store offset=24
    local.get $l5
    i64.const 1
    i64.store offset=16
    local.get $l5
    i32.const 16
    i32.add
    local.get $p0
    local.get $p1
    call $f41
    local.get $l5
    i32.const 16
    i32.add
    i32.const 1048591
    i32.const 2
    call $f41
    local.get $l5
    i32.const 16
    i32.add
    local.get $p2
    local.get $p3
    call $f41
    local.get $l5
    i32.const 16
    i32.add
    i32.const 1048593
    i32.const 3
    call $f41
    local.get $l5
    i32.const 8
    i32.add
    local.get $p4
    call $f55
    local.get $l5
    i32.const 16
    i32.add
    local.get $l5
    i32.load offset=8
    local.get $l5
    i32.load offset=12
    call $f41
    local.get $l5
    i32.load offset=16
    local.get $l5
    i32.load offset=24
    call $f53
    unreachable)
  (func $f55 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    i32.const 1055313
    local.set $l2
    i32.const 21
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  local.get $p1
                  i32.load
                  br_table $B0 $B5 $B4 $B3 $B2 $B1 $B6 $B0
                end
                local.get $p1
                i32.const 12
                i32.add
                i32.load
                local.set $l3
                local.get $p1
                i32.load offset=4
                local.set $l2
                br $B0
              end
              i32.const 1055294
              local.set $l2
              i32.const 19
              local.set $l3
              br $B0
            end
            i32.const 1055270
            local.set $l2
            i32.const 24
            local.set $l3
            br $B0
          end
          i32.const 1055255
          local.set $l2
          i32.const 15
          local.set $l3
          br $B0
        end
        i32.const 1055241
        local.set $l2
        i32.const 14
        local.set $l3
        br $B0
      end
      i32.const 1055228
      local.set $l2
      i32.const 13
      local.set $l3
    end
    local.get $p0
    local.get $l3
    i32.store offset=4
    local.get $p0
    local.get $l2
    i32.store)
  (func $f56 (type $t9) (param $p0 i32) (result i64)
    (local $l1 i32) (local $l2 i64)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    local.get $p0
    call $f57
    block $B0
      local.get $l1
      i32.load offset=8
      local.tee $p0
      i32.const 8
      i32.gt_u
      br_if $B0
      local.get $l1
      i32.load
      local.get $p0
      call $f58
      local.set $l2
      local.get $l1
      call $f37
      local.get $l1
      i32.const 16
      i32.add
      global.set $g0
      local.get $l2
      return
    end
    i32.const 1054569
    i32.const 21
    call $f52
    unreachable)
  (func $f57 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    call $env.getArgumentLength
    local.tee $l3
    call $f268
    local.get $l2
    local.get $l3
    i32.store offset=8
    local.get $p1
    local.get $l2
    i32.load
    call $env.getArgument
    drop
    local.get $p0
    i32.const 8
    i32.add
    local.get $l2
    i32.load offset=8
    i32.store
    local.get $p0
    local.get $l2
    i64.load
    i64.store align=4
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $f58 (type $t11) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i64)
    i64.const 0
    local.set $l2
    block $B0
      local.get $p1
      i32.eqz
      br_if $B0
      loop $L1
        local.get $p1
        i32.eqz
        br_if $B0
        local.get $p1
        i32.const -1
        i32.add
        local.set $p1
        local.get $l2
        i64.const 8
        i64.shl
        local.get $p0
        i64.load8_u
        i64.or
        local.set $l2
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        br $L1
      end
    end
    local.get $l2)
  (func $f59 (type $t2) (param $p0 i32)
    block $B0
      call $env.getNumArguments
      local.get $p0
      i32.ne
      br_if $B0
      return
    end
    i32.const 1054460
    i32.const 25
    call $f52
    unreachable)
  (func $f60 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 24
    i32.add
    local.tee $l3
    i64.const 0
    i64.store
    local.get $l2
    i32.const 16
    i32.add
    local.tee $l4
    i64.const 0
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    local.tee $l5
    i64.const 0
    i64.store
    local.get $l2
    i64.const 0
    i64.store
    block $B0
      local.get $p1
      local.get $l2
      call $env.getArgument
      i32.const 32
      i32.eq
      br_if $B0
      i32.const 1054590
      i32.const 44
      call $f52
      unreachable
    end
    local.get $p0
    local.get $l2
    i64.load
    i64.store align=1
    local.get $p0
    i32.const 24
    i32.add
    local.get $l3
    i64.load
    i64.store align=1
    local.get $p0
    i32.const 16
    i32.add
    local.get $l4
    i64.load
    i64.store align=1
    local.get $p0
    i32.const 8
    i32.add
    local.get $l5
    i64.load
    i64.store align=1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0)
  (func $f61 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p0
    local.get $p1
    call $env.bigIntAdd)
  (func $f62 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p0
    local.get $p1
    call $f63)
  (func $f63 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $env.bigIntSub
    block $B0
      local.get $p0
      call $env.bigIntSign
      i32.const 0
      i32.lt_s
      br_if $B0
      return
    end
    i32.const 1054634
    i32.const 48
    call $f269
    unreachable)
  (func $f64 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $env.signalError
    unreachable)
  (func $f65 (type $t2) (param $p0 i32)
    local.get $p0
    i32.const 32
    call $env.finish)
  (func $f66 (type $t13) (result i64)
    i32.const 0
    call $env.int64getArgument)
  (func $f67 (type $t7) (result i32)
    (local $l0 i32)
    i32.const 0
    i64.const 0
    call $env.bigIntNew
    local.tee $l0
    call $env.bigIntGetUnsignedArgument
    local.get $l0)
  (func $f68 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    local.get $p0
    local.get $p1
    i64.const 0
    call $env.bigIntNew
    local.tee $l2
    call $env.bigIntStorageLoadUnsigned
    drop
    local.get $l2)
  (func $f69 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $env.bigIntStorageStoreUnsigned
    drop)
  (func $f70 (type $t7) (result i32)
    (local $l0 i32)
    i64.const 0
    call $env.bigIntNew
    local.tee $l0
    call $env.bigIntGetCallValue
    local.get $l0)
  (func $f71 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    i32.load offset=24
    i32.const 1048976
    i32.const 6
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t0) $T0)
  (func $f72 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type $t1) $T0)
  (func $f73 (type $t18) (param $p0 i32) (param $p1 i64) (result i32)
    local.get $p0
    local.get $p1
    call $env.bigIntNew
    call $f74
    i32.const 255
    i32.and
    i32.const 1
    i32.eq)
  (func $f74 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 1
    i32.const -1
    local.get $p0
    local.get $p1
    call $env.bigIntCmp
    local.tee $p0
    i32.const 0
    i32.gt_s
    select
    i32.const 0
    local.get $p0
    select)
  (func $f75 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $f74
    i32.const 255
    i32.and
    i32.const 1
    i32.eq)
  (func $f76 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1048740
    local.get $l2
    i32.const 8
    i32.add
    call $f77
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f77 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 36
    i32.add
    local.get $p1
    i32.store
    local.get $l3
    i32.const 3
    i32.store8 offset=40
    local.get $l3
    i64.const 137438953472
    i64.store offset=8
    local.get $l3
    local.get $p0
    i32.store offset=32
    i32.const 0
    local.set $l4
    local.get $l3
    i32.const 0
    i32.store offset=24
    local.get $l3
    i32.const 0
    i32.store offset=16
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p2
            i32.load offset=8
            local.tee $l5
            i32.eqz
            br_if $B3
            local.get $p2
            i32.load
            local.set $l6
            local.get $p2
            i32.load offset=4
            local.tee $l7
            local.get $p2
            i32.const 12
            i32.add
            i32.load
            local.tee $l8
            local.get $l8
            local.get $l7
            i32.gt_u
            select
            local.tee $l9
            i32.eqz
            br_if $B2
            local.get $p2
            i32.const 20
            i32.add
            i32.load
            local.set $l10
            local.get $p2
            i32.load offset=16
            local.set $l11
            i32.const 1
            local.set $l8
            local.get $p0
            local.get $l6
            i32.load
            local.get $l6
            i32.load offset=4
            local.get $p1
            i32.load offset=12
            call_indirect (type $t0) $T0
            br_if $B0
            local.get $l5
            i32.const 16
            i32.add
            local.set $p2
            local.get $l6
            i32.const 8
            i32.add
            local.set $p0
            i32.const 1
            local.set $l4
            block $B4
              block $B5
                loop $L6
                  local.get $l3
                  local.get $p2
                  i32.const -12
                  i32.add
                  i32.load
                  i32.store offset=12
                  local.get $l3
                  local.get $p2
                  i32.const 12
                  i32.add
                  i32.load8_u
                  i32.store8 offset=40
                  local.get $l3
                  local.get $p2
                  i32.const -8
                  i32.add
                  i32.load
                  i32.store offset=8
                  local.get $p2
                  i32.const 8
                  i32.add
                  i32.load
                  local.set $l8
                  i32.const 0
                  local.set $l5
                  i32.const 0
                  local.set $p1
                  block $B7
                    block $B8
                      block $B9
                        local.get $p2
                        i32.const 4
                        i32.add
                        i32.load
                        br_table $B8 $B9 $B7 $B8
                      end
                      local.get $l8
                      local.get $l10
                      i32.ge_u
                      br_if $B5
                      local.get $l8
                      i32.const 3
                      i32.shl
                      local.set $l12
                      i32.const 0
                      local.set $p1
                      local.get $l11
                      local.get $l12
                      i32.add
                      local.tee $l12
                      i32.load offset=4
                      i32.const 2
                      i32.ne
                      br_if $B7
                      local.get $l12
                      i32.load
                      i32.load
                      local.set $l8
                    end
                    i32.const 1
                    local.set $p1
                  end
                  local.get $l3
                  local.get $l8
                  i32.store offset=20
                  local.get $l3
                  local.get $p1
                  i32.store offset=16
                  local.get $p2
                  i32.load
                  local.set $l8
                  block $B10
                    block $B11
                      block $B12
                        local.get $p2
                        i32.const -4
                        i32.add
                        i32.load
                        br_table $B11 $B12 $B10 $B11
                      end
                      local.get $l8
                      local.get $l10
                      i32.ge_u
                      br_if $B4
                      local.get $l8
                      i32.const 3
                      i32.shl
                      local.set $p1
                      local.get $l11
                      local.get $p1
                      i32.add
                      local.tee $p1
                      i32.load offset=4
                      i32.const 2
                      i32.ne
                      br_if $B10
                      local.get $p1
                      i32.load
                      i32.load
                      local.set $l8
                    end
                    i32.const 1
                    local.set $l5
                  end
                  local.get $l3
                  local.get $l8
                  i32.store offset=28
                  local.get $l3
                  local.get $l5
                  i32.store offset=24
                  block $B13
                    local.get $p2
                    i32.const -16
                    i32.add
                    i32.load
                    local.tee $l8
                    local.get $l10
                    i32.ge_u
                    br_if $B13
                    local.get $l11
                    local.get $l8
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee $l8
                    i32.load
                    local.get $l3
                    i32.const 8
                    i32.add
                    local.get $l8
                    i32.load offset=4
                    call_indirect (type $t1) $T0
                    br_if $B1
                    local.get $l4
                    local.get $l9
                    i32.ge_u
                    br_if $B2
                    local.get $p0
                    i32.const 4
                    i32.add
                    local.set $p1
                    local.get $p0
                    i32.load
                    local.set $l5
                    local.get $p2
                    i32.const 32
                    i32.add
                    local.set $p2
                    local.get $p0
                    i32.const 8
                    i32.add
                    local.set $p0
                    i32.const 1
                    local.set $l8
                    local.get $l4
                    i32.const 1
                    i32.add
                    local.set $l4
                    local.get $l3
                    i32.load offset=32
                    local.get $l5
                    local.get $p1
                    i32.load
                    local.get $l3
                    i32.load offset=36
                    i32.load offset=12
                    call_indirect (type $t0) $T0
                    i32.eqz
                    br_if $L6
                    br $B0
                  end
                end
                local.get $l8
                local.get $l10
                i32.const 1051704
                call $f47
                unreachable
              end
              local.get $l8
              local.get $l10
              i32.const 1051688
              call $f47
              unreachable
            end
            local.get $l8
            local.get $l10
            i32.const 1051688
            call $f47
            unreachable
          end
          local.get $p2
          i32.load
          local.set $l6
          local.get $p2
          i32.load offset=4
          local.tee $l7
          local.get $p2
          i32.const 20
          i32.add
          i32.load
          local.tee $l8
          local.get $l8
          local.get $l7
          i32.gt_u
          select
          local.tee $l10
          i32.eqz
          br_if $B2
          local.get $p2
          i32.load offset=16
          local.set $p2
          i32.const 1
          local.set $l8
          local.get $p0
          local.get $l6
          i32.load
          local.get $l6
          i32.load offset=4
          local.get $p1
          i32.load offset=12
          call_indirect (type $t0) $T0
          br_if $B0
          local.get $l6
          i32.const 8
          i32.add
          local.set $p0
          i32.const 1
          local.set $l4
          loop $L14
            local.get $p2
            i32.load
            local.get $l3
            i32.const 8
            i32.add
            local.get $p2
            i32.const 4
            i32.add
            i32.load
            call_indirect (type $t1) $T0
            br_if $B1
            local.get $l4
            local.get $l10
            i32.ge_u
            br_if $B2
            local.get $p0
            i32.const 4
            i32.add
            local.set $p1
            local.get $p0
            i32.load
            local.set $l5
            local.get $p2
            i32.const 8
            i32.add
            local.set $p2
            local.get $p0
            i32.const 8
            i32.add
            local.set $p0
            i32.const 1
            local.set $l8
            local.get $l4
            i32.const 1
            i32.add
            local.set $l4
            local.get $l3
            i32.load offset=32
            local.get $l5
            local.get $p1
            i32.load
            local.get $l3
            i32.load offset=36
            i32.load offset=12
            call_indirect (type $t0) $T0
            i32.eqz
            br_if $L14
            br $B0
          end
        end
        block $B15
          local.get $l7
          local.get $l4
          i32.le_u
          br_if $B15
          i32.const 1
          local.set $l8
          local.get $l3
          i32.load offset=32
          local.get $l6
          local.get $l4
          i32.const 3
          i32.shl
          i32.add
          local.tee $p2
          i32.load
          local.get $p2
          i32.load offset=4
          local.get $l3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type $t0) $T0
          br_if $B0
        end
        i32.const 0
        local.set $l8
        br $B0
      end
      i32.const 1
      local.set $l8
    end
    local.get $l3
    i32.const 48
    i32.add
    global.set $g0
    local.get $l8)
  (func $f78 (type $t2) (param $p0 i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    i32.load
    call_indirect (type $t2) $T0
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    local.tee $p0
    i32.load offset=4
    local.get $p0
    i32.load offset=8
    call $f79)
  (func $f79 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $p1
      local.get $p2
      call $f115
    end)
  (func $f80 (type $t2) (param $p0 i32)
    block $B0
      local.get $p0
      i32.load8_u
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const 4
      i32.add
      call $f81
    end)
  (func $f81 (type $t2) (param $p0 i32)
    block $B0
      local.get $p0
      i32.load
      i32.const 5
      i32.le_u
      br_if $B0
      local.get $p0
      i32.const 4
      i32.add
      call $f37
    end)
  (func $f82 (type $t2) (param $p0 i32))
  (func $f83 (type $t2) (param $p0 i32))
  (func $f84 (type $t2) (param $p0 i32))
  (func $f85 (type $t2) (param $p0 i32))
  (func $f86 (type $t2) (param $p0 i32)
    (local $l1 i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    call $f87
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      local.get $l1
      i32.const 12
      i32.mul
      i32.const 4
      call $f79
    end)
  (func $f87 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p1
    i32.const 12
    i32.mul
    local.set $p1
    block $B0
      loop $L1
        local.get $p1
        i32.eqz
        br_if $B0
        local.get $p1
        i32.const -12
        i32.add
        local.set $p1
        local.get $p0
        call $f37
        local.get $p0
        i32.const 12
        i32.add
        local.set $p0
        br $L1
      end
    end)
  (func $f88 (type $t2) (param $p0 i32)
    block $B0
      local.get $p0
      i32.load
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const 4
      i32.add
      call $f81
    end)
  (func $f89 (type $t2) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      local.get $l1
      i32.const 96
      i32.mul
      i32.const 1
      call $f79
    end)
  (func $f90 (type $t2) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      local.get $l1
      i32.const 1
      call $f115
    end)
  (func $f91 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      local.get $p2
      i32.popcnt
      i32.const 1
      i32.eq
      br_if $B0
      i32.const 1048856
      i32.const 43
      local.get $l3
      i32.const 8
      i32.add
      i32.const 1048900
      i32.const 1048840
      call $f92
      unreachable
    end
    local.get $p0
    local.get $p2
    i32.store offset=4
    local.get $p0
    local.get $p2
    local.get $p1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get $p2
    i32.sub
    i32.and
    i32.store
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0)
  (func $f92 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p1
    i32.store offset=12
    local.get $l5
    local.get $p0
    i32.store offset=8
    local.get $l5
    local.get $p3
    i32.store offset=20
    local.get $l5
    local.get $p2
    i32.store offset=16
    local.get $l5
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get $l5
    i32.const 60
    i32.add
    i32.const 3
    i32.store
    local.get $l5
    i64.const 2
    i64.store offset=28 align=4
    local.get $l5
    i32.const 1054180
    i32.store offset=24
    local.get $l5
    i32.const 4
    i32.store offset=52
    local.get $l5
    local.get $l5
    i32.const 48
    i32.add
    i32.store offset=40
    local.get $l5
    local.get $l5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get $l5
    local.get $l5
    i32.const 8
    i32.add
    i32.store offset=48
    local.get $l5
    i32.const 24
    i32.add
    local.get $p4
    call $f234
    unreachable)
  (func $f93 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i64.const 17179869196
    i64.store offset=24
    block $B0
      block $B1
        local.get $p1
        i64.extend_i32_u
        i64.const 12
        i64.mul
        local.tee $l3
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.tee $p1
        i32.eqz
        br_if $B1
        i32.const 0
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.eqz
      i32.const 2
      i32.shl
      local.tee $p1
      i32.store offset=20
      local.get $l2
      local.get $l3
      i32.wrap_i64
      local.tee $l4
      i32.store offset=16
      local.get $l2
      i32.const 8
      i32.add
      local.get $l4
      local.get $p1
      call $f91
      local.get $l2
      i32.load offset=12
      local.set $p1
      local.get $l2
      i32.load offset=8
      local.set $l4
    end
    local.get $p0
    local.get $p1
    i32.store offset=4
    local.get $p0
    local.get $l4
    i32.store
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0)
  (func $f94 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i64.const 4294967392
    i64.store offset=24
    block $B0
      block $B1
        local.get $p1
        i64.extend_i32_u
        i64.const 96
        i64.mul
        local.tee $l3
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.tee $p1
        i32.eqz
        br_if $B1
        i32.const 0
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.eqz
      local.tee $p1
      i32.store offset=20
      local.get $l2
      local.get $l3
      i32.wrap_i64
      local.tee $l4
      i32.store offset=16
      local.get $l2
      i32.const 8
      i32.add
      local.get $l4
      local.get $p1
      call $f91
      local.get $l2
      i32.load offset=12
      local.set $p1
      local.get $l2
      i32.load offset=8
      local.set $l4
    end
    local.get $p0
    local.get $p1
    i32.store offset=4
    local.get $p0
    local.get $l4
    i32.store
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0)
  (func $f95 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B1
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.store8 offset=12
          i32.const 1
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 31
        i32.and
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get $l2
      local.get $p1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get $l2
      local.get $p1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set $p1
    end
    local.get $p0
    local.get $l2
    i32.const 12
    i32.add
    local.get $p1
    call $f41
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    i32.const 0)
  (func $f96 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $p0
    local.get $l2
    i32.const 8
    i32.add
    call $f76
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f97 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p2
    call $f41
    i32.const 0)
  (func $f98 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    local.get $p1
    call $f93
    block $B0
      block $B1
        block $B2
          local.get $l2
          i32.load offset=12
          local.tee $p1
          i32.eqz
          br_if $B2
          local.get $l2
          i32.load offset=8
          local.tee $l3
          i32.const -1
          i32.le_s
          br_if $B1
          local.get $l2
          local.get $l3
          local.get $p1
          call $f99
          local.get $l2
          i32.load
          local.tee $p1
          i32.eqz
          br_if $B0
          local.get $l2
          i32.load offset=4
          local.set $l3
          local.get $p0
          i32.const 0
          i32.store offset=8
          local.get $p0
          local.get $p1
          i32.store
          local.get $p0
          local.get $l3
          i32.const 12
          i32.div_u
          i32.store offset=4
          local.get $l2
          i32.const 16
          i32.add
          global.set $g0
          return
        end
        call $f100
        unreachable
      end
      call $f101
      unreachable
    end
    call $f102
    unreachable)
  (func $f99 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      block $B1
        local.get $p1
        br_if $B1
        i32.const 0
        local.set $p1
        br $B0
      end
      local.get $p1
      local.get $p2
      call $f114
      local.set $p2
    end
    local.get $p0
    local.get $p1
    i32.store offset=4
    local.get $p0
    local.get $p2
    i32.store)
  (func $f100 (type $t19)
    call $f108
    unreachable)
  (func $f101 (type $t19)
    call $f108
    unreachable)
  (func $f102 (type $t19)
    call $f227
    unreachable)
  (func $f103 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    local.get $p1
    call $f94
    block $B0
      block $B1
        block $B2
          local.get $l2
          i32.load offset=12
          local.tee $p1
          i32.eqz
          br_if $B2
          local.get $l2
          i32.load offset=8
          local.tee $l3
          i32.const -1
          i32.le_s
          br_if $B1
          local.get $l2
          local.get $l3
          local.get $p1
          call $f99
          local.get $l2
          i32.load
          local.tee $p1
          i32.eqz
          br_if $B0
          local.get $l2
          i32.load offset=4
          local.set $l3
          local.get $p0
          i32.const 0
          i32.store offset=8
          local.get $p0
          local.get $p1
          i32.store
          local.get $p0
          local.get $l3
          i32.const 96
          i32.div_u
          i32.store offset=4
          local.get $l2
          i32.const 16
          i32.add
          global.set $g0
          return
        end
        call $f104
        unreachable
      end
      call $f105
      unreachable
    end
    call $f102
    unreachable)
  (func $f104 (type $t19)
    call $f108
    unreachable)
  (func $f105 (type $t19)
    call $f108
    unreachable)
  (func $f106 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        i32.load offset=8
        local.tee $l3
        local.get $p0
        i32.load offset=4
        i32.eq
        br_if $B1
        local.get $p0
        i32.load
        local.set $l4
        br $B0
      end
      block $B2
        block $B3
          local.get $l3
          i32.const 1
          i32.add
          local.tee $l4
          local.get $l3
          i32.lt_u
          br_if $B3
          local.get $l2
          i32.const 24
          i32.add
          local.get $l3
          i32.const 1
          i32.shl
          local.tee $l3
          local.get $l4
          local.get $l3
          local.get $l4
          i32.gt_u
          select
          call $f94
          local.get $l2
          i32.load offset=28
          local.tee $l4
          i32.eqz
          br_if $B3
          local.get $l2
          i32.load offset=24
          local.tee $l3
          i32.const 0
          i32.lt_s
          br_if $B3
          block $B4
            block $B5
              block $B6
                local.get $p0
                i32.load offset=4
                local.tee $l5
                i32.eqz
                br_if $B6
                local.get $p0
                i32.load
                local.tee $l6
                br_if $B5
              end
              local.get $l2
              i32.const 8
              i32.add
              local.get $l3
              local.get $l4
              call $f99
              local.get $l2
              i32.load offset=8
              local.tee $l4
              i32.eqz
              br_if $B2
              local.get $l2
              i32.load offset=12
              local.set $l3
              br $B4
            end
            local.get $l2
            i32.const 16
            i32.add
            local.get $l6
            local.get $l5
            i32.const 96
            i32.mul
            i32.const 1
            local.get $l3
            call $f107
            local.get $l2
            i32.load offset=16
            local.tee $l4
            i32.eqz
            br_if $B2
            local.get $l2
            i32.load offset=20
            local.set $l3
          end
          local.get $p0
          local.get $l4
          i32.store
          local.get $p0
          local.get $l3
          i32.const 96
          i32.div_u
          i32.store offset=4
          local.get $p0
          i32.load offset=8
          local.set $l3
          br $B0
        end
        call $f108
        unreachable
      end
      call $f102
      unreachable
    end
    local.get $l4
    local.get $l3
    i32.const 96
    i32.mul
    i32.add
    local.get $p1
    i32.const 96
    call $f290
    drop
    local.get $p0
    local.get $p0
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0)
  (func $f107 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l5
    global.set $g0
    block $B0
      block $B1
        local.get $p2
        local.get $p4
        i32.ne
        br_if $B1
        local.get $p2
        local.set $p4
        br $B0
      end
      block $B2
        local.get $p2
        br_if $B2
        local.get $l5
        i32.const 8
        i32.add
        local.get $p4
        local.get $p3
        call $f99
        local.get $l5
        i32.load offset=12
        local.set $p4
        local.get $l5
        i32.load offset=8
        local.set $p1
        br $B0
      end
      local.get $p1
      local.get $p2
      local.get $p3
      local.get $p4
      call $f113
      local.set $p1
    end
    local.get $p0
    local.get $p4
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store
    local.get $l5
    i32.const 16
    i32.add
    global.set $g0)
  (func $f108 (type $t19)
    i32.const 1050828
    i32.const 17
    i32.const 1050848
    call $f221
    unreachable)
  (func $f109 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.load offset=4
          local.tee $l3
          local.get $p0
          i32.load offset=8
          local.tee $l4
          i32.sub
          local.get $p1
          i32.ge_u
          br_if $B2
          local.get $l4
          local.get $p1
          i32.add
          local.tee $p1
          local.get $l4
          i32.lt_u
          br_if $B1
          local.get $l2
          i32.const 24
          i32.add
          local.get $l3
          i32.const 1
          i32.shl
          local.tee $l4
          local.get $p1
          local.get $l4
          local.get $p1
          i32.gt_u
          select
          call $f93
          local.get $l2
          i32.load offset=28
          local.tee $l4
          i32.eqz
          br_if $B1
          local.get $l2
          i32.load offset=24
          local.tee $p1
          i32.const 0
          i32.lt_s
          br_if $B1
          block $B3
            block $B4
              block $B5
                local.get $p0
                i32.load offset=4
                local.tee $l3
                i32.eqz
                br_if $B5
                local.get $p0
                i32.load
                local.tee $l5
                br_if $B4
              end
              local.get $l2
              i32.const 8
              i32.add
              local.get $p1
              local.get $l4
              call $f99
              local.get $l2
              i32.load offset=8
              local.tee $p1
              i32.eqz
              br_if $B0
              local.get $l2
              i32.load offset=12
              local.set $l4
              br $B3
            end
            local.get $l2
            i32.const 16
            i32.add
            local.get $l5
            local.get $l3
            i32.const 12
            i32.mul
            i32.const 4
            local.get $p1
            call $f107
            local.get $l2
            i32.load offset=16
            local.tee $p1
            i32.eqz
            br_if $B0
            local.get $l2
            i32.load offset=20
            local.set $l4
          end
          local.get $p0
          local.get $p1
          i32.store
          local.get $p0
          local.get $l4
          i32.const 12
          i32.div_u
          i32.store offset=4
        end
        local.get $l2
        i32.const 32
        i32.add
        global.set $g0
        return
      end
      call $f108
      unreachable
    end
    call $f102
    unreachable)
  (func $f110 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    i32.const 0
    call $f111
    local.get $l3
    i32.const 0
    i32.store offset=24
    local.get $l3
    local.get $l3
    i64.load offset=8
    i64.store offset=16
    local.get $l3
    i32.const 16
    i32.add
    local.get $p1
    local.get $p2
    call $f41
    local.get $p0
    i32.const 8
    i32.add
    local.get $l3
    i32.load offset=24
    i32.store
    local.get $p0
    local.get $l3
    i64.load offset=16
    i64.store align=4
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0)
  (func $f111 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p1
        i32.const -1
        i32.le_s
        br_if $B1
        local.get $l3
        i32.const 8
        i32.add
        local.get $p1
        local.get $p2
        call $f262
        local.get $l3
        i32.load offset=8
        local.tee $p1
        i32.eqz
        br_if $B0
        local.get $l3
        i32.load offset=12
        local.set $p2
        local.get $p0
        local.get $p1
        i32.store
        local.get $p0
        local.get $p2
        i32.store offset=4
        local.get $l3
        i32.const 16
        i32.add
        global.set $g0
        return
      end
      call $f264
      unreachable
    end
    call $f102
    unreachable)
  (func $f112 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p1
    local.get $p2
    i64.extend_i32_u
    i64.const 255
    i64.and
    i32.const 8
    local.get $p1
    i32.load8_u offset=12
    call $f51
    local.get $p0
    i32.const 7
    i32.store)
  (func $f113 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p0
    local.get $p1
    local.get $p2
    local.get $p3
    call $f224)
  (func $f114 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $f222)
  (func $f115 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $f223)
  (func $f116 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      local.get $p1
      i32.ne
      br_if $B0
      i32.const 0
      return
    end
    local.get $p0
    local.get $p1
    i32.const 32
    call $f293
    i32.const 0
    i32.ne)
  (func $f117 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    block $B0
      local.get $p0
      i32.load offset=8
      local.tee $l3
      local.get $p1
      i32.gt_u
      br_if $B0
      local.get $p1
      local.get $l3
      local.get $p2
      call $f47
      unreachable
    end
    local.get $p0
    i32.load
    local.get $p1
    i32.const 12
    i32.mul
    i32.add)
  (func $f118 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p0
    local.get $p1
    call $env.bigIntAdd)
  (func $f119 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p0
    local.get $p1
    call $f63)
  (func $f120 (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i64.const 0
    call $env.bigIntNew
    call $env.bigIntCmp
    i32.eqz)
  (func $f121 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i64)
    global.get $g0
    i32.const 288
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 0
    i32.store8 offset=8
    local.get $l2
    i32.const 8
    i32.add
    i32.const 0
    i32.const 96
    call $f292
    drop
    local.get $l2
    i64.const 412316860416
    i64.store offset=104
    local.get $l2
    i32.const 224
    i32.add
    i32.const 2
    i32.add
    local.set $l3
    local.get $l2
    i32.const 248
    i32.add
    i32.const 4
    i32.or
    local.set $l4
    local.get $l2
    i32.const 144
    i32.add
    i32.const 3
    i32.or
    local.set $l5
    local.get $l2
    i32.const 192
    i32.add
    i32.const 2
    i32.add
    local.set $l6
    local.get $l2
    i32.const 168
    i32.add
    i32.const 1
    i32.add
    local.set $l7
    i32.const 96
    local.set $l8
    block $B0
      block $B1
        loop $L2
          local.get $l2
          local.get $l2
          i32.const 104
          i32.add
          call $f46
          block $B3
            local.get $l2
            i32.load
            br_if $B3
            local.get $p0
            i32.const 1
            i32.add
            local.get $l2
            i32.const 8
            i32.add
            i32.const 96
            call $f290
            drop
            local.get $p0
            i32.const 0
            i32.store8
            br $B0
          end
          local.get $l2
          i32.load offset=4
          local.set $l9
          block $B4
            block $B5
              local.get $l8
              br_if $B5
              i32.const 0
              local.set $l8
              i32.const 0
              local.set $l10
              i32.const 0
              local.set $l11
              br $B4
            end
            block $B6
              block $B7
                block $B8
                  local.get $p1
                  i32.load8_u offset=8
                  br_if $B8
                  local.get $l2
                  i32.const 248
                  i32.add
                  local.get $p1
                  i32.const 1
                  call $f122
                  block $B9
                    local.get $l2
                    i32.load offset=248
                    i32.const 1
                    i32.eq
                    br_if $B9
                    local.get $l2
                    i32.load offset=256
                    local.set $l10
                    local.get $l2
                    i32.load offset=252
                    local.set $l11
                    local.get $l2
                    i32.const 248
                    i32.add
                    call $f88
                    br $B7
                  end
                  local.get $l3
                  local.get $l4
                  i64.load align=2
                  i64.store align=2
                  local.get $l3
                  i32.const 8
                  i32.add
                  local.get $l4
                  i32.const 8
                  i32.add
                  i64.load align=2
                  i64.store align=2
                  local.get $l2
                  i32.const 192
                  i32.add
                  i32.const 8
                  i32.add
                  local.get $l2
                  i32.const 224
                  i32.add
                  i32.const 8
                  i32.add
                  i64.load align=2
                  i64.store
                  local.get $l2
                  i32.const 192
                  i32.add
                  i32.const 16
                  i32.add
                  local.get $l2
                  i32.const 224
                  i32.add
                  i32.const 16
                  i32.add
                  i32.load16_u
                  i32.store16
                  local.get $l2
                  local.get $l2
                  i64.load offset=224 align=2
                  i64.store offset=192
                  local.get $l7
                  i32.const 8
                  i32.add
                  local.get $l6
                  i32.const 8
                  i32.add
                  i64.load align=1
                  i64.store align=1
                  local.get $l7
                  local.get $l6
                  i64.load align=1
                  i64.store align=1
                  i32.const 1
                  local.set $l10
                  br $B6
                end
                local.get $p1
                i32.load offset=4
                local.set $l10
                local.get $p1
                i32.const 0
                i32.store offset=4
                local.get $p1
                i32.load
                local.set $l11
                local.get $p1
                i32.const 1054692
                i32.store
              end
              local.get $l11
              local.get $l10
              call $f58
              i32.wrap_i64
              local.set $l12
              i32.const 1
              local.set $l11
              i32.const 0
              local.set $l10
            end
            local.get $l8
            i32.const -1
            i32.add
            local.set $l8
          end
          local.get $l5
          local.get $l2
          i64.load offset=168 align=1
          i64.store align=1
          local.get $l5
          i32.const 8
          i32.add
          local.get $l2
          i32.const 168
          i32.add
          i32.const 8
          i32.add
          i64.load align=1
          i64.store align=1
          local.get $l5
          i32.const 16
          i32.add
          local.get $l2
          i32.const 168
          i32.add
          i32.const 16
          i32.add
          i32.load8_u
          i32.store8
          local.get $l2
          local.get $l12
          i32.store8 offset=146
          local.get $l2
          local.get $l11
          i32.store8 offset=145
          local.get $l2
          local.get $l10
          i32.store8 offset=144
          local.get $l10
          br_if $B1
          block $B10
            local.get $l11
            i32.const 255
            i32.and
            br_if $B10
            local.get $l2
            i32.const 1049012
            i32.store offset=220
            local.get $l2
            local.get $l9
            i32.store offset=212
            local.get $l2
            local.get $l2
            i32.const 280
            i32.add
            i32.store offset=216
            local.get $l2
            i32.const 5
            i32.store offset=204
            local.get $l2
            i32.const 1
            i32.store offset=196
            local.get $l2
            local.get $l2
            i32.const 216
            i32.add
            i32.store offset=200
            local.get $l2
            local.get $l2
            i32.const 212
            i32.add
            i32.store offset=192
            local.get $l2
            i32.const 2
            i32.store offset=244
            local.get $l2
            i64.const 2
            i64.store offset=228 align=4
            local.get $l2
            i32.const 1048944
            i32.store offset=224
            local.get $l2
            local.get $l2
            i32.const 192
            i32.add
            i32.store offset=240
            local.get $l2
            i32.const 0
            i32.store offset=176
            local.get $l2
            i64.const 1
            i64.store offset=168
            local.get $l2
            i32.const 1
            i32.store offset=268
            local.get $l2
            i64.const 1
            i64.store offset=252 align=4
            local.get $l2
            i32.const 1048576
            i32.store offset=248
            local.get $l2
            i32.const 6
            i32.store offset=276
            local.get $l2
            local.get $l2
            i32.const 272
            i32.add
            i32.store offset=264
            local.get $l2
            local.get $l2
            i32.const 224
            i32.add
            i32.store offset=272
            block $B11
              local.get $l2
              i32.const 168
              i32.add
              local.get $l2
              i32.const 248
              i32.add
              call $f76
              i32.eqz
              br_if $B11
              local.get $l2
              i32.const 168
              i32.add
              i32.const 1048584
              i32.const 1048591
              call $f125
            end
            local.get $l2
            i32.const 112
            i32.add
            i32.const 8
            i32.add
            local.get $l2
            i32.const 168
            i32.add
            i32.const 8
            i32.add
            i32.load
            local.tee $l5
            i32.store
            local.get $l2
            local.get $l2
            i64.load offset=168
            local.tee $l13
            i64.store offset=112
            local.get $p0
            i32.const 4
            i32.add
            i32.const 6
            i32.store
            local.get $p0
            i32.const 8
            i32.add
            local.get $l13
            i64.store align=4
            local.get $p0
            i32.const 16
            i32.add
            local.get $l5
            i32.store
            local.get $p0
            i32.const 1
            i32.store8
            local.get $l2
            i32.const 144
            i32.add
            call $f80
            br $B0
          end
          local.get $l2
          i32.const 112
          i32.add
          i32.const 8
          i32.add
          local.get $l2
          i32.const 128
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get $l2
          local.get $l2
          i64.load offset=128
          i64.store offset=112
          block $B12
            local.get $l9
            i32.const 96
            i32.ge_u
            br_if $B12
            local.get $l2
            i32.const 8
            i32.add
            local.get $l9
            i32.add
            local.get $l12
            i32.store8
            local.get $l2
            i32.const 144
            i32.add
            call $f80
            br $L2
          end
        end
        local.get $l9
        i32.const 96
        i32.const 1048996
        call $f47
        unreachable
      end
      local.get $p0
      i32.const 1
      i32.store8
      local.get $p0
      i32.const 4
      i32.add
      local.get $l2
      i64.load offset=148 align=4
      i64.store align=4
      local.get $p0
      i32.const 12
      i32.add
      local.get $l2
      i32.const 144
      i32.add
      i32.const 12
      i32.add
      i64.load align=4
      i64.store align=4
    end
    local.get $l2
    i32.const 288
    i32.add
    global.set $g0)
  (func $f122 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i64)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p1
        i32.load offset=4
        local.tee $l4
        local.get $p2
        i32.ge_u
        br_if $B1
        local.get $p0
        i32.const 3
        i32.store offset=4
        i32.const 1
        local.set $l5
        br $B0
      end
      i32.const 0
      local.set $l5
      local.get $l3
      i32.const 8
      i32.add
      i32.const 0
      local.get $p2
      local.get $p1
      i32.load
      local.get $l4
      i32.const 1055196
      call $f220
      local.get $l3
      i64.load offset=8
      local.set $l6
      local.get $l3
      local.get $p2
      local.get $p1
      i32.load offset=4
      local.tee $l4
      local.get $p1
      i32.load
      local.get $l4
      i32.const 1055212
      call $f220
      local.get $l3
      i64.load
      local.set $l7
      local.get $p0
      local.get $l6
      i64.store offset=4 align=4
      local.get $p1
      local.get $l7
      i64.store align=4
    end
    local.get $p0
    local.get $l5
    i32.store
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0)
  (func $f123 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i64.load32_u
    local.get $p1
    call $f236)
  (func $f124 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    local.set $l3
    local.get $p1
    i32.load offset=24
    local.set $p1
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p0
    i64.load align=4
    i64.store offset=8
    local.get $p1
    local.get $l3
    local.get $l2
    i32.const 8
    i32.add
    call $f77
    local.set $p0
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p0)
  (func $f125 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    local.get $p0
    local.get $p2
    local.get $p1
    i32.sub
    local.tee $p2
    call $f260
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.tee $l3
    i32.add
    local.get $p2
    local.get $p1
    local.get $p2
    call $f261
    local.get $p0
    local.get $l3
    local.get $p2
    i32.add
    i32.store offset=8)
  (func $f126 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i64)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 1049072
    i32.const 5
    call $f127
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1049077
    i32.const 22
    call $f127
    local.get $l4
    i32.const 1
    i32.store8 offset=92
    local.get $l4
    i32.const 0
    i32.store offset=88
    local.get $l4
    i64.const 1
    i64.store offset=80
    local.get $l4
    i32.const 48
    i32.add
    local.get $l4
    i32.const 80
    i32.add
    local.get $p1
    i64.extend_i32_u
    call $f49
    block $B0
      block $B1
        block $B2
          local.get $l4
          i32.load offset=48
          i32.const 7
          i32.ne
          br_if $B2
          local.get $l4
          i32.const 48
          i32.add
          call $f36
          local.get $l4
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get $l4
          i32.const 80
          i32.add
          i32.const 8
          i32.add
          i32.load
          local.tee $l5
          i32.store
          local.get $l4
          local.get $l4
          i64.load offset=80
          local.tee $l6
          i64.store offset=32
          local.get $l4
          i32.const 48
          i32.add
          i32.const 8
          i32.add
          local.get $l5
          i32.store
          local.get $l4
          local.get $l6
          i64.store offset=48
          local.get $l4
          local.get $l6
          i32.wrap_i64
          local.get $l5
          call $f128
          local.get $l4
          i32.const 48
          i32.add
          call $f37
          local.get $p2
          i32.load offset=8
          local.tee $l5
          local.get $p1
          i32.const 1
          i32.shl
          i32.ne
          br_if $B1
          local.get $l5
          i32.const 1073741823
          i32.and
          local.set $l5
          local.get $p2
          i32.load
          local.set $p1
          loop $L3
            local.get $l5
            i32.eqz
            br_if $B0
            local.get $l4
            local.get $p1
            i32.load
            local.get $p1
            i32.const 8
            i32.add
            i32.load
            call $f128
            local.get $p1
            i32.const 12
            i32.add
            local.set $p1
            local.get $l5
            i32.const -1
            i32.add
            local.set $l5
            br $L3
          end
        end
        local.get $l4
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        local.tee $p1
        local.get $l4
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.tee $l5
        i64.load
        i64.store
        local.get $l4
        local.get $l4
        i64.load offset=48
        i64.store offset=32
        local.get $l4
        i32.const 80
        i32.add
        call $f37
        local.get $l5
        local.get $p1
        i64.load
        i64.store
        local.get $l4
        local.get $l4
        i64.load offset=32
        i64.store offset=48
        i32.const 1049099
        i32.const 30
        i32.const 1049129
        i32.const 5
        local.get $l4
        i32.const 48
        i32.add
        call $f54
        unreachable
      end
      i32.const 1054485
      i32.const 48
      call $f52
      unreachable
    end
    local.get $l4
    i32.const 72
    i32.add
    i32.const 0
    i64.load offset=1048732 align=1
    i64.store
    local.get $l4
    i32.const 64
    i32.add
    i32.const 0
    i64.load offset=1048724 align=1
    i64.store
    local.get $l4
    i32.const 56
    i32.add
    i32.const 0
    i64.load offset=1048716 align=1
    i64.store
    local.get $l4
    i32.const 0
    i64.load offset=1048708 align=1
    i64.store offset=48
    local.get $l4
    i32.const 48
    i32.add
    i32.const 32
    local.get $l4
    i32.load offset=16
    local.get $l4
    i32.load offset=24
    call $env.storageStore
    drop
    local.get $p0
    local.get $p3
    i32.load
    local.get $l4
    i32.load
    local.get $l4
    i32.load offset=8
    call $f129
    local.get $l4
    i32.const 16
    i32.add
    call $f37
    local.get $l4
    call $f37
    local.get $p2
    call $f86
    local.get $l4
    i32.const 96
    i32.add
    global.set $g0)
  (func $f127 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    i32.const 0
    call $f111
    local.get $l3
    i32.const 0
    i32.store offset=24
    local.get $l3
    local.get $l3
    i64.load offset=8
    i64.store offset=16
    local.get $l3
    i32.const 16
    i32.add
    local.get $p1
    local.get $p2
    call $f41
    local.get $p0
    i32.const 8
    i32.add
    local.get $l3
    i32.load offset=24
    i32.store
    local.get $p0
    local.get $l3
    i64.load offset=16
    i64.store align=4
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0)
  (func $f128 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    local.get $p0
    local.get $p2
    i32.const 1
    i32.shl
    i32.const 1
    i32.or
    call $f260
    local.get $p0
    i32.const 64
    call $f265
    loop $L0
      block $B1
        local.get $p2
        br_if $B1
        return
      end
      local.get $p0
      i32.const 48
      i32.const 87
      local.get $p1
      i32.load8_u
      local.tee $l3
      i32.const 160
      i32.lt_u
      select
      local.get $l3
      i32.const 4
      i32.shr_u
      i32.add
      call $f265
      local.get $p0
      i32.const 48
      i32.const 87
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l3
      i32.const 10
      i32.lt_u
      select
      local.get $l3
      i32.add
      call $f265
      local.get $p2
      i32.const -1
      i32.add
      local.set $p2
      local.get $p1
      i32.const 1
      i32.add
      local.set $p1
      br $L0
    end)
  (func $f129 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 16
    i32.add
    local.get $p1
    call $f271
    local.get $l4
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1055644
    call $f272
    local.get $p0
    local.get $l4
    i32.load
    local.get $p2
    local.get $p3
    call $env.asyncCall
    local.get $l4
    call $f273
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $f130 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l2
    global.set $g0
    call $f33
    local.set $l3
    local.get $l2
    i32.const 1049134
    i32.const 7
    call $f127
    local.get $l2
    i32.const 16
    i32.add
    i32.const 1049141
    i32.const 24
    call $f127
    local.get $p1
    i32.load offset=8
    i32.const 134217727
    i32.and
    local.set $l4
    local.get $l2
    i32.const 48
    i32.add
    i32.const 4
    i32.or
    local.set $l5
    block $B0
      block $B1
        loop $L2
          local.get $l4
          i32.eqz
          br_if $B1
          local.get $l2
          i32.const 48
          i32.add
          call $f34
          local.get $l2
          i32.load offset=48
          i32.const 1
          i32.eq
          br_if $B0
          local.get $l2
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get $l5
          i32.const 8
          i32.add
          i32.load
          local.tee $l6
          i32.store
          local.get $l2
          local.get $l5
          i64.load align=4
          local.tee $l7
          i64.store offset=32
          local.get $l2
          local.get $l7
          i32.wrap_i64
          local.get $l6
          call $f128
          local.get $l4
          i32.const -1
          i32.add
          local.set $l4
          local.get $l2
          i32.const 32
          i32.add
          call $f37
          br $L2
        end
      end
      local.get $l2
      i32.const 72
      i32.add
      i32.const 0
      i64.load offset=1048732 align=1
      i64.store
      local.get $l2
      i32.const 64
      i32.add
      i32.const 0
      i64.load offset=1048724 align=1
      i64.store
      local.get $l2
      i32.const 56
      i32.add
      i32.const 0
      i64.load offset=1048716 align=1
      i64.store
      local.get $l2
      i32.const 0
      i64.load offset=1048708 align=1
      i64.store offset=48
      local.get $l2
      i32.const 48
      i32.add
      i32.const 32
      local.get $l2
      i32.load offset=16
      local.get $l2
      i32.load offset=24
      call $env.storageStore
      drop
      local.get $p0
      local.get $l3
      local.get $l2
      i32.load
      local.get $l2
      i32.load offset=8
      call $f129
      local.get $l2
      i32.const 16
      i32.add
      call $f37
      local.get $l2
      call $f37
      local.get $p1
      call $f89
      local.get $l2
      i32.const 80
      i32.add
      global.set $g0
      return
    end
    local.get $l2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l5
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $l5
    i64.load align=4
    i64.store offset=32
    i32.const 1049099
    i32.const 30
    i32.const 1048976
    i32.const 6
    local.get $l2
    i32.const 32
    i32.add
    call $f54
    unreachable)
  (func $f131 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l2
    global.set $g0
    call $f33
    local.set $l3
    local.get $l2
    i32.const 1049165
    i32.const 6
    call $f127
    local.get $l2
    i32.const 16
    i32.add
    i32.const 1049171
    i32.const 23
    call $f127
    local.get $p1
    i32.load offset=8
    i32.const 134217727
    i32.and
    local.set $l4
    local.get $l2
    i32.const 48
    i32.add
    i32.const 4
    i32.or
    local.set $l5
    block $B0
      block $B1
        loop $L2
          local.get $l4
          i32.eqz
          br_if $B1
          local.get $l2
          i32.const 48
          i32.add
          call $f34
          local.get $l2
          i32.load offset=48
          i32.const 1
          i32.eq
          br_if $B0
          local.get $l2
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get $l5
          i32.const 8
          i32.add
          i32.load
          local.tee $l6
          i32.store
          local.get $l2
          local.get $l5
          i64.load align=4
          local.tee $l7
          i64.store offset=32
          local.get $l2
          local.get $l7
          i32.wrap_i64
          local.get $l6
          call $f128
          local.get $l4
          i32.const -1
          i32.add
          local.set $l4
          local.get $l2
          i32.const 32
          i32.add
          call $f37
          br $L2
        end
      end
      local.get $l2
      i32.const 72
      i32.add
      i32.const 0
      i64.load offset=1048732 align=1
      i64.store
      local.get $l2
      i32.const 64
      i32.add
      i32.const 0
      i64.load offset=1048724 align=1
      i64.store
      local.get $l2
      i32.const 56
      i32.add
      i32.const 0
      i64.load offset=1048716 align=1
      i64.store
      local.get $l2
      i32.const 0
      i64.load offset=1048708 align=1
      i64.store offset=48
      local.get $l2
      i32.const 48
      i32.add
      i32.const 32
      local.get $l2
      i32.load offset=16
      local.get $l2
      i32.load offset=24
      call $env.storageStore
      drop
      local.get $p0
      local.get $l3
      local.get $l2
      i32.load
      local.get $l2
      i32.load offset=8
      call $f129
      local.get $l2
      i32.const 16
      i32.add
      call $f37
      local.get $l2
      call $f37
      local.get $p1
      call $f89
      local.get $l2
      i32.const 80
      i32.add
      global.set $g0
      return
    end
    local.get $l2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l5
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $l5
    i64.load align=4
    i64.store offset=32
    i32.const 1049099
    i32.const 30
    i32.const 1048976
    i32.const 6
    local.get $l2
    i32.const 32
    i32.add
    call $f54
    unreachable)
  (func $f132 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    call $f133
    local.set $l0
    call $f134
    i64.extend_i32_u
    call $env.bigIntNew
    local.set $l1
    i64.const 0
    call $env.bigIntNew
    local.tee $l2
    local.get $l0
    local.get $l1
    call $env.bigIntMul
    local.get $l2)
  (func $f133 (type $t7) (result i32)
    i32.const 1050439
    i32.const 14
    call $f68)
  (func $f134 (type $t7) (result i32)
    i32.const 1050462
    i32.const 9
    call $env.int64storageLoad
    i32.wrap_i64)
  (func $f135 (type $t7) (result i32)
    (local $l0 i32)
    call $f136
    i32.const 1
    i32.add
    local.tee $l0
    call $f137
    local.get $l0)
  (func $f136 (type $t7) (result i32)
    i32.const 1050453
    i32.const 9
    call $env.int64storageLoad
    i32.wrap_i64)
  (func $f137 (type $t2) (param $p0 i32)
    i32.const 1050453
    i32.const 9
    local.get $p0
    i64.extend_i32_u
    call $env.int64storageStore
    drop)
  (func $f138 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    local.get $l0
    call $f139
    local.get $l0
    i32.load offset=8
    local.set $l1
    local.get $l0
    call $f89
    local.get $l0
    i32.const 16
    i32.add
    global.set $g0
    local.get $l1)
  (func $f139 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 256
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050471
    i32.const 8
    call $f168
    local.get $l1
    i32.load offset=8
    local.set $l2
    local.get $l1
    local.get $l1
    i32.load offset=16
    i32.store offset=28
    local.get $l1
    local.get $l2
    i32.store offset=24
    local.get $l1
    i32.const 0
    i32.store8 offset=32
    local.get $l1
    i32.const 56
    i32.add
    i32.const 0
    call $f103
    local.get $l1
    i32.const 171
    i32.add
    local.set $l3
    local.get $l1
    i32.const 172
    i32.add
    local.set $l4
    local.get $l1
    i32.const 152
    i32.add
    i32.const 4
    i32.or
    local.set $l5
    block $B0
      block $B1
        block $B2
          loop $L3
            local.get $l1
            i32.const 152
            i32.add
            local.get $l1
            i32.const 24
            i32.add
            call $f121
            block $B4
              local.get $l1
              i32.load8_u offset=152
              i32.const 1
              i32.ne
              br_if $B4
              local.get $l1
              i32.load offset=156
              local.tee $l2
              i32.const 3
              i32.eq
              br_if $B2
              local.get $l1
              i32.const 168
              i32.add
              i32.load
              local.set $l6
              local.get $l1
              i32.const 160
              i32.add
              i64.load
              local.set $l7
              local.get $l1
              i32.const 56
              i32.add
              call $f89
              br $B1
            end
            local.get $l1
            i32.load16_u offset=153 align=1
            local.set $l2
            local.get $l1
            i32.load offset=155 align=1
            local.set $l6
            local.get $l1
            i64.load offset=159 align=1
            local.set $l7
            local.get $l1
            i32.load offset=167 align=1
            local.set $l8
            local.get $l1
            i32.load8_u offset=171
            local.set $l9
            local.get $l1
            i32.const 75
            i32.add
            local.get $l4
            i32.const 77
            call $f290
            drop
            local.get $l1
            local.get $l9
            i32.store8 offset=170
            local.get $l1
            local.get $l8
            i32.store offset=166 align=2
            local.get $l1
            local.get $l7
            i64.store offset=158 align=2
            local.get $l1
            local.get $l6
            i32.store offset=154 align=2
            local.get $l1
            local.get $l2
            i32.store16 offset=152
            local.get $l3
            local.get $l1
            i32.const 75
            i32.add
            i32.const 77
            call $f290
            drop
            local.get $l1
            i32.const 56
            i32.add
            local.get $l1
            i32.const 152
            i32.add
            call $f106
            br $L3
          end
        end
        local.get $l5
        call $f81
        local.get $l1
        local.get $l1
        i64.load offset=60 align=4
        local.tee $l7
        i64.store offset=44 align=4
        local.get $l1
        local.get $l1
        i32.load offset=56
        local.tee $l2
        i32.store offset=40
        local.get $l1
        i32.load offset=28
        i32.eqz
        br_if $B0
        local.get $l1
        i32.const 40
        i32.add
        call $f89
        i32.const 4
        local.set $l2
      end
      local.get $l1
      i32.const 164
      i32.add
      local.get $l6
      i32.store
      local.get $l1
      local.get $l7
      i64.store offset=156 align=4
      local.get $l1
      local.get $l2
      i32.store offset=152
      i32.const 1050479
      i32.const 29
      i32.const 1050508
      i32.const 3
      local.get $l1
      i32.const 152
      i32.add
      call $f54
      unreachable
    end
    local.get $p0
    local.get $l7
    i64.store offset=4 align=4
    local.get $p0
    local.get $l2
    i32.store
    local.get $l1
    i32.const 8
    i32.add
    call $f37
    local.get $l1
    i32.const 256
    i32.add
    global.set $g0)
  (func $f140 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050581
    local.get $p1
    call $f48
    local.get $l2
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $l3
    block $B0
      local.get $l2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l2
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $l3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $l3
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l2
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l3
    i32.const 8
    i32.add
    i32.load
    local.tee $l4
    i32.store
    local.get $l2
    local.get $l3
    i64.load align=4
    local.tee $l5
    i64.store offset=32
    local.get $l5
    i32.wrap_i64
    local.get $l4
    call $f68
    local.set $l3
    local.get $l2
    i32.const 32
    i32.add
    call $f37
    local.get $p1
    call $f141
    local.set $l4
    local.get $p0
    local.get $p1
    call $f142
    i32.store offset=8
    local.get $p0
    local.get $l4
    i32.store offset=4
    local.get $p0
    local.get $l3
    i32.store
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0)
  (func $f141 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050575
    local.get $p0
    call $f48
    local.get $l1
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l1
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l1
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l1
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l2
    i32.store
    local.get $l1
    local.get $p0
    i64.load align=4
    local.tee $l3
    i64.store offset=32
    local.get $l3
    i32.wrap_i64
    local.get $l2
    call $f68
    local.set $p0
    local.get $l1
    i32.const 32
    i32.add
    call $f37
    local.get $l1
    i32.const 48
    i32.add
    global.set $g0
    local.get $p0)
  (func $f142 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050569
    local.get $p0
    call $f48
    local.get $l1
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l1
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l1
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l1
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l2
    i32.store
    local.get $l1
    local.get $p0
    i64.load align=4
    local.tee $l3
    i64.store offset=32
    local.get $l3
    i32.wrap_i64
    local.get $l2
    call $f68
    local.set $p0
    local.get $l1
    i32.const 32
    i32.add
    call $f37
    local.get $l1
    i32.const 48
    i32.add
    global.set $g0
    local.get $p0)
  (func $f143 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 8
    i32.add
    i32.const 1050581
    local.get $p0
    call $f48
    local.get $l4
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $l5
    block $B0
      local.get $l4
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l4
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $l5
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l4
      local.get $l5
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l4
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l4
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l5
    i32.const 8
    i32.add
    i32.load
    local.tee $l6
    i32.store
    local.get $l4
    local.get $l5
    i64.load align=4
    local.tee $l7
    i64.store offset=32
    local.get $l7
    i32.wrap_i64
    local.get $l6
    local.get $p1
    call $f69
    local.get $l4
    i32.const 32
    i32.add
    call $f37
    local.get $p0
    local.get $p2
    call $f144
    local.get $p0
    local.get $p3
    call $f145
    local.get $l4
    i32.const 48
    i32.add
    global.set $g0)
  (func $f144 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050575
    local.get $p0
    call $f48
    local.get $l2
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l2
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l2
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l3
    i32.store
    local.get $l2
    local.get $p0
    i64.load align=4
    local.tee $l4
    i64.store offset=32
    local.get $l4
    i32.wrap_i64
    local.get $l3
    local.get $p1
    call $f69
    local.get $l2
    i32.const 32
    i32.add
    call $f37
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0)
  (func $f145 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050569
    local.get $p0
    call $f48
    local.get $l2
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l2
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l2
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l3
    i32.store
    local.get $l2
    local.get $p0
    i64.load align=4
    local.tee $l4
    i64.store offset=32
    local.get $l4
    i32.wrap_i64
    local.get $l3
    local.get $p1
    call $f69
    local.get $l2
    i32.const 32
    i32.add
    call $f37
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0)
  (func $f146 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 160
    i32.sub
    local.tee $l1
    global.set $g0
    call $f147
    local.tee $l2
    local.get $p0
    call $f61
    i32.const 1049495
    local.set $l3
    block $B0
      block $B1
        local.get $l2
        call $f132
        call $f75
        br_if $B1
        local.get $l2
        call $f148
        local.get $l1
        call $f149
        block $B2
          local.get $l1
          call $f150
          local.tee $l2
          br_if $B2
          local.get $l1
          call $f135
          local.tee $l2
          call $f151
        end
        local.get $l1
        i32.const 32
        i32.add
        local.get $l2
        call $f140
        local.get $l1
        i32.load offset=40
        local.tee $l3
        local.get $p0
        call $f61
        local.get $l2
        local.get $l1
        i32.load offset=32
        local.get $l1
        i32.load offset=36
        local.get $l3
        call $f143
        local.get $l1
        i32.const 112
        i32.add
        i32.const 24
        i32.add
        local.tee $l4
        i64.const 0
        i64.store
        local.get $l1
        i32.const 112
        i32.add
        i32.const 16
        i32.add
        local.tee $l5
        i64.const 0
        i64.store
        local.get $l1
        i32.const 112
        i32.add
        i32.const 8
        i32.add
        local.tee $l6
        i64.const 0
        i64.store
        local.get $l1
        i64.const 0
        i64.store offset=112
        i32.const 0
        local.set $l2
        block $B3
          loop $L4
            local.get $l2
            i32.const 64
            i32.eq
            br_if $B3
            local.get $l1
            i32.const 48
            i32.add
            local.get $l2
            i32.add
            local.tee $l3
            local.get $l1
            i64.load offset=112
            i64.store align=1
            local.get $l3
            i32.const 24
            i32.add
            local.get $l4
            i64.load
            i64.store align=1
            local.get $l3
            i32.const 16
            i32.add
            local.get $l5
            i64.load
            i64.store align=1
            local.get $l3
            i32.const 8
            i32.add
            local.get $l6
            i64.load
            i64.store align=1
            local.get $l2
            i32.const 32
            i32.add
            local.set $l2
            br $L4
          end
        end
        local.get $l1
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get $l1
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get $l1
        i32.const 71
        i32.add
        i64.const 0
        i64.store align=1
        local.get $l1
        i32.const 88
        i32.add
        local.get $l1
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get $l1
        i32.const 96
        i32.add
        local.get $l1
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get $l1
        i32.const 104
        i32.add
        local.get $l1
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get $l1
        i64.const 0
        i64.store offset=48
        local.get $l1
        local.get $l1
        i64.load
        i64.store offset=80
        local.get $l1
        i32.const 1
        i32.store8 offset=79
        local.get $l1
        i32.const 112
        i32.add
        local.get $p0
        call $f39
        local.get $l1
        i32.const 112
        i32.add
        i32.const 4
        i32.or
        local.set $l2
        local.get $l1
        i32.load offset=112
        i32.const 1
        i32.eq
        br_if $B0
        local.get $l1
        i32.const 144
        i32.add
        i32.const 8
        i32.add
        local.get $l2
        i32.const 8
        i32.add
        i32.load
        local.tee $l3
        i32.store
        local.get $l1
        local.get $l2
        i64.load align=4
        local.tee $l7
        i64.store offset=144
        local.get $l1
        i32.const 48
        i32.add
        i32.const 2
        local.get $l7
        i32.wrap_i64
        local.get $l3
        call $f152
        local.get $l1
        i32.const 144
        i32.add
        call $f37
        i32.const 0
        local.set $l3
      end
      local.get $l1
      i32.const 160
      i32.add
      global.set $g0
      local.get $l3
      return
    end
    local.get $l1
    i32.const 144
    i32.add
    i32.const 8
    i32.add
    local.get $l2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l1
    local.get $l2
    i64.load align=4
    i64.store offset=144
    i32.const 1050637
    i32.const 25
    i32.const 1050662
    i32.const 4
    local.get $l1
    i32.const 144
    i32.add
    call $f54
    unreachable)
  (func $f147 (type $t7) (result i32)
    i32.const 1050625
    i32.const 12
    call $f68)
  (func $f148 (type $t2) (param $p0 i32)
    i32.const 1050625
    i32.const 12
    local.get $p0
    call $f69)
  (func $f149 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 24
    i32.add
    local.tee $l2
    i64.const 0
    i64.store
    local.get $l1
    i32.const 16
    i32.add
    local.tee $l3
    i64.const 0
    i64.store
    local.get $l1
    i32.const 8
    i32.add
    local.tee $l4
    i64.const 0
    i64.store
    local.get $l1
    i64.const 0
    i64.store
    local.get $l1
    call $env.getCaller
    local.get $p0
    i32.const 24
    i32.add
    local.get $l2
    i64.load
    i64.store align=1
    local.get $p0
    i32.const 16
    i32.add
    local.get $l3
    i64.load
    i64.store align=1
    local.get $p0
    i32.const 8
    i32.add
    local.get $l4
    i64.load
    i64.store align=1
    local.get $p0
    local.get $l1
    i64.load
    i64.store align=1
    local.get $l1
    i32.const 32
    i32.add
    global.set $g0)
  (func $f150 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    local.get $p0
    call $f45
    local.get $l1
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l1
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l1
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l1
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l2
    i32.store
    local.get $l1
    local.get $p0
    i64.load align=4
    local.tee $l3
    i64.store offset=32
    local.get $l3
    i32.wrap_i64
    local.get $l2
    call $env.int64storageLoad
    local.set $l3
    local.get $l1
    i32.const 32
    i32.add
    call $f37
    local.get $l1
    i32.const 48
    i32.add
    global.set $g0
    local.get $l3
    i32.wrap_i64)
  (func $f151 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    local.get $p0
    call $f45
    local.get $l2
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l2
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l2
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l3
    i32.store
    local.get $l2
    local.get $p0
    i64.load align=4
    local.tee $l4
    i64.store offset=32
    local.get $l4
    i32.wrap_i64
    local.get $l3
    local.get $p1
    i64.extend_i32_u
    call $env.int64storageStore
    drop
    local.get $l2
    i32.const 32
    i32.add
    call $f37
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0)
  (func $f152 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 320
    i32.sub
    local.tee $l4
    global.set $g0
    i32.const 0
    local.set $l5
    local.get $l4
    i32.const 0
    i32.const 320
    call $f292
    local.set $l6
    local.get $p1
    local.set $l4
    block $B0
      block $B1
        loop $L2
          local.get $l4
          i32.eqz
          br_if $B1
          local.get $l5
          i32.const 320
          i32.eq
          br_if $B0
          local.get $l6
          local.get $l5
          i32.add
          i32.const 32
          local.get $p0
          local.get $l5
          i32.add
          i32.const 32
          call $f261
          local.get $l4
          i32.const -1
          i32.add
          local.set $l4
          local.get $l5
          i32.const 32
          i32.add
          local.set $l5
          br $L2
        end
      end
      local.get $p2
      local.get $p3
      local.get $l6
      local.get $p1
      call $env.writeLog
      local.get $l6
      i32.const 320
      i32.add
      global.set $g0
      return
    end
    local.get $l5
    i32.const 32
    i32.add
    i32.const 320
    i32.const 1055660
    call $f241
    unreachable)
  (func $f153 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      block $B1
        call $f132
        local.tee $l1
        call $f120
        i32.eqz
        br_if $B1
        i32.const 1049650
        local.set $l1
        i32.const 28
        local.set $l2
        br $B0
      end
      call $f147
      local.get $l1
      call $f74
      i32.const 24
      i32.shl
      i32.const 16777216
      i32.add
      i32.const 24
      i32.shr_s
      i32.const 2
      i32.shl
      local.tee $l2
      i32.const 1050816
      i32.add
      i32.load
      local.set $l1
      local.get $l2
      i32.const 1050804
      i32.add
      i32.load
      local.set $l2
    end
    local.get $p0
    local.get $l2
    i32.store offset=4
    local.get $p0
    local.get $l1
    i32.store)
  (func $f154 (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    i32.const 3
    call $f155
    local.get $l0
    i32.const 8
    i32.add
    call $f156
    local.get $l0
    i32.const 8
    i32.add
    call $f157
    local.set $l1
    local.get $l0
    i32.const 1049872
    i32.store offset=44
    local.get $l0
    local.get $l1
    i32.store offset=40
    local.get $l0
    i32.const 48
    i32.add
    call $f139
    local.get $l1
    local.get $l0
    i32.const 48
    i32.add
    call $f130
    local.get $l0
    i32.const 40
    i32.add
    call $f78
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $f155 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1
    i32.store8 offset=28
    local.get $l1
    i32.const 0
    i32.store offset=24
    local.get $l1
    i64.const 1
    i64.store offset=16
    local.get $l1
    i32.const 32
    i32.add
    local.get $l1
    i32.const 16
    i32.add
    local.get $p0
    call $f112
    block $B0
      local.get $l1
      i32.load offset=32
      i32.const 7
      i32.eq
      br_if $B0
      local.get $l1
      i32.const 8
      i32.add
      local.tee $p0
      local.get $l1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.tee $l2
      i64.load
      i64.store
      local.get $l1
      local.get $l1
      i64.load offset=32
      i64.store
      local.get $l1
      i32.const 16
      i32.add
      call $f37
      local.get $l2
      local.get $p0
      i64.load
      i64.store
      local.get $l1
      local.get $l1
      i64.load
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050549
      i32.const 10
      local.get $l1
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l1
    i32.const 32
    i32.add
    call $f36
    local.get $l1
    i32.const 8
    i32.add
    local.get $l1
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    i32.load
    local.tee $p0
    i32.store
    local.get $l1
    local.get $l1
    i64.load offset=16
    local.tee $l3
    i64.store
    local.get $l1
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.store
    local.get $l1
    local.get $l3
    i64.store offset=32
    i32.const 1050538
    i32.const 11
    local.get $l3
    i32.wrap_i64
    local.get $p0
    call $env.storageStore
    drop
    local.get $l1
    i32.const 32
    i32.add
    call $f37
    local.get $l1
    i32.const 48
    i32.add
    global.set $g0)
  (func $f156 (type $t2) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1050392
    i32.const 12
    call $f168
    local.get $p0
    local.get $l1
    i32.load
    local.get $l1
    i32.load offset=8
    call $f169
    local.get $l1
    call $f37
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $f157 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 16
    i32.add
    i32.const 24
    i32.add
    local.tee $l2
    local.get $p0
    i32.const 24
    i32.add
    i64.load align=1
    i64.store
    local.get $l1
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    local.tee $l3
    local.get $p0
    i32.const 16
    i32.add
    i64.load align=1
    i64.store
    local.get $l1
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    local.tee $l4
    local.get $p0
    i32.const 8
    i32.add
    i64.load align=1
    i64.store
    local.get $l1
    local.get $p0
    i64.load align=1
    i64.store offset=16
    local.get $l1
    i32.const 8
    i32.add
    i32.const 32
    i32.const 1
    call $f99
    block $B0
      local.get $l1
      i32.load offset=8
      local.tee $p0
      br_if $B0
      call $f102
      unreachable
    end
    local.get $p0
    local.get $l1
    i64.load offset=16
    i64.store align=1
    local.get $p0
    i32.const 24
    i32.add
    local.get $l2
    i64.load
    i64.store align=1
    local.get $p0
    i32.const 16
    i32.add
    local.get $l3
    i64.load
    i64.store align=1
    local.get $p0
    i32.const 8
    i32.add
    local.get $l4
    i64.load
    i64.store align=1
    local.get $l1
    i32.const 48
    i32.add
    global.set $g0
    local.get $p0)
  (func $f158 (type $t7) (result i32)
    i32.const 1054394
    i32.const 12
    call $f68)
  (func $f159 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    call $f160
    local.set $l1
    i64.const 0
    call $env.bigIntNew
    local.tee $l2
    local.get $p0
    local.get $l1
    call $env.bigIntMul
    local.get $l2
    local.get $l2
    i64.const 10000
    call $env.bigIntNew
    call $env.bigIntTDiv
    local.get $l2)
  (func $f160 (type $t7) (result i32)
    i32.const 1050429
    i32.const 10
    call $f68)
  (func $f161 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    call $f140
    call $f158
    local.set $l3
    i64.const 0
    call $env.bigIntNew
    local.tee $l4
    local.get $l3
    local.get $l2
    i32.load
    call $f63
    block $B0
      block $B1
        local.get $l4
        call $f120
        br_if $B1
        local.get $l4
        call $f159
        local.set $l5
        block $B2
          local.get $p1
          i32.const 1
          i32.ne
          br_if $B2
          local.get $l2
          i32.load offset=4
          local.get $l5
          call $f61
        end
        block $B3
          local.get $l2
          i32.load offset=8
          local.tee $p1
          i64.const 0
          call $f73
          i32.eqz
          br_if $B3
          local.get $l4
          local.get $l5
          call $f162
          local.tee $l4
          local.get $l4
          local.get $p1
          call $env.bigIntMul
          local.get $l4
          local.get $l4
          call $f147
          call $env.bigIntTDiv
          local.get $l2
          i32.load offset=4
          local.get $l4
          call $f61
        end
        local.get $l2
        local.get $l3
        i32.store
        local.get $p0
        local.get $l2
        i64.load
        i64.store align=4
        local.get $p0
        i32.const 8
        i32.add
        local.get $l2
        i32.const 8
        i32.add
        i32.load
        i32.store
        br $B0
      end
      local.get $p0
      local.get $l2
      i64.load
      i64.store align=4
      local.get $p0
      i32.const 8
      i32.add
      local.get $l2
      i32.const 8
      i32.add
      i32.load
      i32.store
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $f162 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    i64.const 0
    call $env.bigIntNew
    local.tee $l2
    local.get $p0
    local.get $p1
    call $f63
    local.get $l2)
  (func $f163 (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l0
    global.set $g0
    call $f136
    local.set $l1
    call $f33
    local.set $l2
    local.get $l0
    i32.const 1
    i32.store offset=8
    local.get $l0
    local.get $l1
    i32.const 1
    i32.add
    i32.store offset=12
    loop $L0
      local.get $l0
      local.get $l0
      i32.const 8
      i32.add
      call $f46
      block $B1
        local.get $l0
        i32.load
        br_if $B1
        block $B2
          call $f158
          local.get $l2
          call $f162
          call $f164
          call $f162
          local.tee $l1
          i64.const 0
          call $f73
          i32.eqz
          br_if $B2
          i32.const 1
          call $f141
          local.tee $l3
          local.get $l1
          call $f61
          i32.const 1
          local.get $l3
          call $f144
        end
        local.get $l0
        i32.const 32
        i32.add
        global.set $g0
        return
      end
      local.get $l0
      i32.const 16
      i32.add
      local.get $l0
      i32.load offset=4
      local.tee $l1
      call $f161
      local.get $l1
      local.get $l0
      i32.load offset=16
      local.get $l0
      i32.load offset=20
      local.tee $l3
      local.get $l0
      i32.load offset=24
      call $f143
      local.get $l2
      local.get $l3
      call $f118
      br $L0
    end)
  (func $f164 (type $t7) (result i32)
    i32.const 1050599
    i32.const 12
    call $f68)
  (func $f165 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f166
    local.tee $l1
    call $f158
    call $f118
    local.get $l1
    call $f164
    call $f119
    local.get $l0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.tee $l2
    i64.const 0
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.tee $l3
    i64.const 0
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee $l4
    i64.const 0
    i64.store
    local.get $l0
    i64.const 0
    i64.store offset=32
    local.get $l0
    i32.const 32
    i32.add
    call $env.getOwner
    local.get $l0
    i32.const 24
    i32.add
    local.get $l2
    i64.load
    i64.store
    local.get $l0
    i32.const 16
    i32.add
    local.get $l3
    i64.load
    i64.store
    local.get $l0
    i32.const 8
    i32.add
    local.get $l4
    i64.load
    i64.store
    local.get $l0
    local.get $l0
    i64.load offset=32
    i64.store
    local.get $l0
    i64.const 0
    call $env.bigIntNew
    local.tee $l2
    call $env.bigIntGetExternalBalance
    local.get $l2
    local.get $l1
    call $f162
    local.set $l1
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0
    local.get $l1)
  (func $f166 (type $t7) (result i32)
    i32.const 1050611
    i32.const 14
    call $f68)
  (func $f167 (type $t2) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1050370
    i32.const 5
    call $f168
    local.get $p0
    local.get $l1
    i32.load
    local.get $l1
    i32.load offset=8
    call $f169
    local.get $l1
    call $f37
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $f168 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    local.get $p2
    call $env.storageLoadLength
    local.tee $l4
    call $f268
    local.get $p1
    local.get $p2
    local.get $l3
    i32.load
    call $env.storageLoad
    drop
    local.get $p0
    i32.const 8
    i32.add
    local.get $l4
    i32.store
    local.get $p0
    local.get $l3
    i64.load
    i64.store align=4
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0)
  (func $f169 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get $l3
    i64.const 0
    i64.store
    i32.const 0
    local.set $l4
    loop $L0
      block $B1
        block $B2
          local.get $l4
          i32.const 31
          i32.gt_u
          br_if $B2
          local.get $l4
          local.get $p2
          i32.lt_u
          br_if $B1
        end
        local.get $p0
        local.get $l3
        i64.load
        i64.store align=1
        local.get $p0
        i32.const 24
        i32.add
        local.get $l3
        i32.const 24
        i32.add
        i64.load
        i64.store align=1
        local.get $p0
        i32.const 16
        i32.add
        local.get $l3
        i32.const 16
        i32.add
        i64.load
        i64.store align=1
        local.get $p0
        i32.const 8
        i32.add
        local.get $l3
        i32.const 8
        i32.add
        i64.load
        i64.store align=1
        return
      end
      local.get $l3
      local.get $l4
      i32.add
      local.get $p1
      local.get $l4
      i32.add
      i32.load8_u
      i32.store8
      local.get $l4
      i32.const 1
      i32.add
      local.set $l4
      br $L0
    end)
  (func $f170 (type $t13) (result i64)
    i32.const 1050404
    i32.const 25
    call $env.int64storageLoad)
  (func $f171 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 0
    i32.store offset=32
    local.get $l1
    i64.const 1
    i64.store offset=24
    local.get $l1
    i32.const 1
    i32.store8 offset=36
    local.get $l1
    i32.const 56
    i32.add
    local.get $l1
    i32.const 24
    i32.add
    local.get $p0
    i32.load offset=8
    local.tee $l2
    call $f43
    block $B0
      block $B1
        local.get $l1
        i32.load offset=56
        i32.const 1
        i32.ne
        br_if $B1
        local.get $l1
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.get $l1
        i32.const 72
        i32.add
        i32.load
        i32.store
        local.get $l1
        local.get $l1
        i32.const 56
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store offset=8
        local.get $l1
        i32.load offset=60
        local.set $l3
        br $B0
      end
      local.get $l2
      i32.const 96
      i32.mul
      local.set $l2
      local.get $l1
      i32.load offset=60
      local.set $l4
      loop $L2
        block $B3
          local.get $l2
          br_if $B3
          i32.const 7
          local.set $l3
          br $B0
        end
        local.get $l1
        i32.const 56
        i32.add
        local.get $l4
        call $f35
        block $B4
          local.get $l1
          i32.load offset=56
          local.tee $l3
          i32.const 7
          i32.eq
          br_if $B4
          local.get $l1
          i32.const 16
          i32.add
          local.get $l1
          i32.const 68
          i32.add
          i32.load
          i32.store
          local.get $l1
          local.get $l1
          i64.load offset=60 align=4
          i64.store offset=8
          br $B0
        end
        local.get $l2
        i32.const -96
        i32.add
        local.set $l2
        local.get $l1
        i32.const 56
        i32.add
        call $f36
        br $L2
      end
    end
    local.get $l1
    i32.const 52
    i32.add
    local.get $l1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee $l4
    i32.load
    i32.store
    local.get $l1
    local.get $l1
    i64.load offset=8
    i64.store offset=44 align=4
    local.get $l1
    local.get $l3
    i32.store offset=40
    block $B5
      local.get $l3
      i32.const 7
      i32.ne
      br_if $B5
      local.get $l1
      i32.const 40
      i32.add
      call $f36
      local.get $l4
      local.get $l1
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.tee $l2
      i32.store
      local.get $l1
      local.get $l1
      i64.load offset=24
      local.tee $l5
      i64.store offset=8
      local.get $l1
      i32.const 56
      i32.add
      i32.const 8
      i32.add
      local.get $l2
      i32.store
      local.get $l1
      local.get $l5
      i64.store offset=56
      i32.const 1050471
      i32.const 8
      local.get $l5
      i32.wrap_i64
      local.get $l2
      call $env.storageStore
      drop
      local.get $l1
      i32.const 56
      i32.add
      call $f37
      local.get $p0
      call $f89
      local.get $l1
      i32.const 80
      i32.add
      global.set $g0
      return
    end
    local.get $l4
    local.get $l1
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get $l1
    local.get $l1
    i64.load offset=40
    i64.store offset=8
    local.get $l1
    i32.const 24
    i32.add
    call $f37
    local.get $l1
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    local.get $l4
    i64.load
    i64.store
    local.get $l1
    local.get $l1
    i64.load offset=8
    i64.store offset=56
    i32.const 1050511
    i32.const 27
    i32.const 1050508
    i32.const 3
    local.get $l1
    i32.const 56
    i32.add
    call $f54
    unreachable)
  (func $f172 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i64)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l0
    global.set $g0
    local.get $l0
    i32.const 8
    i32.add
    i32.const 1050538
    i32.const 11
    call $f168
    block $B0
      local.get $l0
      i32.load offset=8
      local.get $l0
      i32.load offset=16
      call $f58
      i32.wrap_i64
      local.tee $l1
      i32.const 255
      i32.and
      i32.const 6
      i32.lt_u
      br_if $B0
      local.get $l0
      i32.const 13
      i32.store offset=44
      local.get $l0
      i32.const 1055228
      i32.store offset=40
      local.get $l0
      i32.const 0
      i32.store offset=56
      local.get $l0
      i64.const 1
      i64.store offset=48
      local.get $l0
      i32.const 84
      i32.add
      i32.const 1
      i32.store
      local.get $l0
      i64.const 1
      i64.store offset=68 align=4
      local.get $l0
      i32.const 1048576
      i32.store offset=64
      local.get $l0
      i32.const 7
      i32.store offset=92
      local.get $l0
      local.get $l0
      i32.const 88
      i32.add
      i32.store offset=80
      local.get $l0
      local.get $l0
      i32.const 40
      i32.add
      i32.store offset=88
      block $B1
        local.get $l0
        i32.const 48
        i32.add
        local.get $l0
        i32.const 64
        i32.add
        call $f76
        i32.eqz
        br_if $B1
        local.get $l0
        i32.const 48
        i32.add
        i32.const 1048584
        i32.const 1048591
        call $f125
      end
      local.get $l0
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get $l0
      i32.const 48
      i32.add
      i32.const 8
      i32.add
      i32.load
      local.tee $l1
      i32.store
      local.get $l0
      local.get $l0
      i64.load offset=48
      local.tee $l2
      i64.store offset=24
      local.get $l0
      i32.const 76
      i32.add
      local.get $l1
      i32.store
      local.get $l0
      i32.const 6
      i32.store offset=64
      local.get $l0
      local.get $l2
      i64.store offset=68 align=4
      i32.const 1050479
      i32.const 29
      i32.const 1050549
      i32.const 10
      local.get $l0
      i32.const 64
      i32.add
      call $f54
      unreachable
    end
    local.get $l0
    i32.const 8
    i32.add
    call $f37
    local.get $l0
    i32.const 96
    i32.add
    global.set $g0
    local.get $l1)
  (func $f173 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    call $f243)
  (func $f174 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050587
    local.get $p0
    call $f48
    local.get $l1
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l1
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l1
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l1
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l2
    i32.store
    local.get $l1
    local.get $p0
    i64.load align=4
    local.tee $l3
    i64.store offset=32
    local.get $l3
    i32.wrap_i64
    local.get $l2
    call $f68
    local.set $p0
    local.get $l1
    i32.const 32
    i32.add
    call $f37
    local.get $l1
    i32.const 48
    i32.add
    global.set $g0
    local.get $p0)
  (func $f175 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050587
    local.get $p0
    call $f48
    local.get $l2
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    local.set $p0
    block $B0
      local.get $l2
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if $B0
      local.get $l2
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get $p0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $p0
      i64.load align=4
      i64.store offset=32
      i32.const 1050511
      i32.const 27
      i32.const 1050566
      i32.const 3
      local.get $l2
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l2
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    local.tee $l3
    i32.store
    local.get $l2
    local.get $p0
    i64.load align=4
    local.tee $l4
    i64.store offset=32
    local.get $l4
    i32.wrap_i64
    local.get $l3
    local.get $p1
    call $f69
    local.get $l2
    i32.const 32
    i32.add
    call $f37
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0)
  (func $f176 (type $t2) (param $p0 i32)
    i32.const 1050611
    i32.const 14
    local.get $p0
    call $f69)
  (func $f177 (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l0
    global.set $g0
    local.get $l0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.tee $l1
    i64.const 0
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.tee $l2
    i64.const 0
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee $l3
    i64.const 0
    i64.store
    local.get $l0
    i64.const 0
    i64.store offset=32
    i32.const 0
    local.set $l4
    block $B0
      loop $L1
        local.get $l4
        i32.const 32
        i32.eq
        br_if $B0
        local.get $l0
        local.get $l4
        i32.add
        local.tee $l5
        local.get $l0
        i64.load offset=32
        i64.store align=1
        local.get $l5
        i32.const 24
        i32.add
        local.get $l1
        i64.load
        i64.store align=1
        local.get $l5
        i32.const 16
        i32.add
        local.get $l2
        i64.load
        i64.store align=1
        local.get $l5
        i32.const 8
        i32.add
        local.get $l3
        i64.load
        i64.store align=1
        local.get $l4
        i32.const 32
        i32.add
        local.set $l4
        br $L1
      end
    end
    local.get $l0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get $l0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get $l0
    i32.const 23
    i32.add
    i64.const 0
    i64.store align=1
    local.get $l0
    i64.const 0
    i64.store
    local.get $l0
    i32.const 3
    i32.store8 offset=31
    local.get $l0
    i32.const 32
    i32.add
    call $f38
    local.get $l0
    i32.const 32
    i32.add
    i32.const 4
    i32.or
    local.set $l4
    block $B2
      local.get $l0
      i32.load offset=32
      i32.const 1
      i32.ne
      br_if $B2
      local.get $l0
      i32.const 64
      i32.add
      i32.const 8
      i32.add
      local.get $l4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l0
      local.get $l4
      i64.load align=4
      i64.store offset=64
      i32.const 1050637
      i32.const 25
      i32.const 1050662
      i32.const 4
      local.get $l0
      i32.const 64
      i32.add
      call $f54
      unreachable
    end
    local.get $l0
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.get $l4
    i32.const 8
    i32.add
    i32.load
    local.tee $l5
    i32.store
    local.get $l0
    local.get $l4
    i64.load align=4
    local.tee $l6
    i64.store offset=64
    local.get $l0
    i32.const 1
    local.get $l6
    i32.wrap_i64
    local.get $l5
    call $f152
    local.get $l0
    i32.const 64
    i32.add
    call $f37
    local.get $l0
    i32.const 80
    i32.add
    global.set $g0)
  (func $version (type $t19)
    (local $l0 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    i32.const 1049194
    i32.const 5
    call $f110
    local.get $l0
    i32.load
    local.get $l0
    i32.load offset=8
    call $env.finish
    local.get $l0
    call $f37
    local.get $l0
    i32.const 16
    i32.add
    global.set $g0)
  (func $f179 (type $t19)
    (local $l0 i32)
    i64.const 0
    call $env.bigIntNew
    local.tee $l0
    call $env.bigIntGetCallValue
    block $B0
      local.get $l0
      i64.const 0
      call $env.bigIntNew
      call $env.bigIntCmp
      i32.const 0
      i32.gt_s
      br_if $B0
      return
    end
    i32.const 1054406
    call $f274
    unreachable)
  (func $init (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i64)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 3
    call $f59
    call $f67
    local.set $l1
    local.get $l0
    i32.const 1
    call $f60
    i32.const 2
    call $f56
    local.set $l2
    block $B0
      local.get $l1
      i64.const 10000
      call $f73
      i32.eqz
      br_if $B0
      i32.const 1049199
      i32.const 23
      call $f53
      unreachable
    end
    i32.const 1050429
    i32.const 10
    local.get $l1
    call $env.bigIntStorageStoreUnsigned
    drop
    local.get $l0
    i32.const 32
    i32.add
    call $f149
    i32.const 1050370
    i32.const 5
    local.get $l0
    i32.const 32
    i32.add
    i32.const 32
    call $env.storageStore
    drop
    i32.const 1050375
    i32.const 17
    local.get $l0
    i32.const 32
    i32.add
    i32.const 32
    call $env.storageStore
    drop
    local.get $l0
    i32.const 32
    i32.add
    i32.const 1
    call $f151
    i32.const 1
    call $f137
    i32.const 1050392
    i32.const 12
    local.get $l0
    i32.const 32
    call $env.storageStore
    drop
    i32.const 1050404
    i32.const 25
    local.get $l2
    call $env.int64storageStore
    drop
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $getContractOwner (type $t19)
    (local $l0 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    call $f167
    local.get $l0
    call $f65
    local.get $l0
    i32.const 32
    i32.add
    global.set $g0)
  (func $getNodeRewardDestination (type $t19)
    (local $l0 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    i32.const 32
    i32.add
    i32.const 1050375
    i32.const 17
    call $f168
    local.get $l0
    local.get $l0
    i32.load offset=32
    local.get $l0
    i32.load offset=40
    call $f169
    local.get $l0
    i32.const 32
    i32.add
    call $f37
    local.get $l0
    call $f65
    local.get $l0
    i32.const 48
    i32.add
    global.set $g0)
  (func $getAuctionContractAddress (type $t19)
    (local $l0 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    call $f156
    local.get $l0
    call $f65
    local.get $l0
    i32.const 32
    i32.add
    global.set $g0)
  (func $getTimeBeforeForceUnstake (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f170
    call $f50)
  (func $getNodeShare (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f160
    call $env.bigIntFinishUnsigned)
  (func $getStakePerNode (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f133
    call $env.bigIntFinishUnsigned)
  (func $setStakePerNode (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    call $f67
    local.set $l1
    local.get $l0
    call $f149
    local.get $l0
    i32.const 32
    i32.add
    call $f167
    block $B0
      block $B1
        block $B2
          local.get $l0
          local.get $l0
          i32.const 32
          i32.add
          call $f116
          i32.eqz
          br_if $B2
          i32.const 36
          local.set $l0
          i32.const 1049222
          local.set $l1
          br $B1
        end
        call $f172
        i32.const 255
        i32.and
        i32.eqz
        br_if $B0
        i32.const 41
        local.set $l0
        i32.const 1049258
        local.set $l1
      end
      local.get $l1
      local.get $l0
      call $f53
      unreachable
    end
    i32.const 1050439
    i32.const 14
    local.get $l1
    call $env.bigIntStorageStoreUnsigned
    drop
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $getExpectedStake (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f132
    call $env.bigIntFinishUnsigned)
  (func $getNrDelegators (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f136
    i32.const -1
    i32.add
    i64.extend_i32_u
    call $f50)
  (func $getNumNodes (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f134
    i64.extend_i32_u
    call $f50)
  (func $setNumNodes (type $t19)
    (local $l0 i32) (local $l1 i64) (local $l2 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    block $B0
      i32.const 0
      call $f56
      local.tee $l1
      i64.const 4294967296
      i64.ge_u
      br_if $B0
      local.get $l0
      call $f149
      local.get $l0
      i32.const 32
      i32.add
      call $f167
      block $B1
        block $B2
          block $B3
            local.get $l0
            local.get $l0
            i32.const 32
            i32.add
            call $f116
            i32.eqz
            br_if $B3
            i32.const 1049299
            local.set $l0
            i32.const 41
            local.set $l2
            br $B2
          end
          call $f172
          i32.const 255
          i32.and
          i32.eqz
          br_if $B1
          i32.const 1049340
          local.set $l0
          i32.const 38
          local.set $l2
        end
        local.get $l0
        local.get $l2
        call $f53
        unreachable
      end
      i32.const 1050462
      i32.const 9
      local.get $l1
      i64.const 4294967295
      i64.and
      call $env.int64storageStore
      drop
      local.get $l0
      i32.const 32
      i32.add
      i32.const 0
      call $f103
      local.get $l0
      i32.const 32
      i32.add
      call $f171
      local.get $l0
      i32.const 64
      i32.add
      global.set $g0
      return
    end
    i32.const 1054569
    i32.const 21
    call $f52
    unreachable)
  (func $getBlsKeys (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    i32.const 8
    i32.add
    call $f139
    local.get $l0
    i32.load offset=16
    i32.const 96
    i32.mul
    local.set $l1
    local.get $l0
    i32.const 24
    i32.add
    i32.const 4
    i32.or
    local.set $l2
    block $B0
      block $B1
        loop $L2
          local.get $l1
          i32.eqz
          br_if $B1
          local.get $l0
          i32.const 24
          i32.add
          call $f34
          local.get $l0
          i32.load offset=24
          i32.const 1
          i32.eq
          br_if $B0
          local.get $l0
          i32.const 48
          i32.add
          i32.const 8
          i32.add
          local.get $l2
          i32.const 8
          i32.add
          i32.load
          local.tee $l3
          i32.store
          local.get $l0
          local.get $l2
          i64.load align=4
          local.tee $l4
          i64.store offset=48
          local.get $l4
          i32.wrap_i64
          local.get $l3
          call $env.finish
          local.get $l1
          i32.const -96
          i32.add
          local.set $l1
          local.get $l0
          i32.const 48
          i32.add
          call $f37
          br $L2
        end
      end
      local.get $l0
      i32.const 8
      i32.add
      call $f89
      local.get $l0
      i32.const 64
      i32.add
      global.set $g0
      return
    end
    local.get $l0
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    local.get $l2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l0
    local.get $l2
    i64.load align=4
    i64.store offset=48
    i32.const 1050747
    i32.const 26
    i32.const 1048976
    i32.const 6
    local.get $l0
    i32.const 48
    i32.add
    call $f54
    unreachable)
  (func $getNumBlsKeys (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f138
    i64.extend_i32_u
    call $f50)
  (func $setBlsKeys (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 464
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    call $env.getNumArguments
    local.set $l1
    local.get $l0
    i32.const 16
    i32.add
    call $f134
    call $f103
    local.get $l0
    local.get $l0
    i32.load offset=20
    i32.store offset=36
    i32.const 0
    local.set $l2
    local.get $l0
    i32.const 0
    i32.store offset=32
    local.get $l0
    i32.const 40
    i32.add
    i32.const 7
    i32.or
    local.set $l3
    local.get $l0
    i32.const 368
    i32.add
    local.set $l4
    local.get $l0
    i32.const 360
    i32.add
    i32.const 1
    i32.or
    local.set $l5
    block $B0
      block $B1
        block $B2
          block $B3
            loop $L4
              local.get $l0
              i32.const 8
              i32.add
              local.get $l0
              i32.const 32
              i32.add
              call $f46
              block $B5
                local.get $l0
                i32.load offset=8
                br_if $B5
                local.get $l2
                local.get $l1
                i32.lt_s
                br_if $B0
                local.get $l0
                i32.const 264
                i32.add
                i32.const 8
                i32.add
                local.get $l0
                i32.const 16
                i32.add
                i32.const 8
                i32.add
                i32.load
                i32.store
                local.get $l0
                local.get $l0
                i64.load offset=16
                i64.store offset=264
                local.get $l0
                i32.const 40
                i32.add
                call $f149
                local.get $l0
                i32.const 360
                i32.add
                call $f167
                local.get $l0
                i32.const 40
                i32.add
                local.get $l0
                i32.const 360
                i32.add
                call $f116
                i32.eqz
                br_if $B3
                i32.const 1049378
                local.set $l2
                i32.const 27
                local.set $l5
                br $B2
              end
              block $B6
                block $B7
                  block $B8
                    block $B9
                      local.get $l2
                      local.get $l1
                      i32.ge_s
                      br_if $B9
                      local.get $l0
                      i32.const 136
                      i32.add
                      local.get $l2
                      call $f57
                      local.get $l0
                      i32.load offset=136
                      local.set $l6
                      local.get $l0
                      local.get $l0
                      i32.load offset=144
                      i32.store offset=156
                      local.get $l0
                      local.get $l6
                      i32.store offset=152
                      local.get $l0
                      i32.const 1
                      i32.store8 offset=160
                      local.get $l0
                      i32.const 360
                      i32.add
                      local.get $l0
                      i32.const 152
                      i32.add
                      call $f121
                      local.get $l0
                      i32.const 356
                      i32.add
                      i32.const 2
                      i32.add
                      local.tee $l6
                      local.get $l5
                      i32.const 2
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get $l0
                      local.get $l5
                      i32.load16_u align=1
                      i32.store16 offset=356
                      local.get $l0
                      i32.load offset=364
                      local.set $l7
                      local.get $l0
                      i32.load8_u offset=360
                      local.set $l8
                      local.get $l0
                      i32.const 264
                      i32.add
                      local.get $l4
                      i32.const 89
                      call $f290
                      drop
                      local.get $l8
                      i32.const 1
                      i32.eq
                      br_if $B8
                      local.get $l0
                      i32.const 260
                      i32.add
                      i32.const 2
                      i32.add
                      local.tee $l8
                      local.get $l6
                      i32.load8_u
                      i32.store8
                      local.get $l0
                      local.get $l0
                      i32.load16_u offset=356
                      i32.store16 offset=260
                      local.get $l0
                      i32.const 171
                      i32.add
                      local.get $l0
                      i32.const 264
                      i32.add
                      i32.const 89
                      call $f290
                      drop
                      local.get $l0
                      i32.load offset=156
                      i32.eqz
                      br_if $B6
                      i32.const 4
                      local.set $l7
                      br $B7
                    end
                    i32.const 1054460
                    i32.const 25
                    call $f52
                    unreachable
                  end
                  local.get $l0
                  i32.const 360
                  i32.add
                  i32.const 8
                  i32.add
                  local.get $l0
                  i32.const 264
                  i32.add
                  i32.const 8
                  i32.add
                  i32.load align=1
                  i32.store
                  local.get $l0
                  local.get $l0
                  i64.load offset=264 align=1
                  i64.store offset=360
                end
                local.get $l0
                i32.const 276
                i32.add
                local.get $l0
                i32.const 368
                i32.add
                i32.load
                i32.store
                local.get $l0
                local.get $l7
                i32.store offset=264
                local.get $l0
                local.get $l0
                i64.load offset=360
                i64.store offset=268 align=4
                i32.const 1050773
                i32.const 30
                i32.const 1048976
                i32.const 6
                local.get $l0
                i32.const 264
                i32.add
                call $f54
                unreachable
              end
              local.get $l0
              local.get $l0
              i32.load16_u offset=260
              i32.store16 offset=40
              local.get $l0
              local.get $l8
              i32.load8_u
              i32.store8 offset=42
              local.get $l0
              i32.const 360
              i32.add
              local.get $l0
              i32.const 171
              i32.add
              i32.const 89
              call $f290
              drop
              local.get $l0
              local.get $l7
              i32.store offset=43 align=1
              local.get $l3
              local.get $l0
              i32.const 360
              i32.add
              i32.const 89
              call $f290
              drop
              local.get $l2
              i32.const 1
              i32.add
              local.set $l2
              local.get $l0
              i32.const 136
              i32.add
              call $f37
              local.get $l0
              i32.const 16
              i32.add
              local.get $l0
              i32.const 40
              i32.add
              call $f106
              br $L4
            end
          end
          call $f172
          i32.const 255
          i32.and
          i32.eqz
          br_if $B1
          i32.const 1049405
          local.set $l2
          i32.const 35
          local.set $l5
        end
        local.get $l0
        i32.const 264
        i32.add
        call $f89
        local.get $l2
        local.get $l5
        call $f53
        unreachable
      end
      local.get $l0
      i32.const 360
      i32.add
      i32.const 8
      i32.add
      local.get $l0
      i32.const 264
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get $l0
      local.get $l0
      i64.load offset=264
      i64.store offset=360
      local.get $l0
      i32.const 360
      i32.add
      call $f171
      local.get $l0
      i32.const 464
      i32.add
      global.set $g0
      return
    end
    i32.const 1054460
    i32.const 25
    call $f52
    unreachable)
  (func $stakeState (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    call $f172
    local.set $l1
    local.get $l0
    i32.const 1
    i32.store8 offset=28
    local.get $l0
    i32.const 0
    i32.store offset=24
    local.get $l0
    i64.const 1
    i64.store offset=16
    local.get $l0
    i32.const 32
    i32.add
    local.get $l0
    i32.const 16
    i32.add
    local.get $l1
    call $f112
    block $B0
      local.get $l0
      i32.load offset=32
      i32.const 7
      i32.eq
      br_if $B0
      local.get $l0
      i32.const 8
      i32.add
      local.tee $l1
      local.get $l0
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.tee $l2
      i64.load
      i64.store
      local.get $l0
      local.get $l0
      i64.load offset=32
      i64.store
      local.get $l0
      i32.const 16
      i32.add
      call $f37
      local.get $l2
      local.get $l1
      i64.load
      i64.store
      local.get $l0
      local.get $l0
      i64.load
      i64.store offset=32
      i32.const 1050747
      i32.const 26
      i32.const 1050549
      i32.const 10
      local.get $l0
      i32.const 32
      i32.add
      call $f54
      unreachable
    end
    local.get $l0
    i32.const 32
    i32.add
    call $f36
    local.get $l0
    i32.const 8
    i32.add
    local.get $l0
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    i32.load
    local.tee $l1
    i32.store
    local.get $l0
    local.get $l0
    i64.load offset=16
    local.tee $l3
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l1
    i32.store
    local.get $l0
    local.get $l3
    i64.store offset=32
    local.get $l3
    i32.wrap_i64
    local.get $l1
    call $env.finish
    local.get $l0
    i32.const 32
    i32.add
    call $f37
    local.get $l0
    i32.const 48
    i32.add
    global.set $g0)
  (func $getUserId (type $t19)
    (local $l0 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    local.get $l0
    i32.const 0
    call $f60
    local.get $l0
    call $f150
    i64.extend_i32_u
    call $f50
    local.get $l0
    i32.const 32
    i32.add
    global.set $g0)
  (func $getFilledStake (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f147
    call $env.bigIntFinishUnsigned)
  (func $getStake (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    local.get $l0
    i32.const 0
    call $f60
    local.get $l0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.get $l0
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get $l0
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get $l0
    local.get $l0
    i64.load
    i64.store offset=32
    block $B0
      block $B1
        local.get $l0
        i32.const 32
        i32.add
        call $f150
        local.tee $l1
        i32.eqz
        br_if $B1
        local.get $l1
        call $f142
        local.set $l1
        br $B0
      end
      call $f33
      local.set $l1
    end
    local.get $l1
    call $env.bigIntFinishUnsigned
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $stake (type $t19)
    (local $l0 i32) (local $l1 i32)
    i32.const 0
    call $f59
    call $f70
    local.set $l0
    block $B0
      block $B1
        block $B2
          call $f172
          i32.const 255
          i32.and
          i32.eqz
          br_if $B2
          i32.const 37
          local.set $l1
          i32.const 1049440
          local.set $l0
          br $B1
        end
        local.get $l0
        call $f120
        br_if $B0
        call $f166
        local.tee $l1
        local.get $l0
        call $f61
        local.get $l1
        call $f176
        local.get $l0
        call $f146
        local.tee $l0
        i32.eqz
        br_if $B0
        i32.const 36
        local.set $l1
      end
      local.get $l0
      local.get $l1
      call $f53
      unreachable
    end)
  (func $stakeGenesis (type $t19)
    (local $l0 i32) (local $l1 i32)
    call $f179
    i32.const 1
    call $f59
    call $f67
    local.set $l0
    block $B0
      block $B1
        block $B2
          call $env.getBlockNonce
          i64.const 0
          i64.eq
          br_if $B2
          i32.const 18
          local.set $l1
          i32.const 1049477
          local.set $l0
          br $B1
        end
        local.get $l0
        call $f146
        local.tee $l0
        i32.eqz
        br_if $B0
        i32.const 36
        local.set $l1
      end
      local.get $l0
      local.get $l1
      call $f53
      unreachable
    end)
  (func $unstake (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 160
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    call $f67
    local.set $l1
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              call $f172
              i32.const 255
              i32.and
              i32.eqz
              br_if $B4
              i32.const 1049531
              local.set $l2
              i32.const 39
              local.set $l3
              br $B3
            end
            local.get $l1
            call $f120
            br_if $B1
            local.get $l0
            call $f149
            block $B5
              local.get $l0
              call $f150
              local.tee $l2
              br_if $B5
              i32.const 1049570
              local.set $l2
              i32.const 27
              local.set $l3
              br $B3
            end
            local.get $l0
            i32.const 32
            i32.add
            local.get $l2
            call $f140
            local.get $l1
            local.get $l0
            i32.load offset=40
            local.tee $l3
            call $f75
            i32.eqz
            br_if $B2
            i32.const 1049597
            local.set $l2
            i32.const 35
            local.set $l3
          end
          local.get $l2
          local.get $l3
          call $f53
          unreachable
        end
        local.get $l3
        local.get $l1
        call $f62
        local.get $l2
        local.get $l0
        i32.load offset=32
        local.get $l0
        i32.load offset=36
        local.get $l3
        call $f143
        call $f166
        local.tee $l2
        local.get $l1
        call $f62
        local.get $l2
        call $f176
        call $f147
        local.tee $l2
        local.get $l1
        call $f62
        local.get $l2
        call $f148
        local.get $l0
        local.get $l1
        i32.const 1049632
        i32.const 18
        call $f202
        local.get $l0
        i32.const 112
        i32.add
        i32.const 24
        i32.add
        local.tee $l4
        i64.const 0
        i64.store
        local.get $l0
        i32.const 112
        i32.add
        i32.const 16
        i32.add
        local.tee $l5
        i64.const 0
        i64.store
        local.get $l0
        i32.const 112
        i32.add
        i32.const 8
        i32.add
        local.tee $l6
        i64.const 0
        i64.store
        local.get $l0
        i64.const 0
        i64.store offset=112
        i32.const 0
        local.set $l2
        block $B6
          loop $L7
            local.get $l2
            i32.const 64
            i32.eq
            br_if $B6
            local.get $l0
            i32.const 48
            i32.add
            local.get $l2
            i32.add
            local.tee $l3
            local.get $l0
            i64.load offset=112
            i64.store align=1
            local.get $l3
            i32.const 24
            i32.add
            local.get $l4
            i64.load
            i64.store align=1
            local.get $l3
            i32.const 16
            i32.add
            local.get $l5
            i64.load
            i64.store align=1
            local.get $l3
            i32.const 8
            i32.add
            local.get $l6
            i64.load
            i64.store align=1
            local.get $l2
            i32.const 32
            i32.add
            local.set $l2
            br $L7
          end
        end
        local.get $l0
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get $l0
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get $l0
        i32.const 71
        i32.add
        i64.const 0
        i64.store align=1
        local.get $l0
        i32.const 88
        i32.add
        local.get $l0
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get $l0
        i32.const 96
        i32.add
        local.get $l0
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get $l0
        i32.const 104
        i32.add
        local.get $l0
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get $l0
        i64.const 0
        i64.store offset=48
        local.get $l0
        i32.const 2
        i32.store8 offset=79
        local.get $l0
        local.get $l0
        i64.load
        i64.store offset=80
        local.get $l0
        i32.const 112
        i32.add
        local.get $l1
        call $f39
        local.get $l0
        i32.const 112
        i32.add
        i32.const 4
        i32.or
        local.set $l2
        local.get $l0
        i32.load offset=112
        i32.const 1
        i32.eq
        br_if $B0
        local.get $l0
        i32.const 144
        i32.add
        i32.const 8
        i32.add
        local.get $l2
        i32.const 8
        i32.add
        i32.load
        local.tee $l3
        i32.store
        local.get $l0
        local.get $l2
        i64.load align=4
        local.tee $l7
        i64.store offset=144
        local.get $l0
        i32.const 48
        i32.add
        i32.const 2
        local.get $l7
        i32.wrap_i64
        local.get $l3
        call $f152
        local.get $l0
        i32.const 144
        i32.add
        call $f37
      end
      local.get $l0
      i32.const 160
      i32.add
      global.set $g0
      return
    end
    local.get $l0
    i32.const 144
    i32.add
    i32.const 8
    i32.add
    local.get $l2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l0
    local.get $l2
    i64.load align=4
    i64.store offset=144
    i32.const 1050637
    i32.const 25
    i32.const 1050662
    i32.const 4
    local.get $l0
    i32.const 144
    i32.add
    call $f54
    unreachable)
  (func $f202 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 16
    i32.add
    local.get $p1
    call $f271
    local.get $l4
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1055336
    call $f272
    local.get $p0
    local.get $l4
    i32.load
    local.get $p2
    local.get $p3
    call $env.transferValue
    drop
    local.get $l4
    call $f273
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $activate (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    global.get $g0
    i32.const 288
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    call $env.getNumArguments
    local.set $l1
    local.get $l0
    i32.const 32
    i32.add
    call $f134
    call $f98
    local.get $l0
    local.get $l0
    i32.load offset=36
    i32.store offset=84
    i32.const 0
    local.set $l2
    local.get $l0
    i32.const 0
    i32.store offset=80
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                loop $L6
                  local.get $l0
                  i32.const 24
                  i32.add
                  local.get $l0
                  i32.const 80
                  i32.add
                  call $f46
                  block $B7
                    local.get $l0
                    i32.load offset=24
                    br_if $B7
                    local.get $l2
                    local.get $l1
                    i32.lt_s
                    br_if $B4
                    local.get $l0
                    i32.const 48
                    i32.add
                    i32.const 8
                    i32.add
                    local.get $l0
                    i32.const 32
                    i32.add
                    i32.const 8
                    i32.add
                    i32.load
                    i32.store
                    local.get $l0
                    local.get $l0
                    i64.load offset=32
                    i64.store offset=48
                    local.get $l0
                    i32.const 80
                    i32.add
                    call $f149
                    local.get $l0
                    i32.const 176
                    i32.add
                    call $f167
                    i32.const 23
                    local.set $l1
                    local.get $l0
                    i32.const 80
                    i32.add
                    local.get $l0
                    i32.const 176
                    i32.add
                    call $f116
                    i32.eqz
                    br_if $B5
                    i32.const 1049747
                    local.set $l2
                    br $B1
                  end
                  block $B8
                    local.get $l2
                    local.get $l1
                    i32.ge_s
                    br_if $B8
                    local.get $l0
                    i32.const 176
                    i32.add
                    local.get $l2
                    call $f57
                    block $B9
                      local.get $l0
                      i32.load offset=40
                      local.tee $l3
                      local.get $l0
                      i32.load offset=36
                      i32.ne
                      br_if $B9
                      local.get $l0
                      i32.const 32
                      i32.add
                      i32.const 1
                      call $f109
                      local.get $l0
                      i32.load offset=40
                      local.set $l3
                    end
                    local.get $l2
                    i32.const 1
                    i32.add
                    local.set $l2
                    local.get $l0
                    i32.load offset=32
                    local.get $l3
                    i32.const 12
                    i32.mul
                    i32.add
                    local.tee $l4
                    local.get $l0
                    i64.load offset=176
                    i64.store align=4
                    local.get $l4
                    i32.const 8
                    i32.add
                    local.get $l0
                    i32.const 176
                    i32.add
                    i32.const 8
                    i32.add
                    i32.load
                    i32.store
                    local.get $l0
                    local.get $l3
                    i32.const 1
                    i32.add
                    i32.store offset=40
                    br $L6
                  end
                end
                i32.const 1054460
                i32.const 25
                call $f52
                unreachable
              end
              block $B10
                call $f172
                i32.const 255
                i32.and
                i32.eqz
                br_if $B10
                i32.const 1049770
                local.set $l2
                br $B1
              end
              i32.const 24
              local.set $l1
              block $B11
                call $f138
                call $f134
                i32.eq
                br_if $B11
                i32.const 1049793
                local.set $l2
                br $B1
              end
              local.get $l0
              i32.load offset=48
              i32.const 8
              i32.add
              local.set $l2
              local.get $l0
              i32.load offset=56
              i32.const 1073741823
              i32.and
              i32.const 1
              i32.add
              local.set $l3
              block $B12
                loop $L13
                  block $B14
                    local.get $l3
                    i32.const -1
                    i32.add
                    local.tee $l3
                    br_if $B14
                    local.get $l0
                    i32.const 64
                    i32.add
                    call $f139
                    local.get $l0
                    i32.load offset=72
                    local.tee $l5
                    br_if $B12
                    i32.const 1049841
                    local.set $l2
                    i32.const 29
                    local.set $l1
                    br $B2
                  end
                  local.get $l2
                  i32.load
                  local.set $l4
                  local.get $l2
                  i32.const 12
                  i32.add
                  local.set $l2
                  local.get $l4
                  i32.const 32
                  i32.eq
                  br_if $L13
                end
                i32.const 1049817
                local.set $l2
                br $B1
              end
              local.get $l0
              i32.const 16
              i32.add
              call $f153
              local.get $l0
              i32.load offset=16
              local.tee $l2
              br_if $B3
              i32.const 1
              call $f155
              local.get $l0
              i32.const 80
              i32.add
              call $f156
              local.get $l0
              i32.const 80
              i32.add
              call $f157
              local.set $l6
              local.get $l0
              i32.const 1049872
              i32.store offset=116
              local.get $l0
              local.get $l6
              i32.store offset=112
              local.get $l0
              call $f132
              i32.store offset=124
              local.get $l0
              i32.const 128
              i32.add
              i32.const 8
              i32.add
              local.get $l0
              i32.const 64
              i32.add
              i32.const 8
              i32.add
              i32.load
              local.tee $l7
              i32.store
              local.get $l0
              local.get $l0
              i64.load offset=64
              i64.store offset=128
              local.get $l0
              i32.const 144
              i32.add
              i32.const 8
              i32.add
              local.get $l0
              i32.const 48
              i32.add
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get $l0
              local.get $l0
              i64.load offset=48
              i64.store offset=144
              local.get $l0
              i32.const 160
              i32.add
              local.get $l7
              i32.const 1
              i32.shl
              local.tee $l2
              call $f98
              block $B15
                local.get $l0
                i32.load offset=168
                local.tee $l3
                local.get $l2
                i32.lt_u
                br_if $B15
                local.get $l0
                local.get $l2
                i32.store offset=168
                local.get $l0
                i32.load offset=160
                local.get $l2
                i32.const 12
                i32.mul
                i32.add
                local.get $l3
                local.get $l2
                i32.sub
                call $f87
                br $B0
              end
              local.get $l0
              i32.const 160
              i32.add
              local.get $l2
              local.get $l3
              i32.sub
              local.tee $l4
              call $f109
              local.get $l0
              i32.load offset=160
              local.set $l2
              local.get $l0
              i32.load offset=168
              local.set $l3
              local.get $l0
              local.get $l4
              i32.store offset=180
              local.get $l0
              i32.const 1
              i32.store offset=176
              local.get $l2
              local.get $l3
              i32.const 12
              i32.mul
              i32.add
              local.set $l2
              loop $L16
                local.get $l0
                i32.const 8
                i32.add
                local.get $l0
                i32.const 176
                i32.add
                call $f46
                block $B17
                  local.get $l0
                  i32.load offset=8
                  br_if $B17
                  block $B18
                    local.get $l4
                    i32.eqz
                    br_if $B18
                    local.get $l2
                    i64.const 1
                    i64.store align=4
                    local.get $l2
                    i32.const 8
                    i32.add
                    i32.const 0
                    i32.store
                    local.get $l3
                    i32.const 1
                    i32.add
                    local.set $l3
                  end
                  local.get $l0
                  local.get $l3
                  i32.store offset=168
                  br $B0
                end
                local.get $l2
                i64.const 1
                i64.store align=4
                local.get $l2
                i32.const 8
                i32.add
                i32.const 0
                i32.store
                local.get $l2
                i32.const 12
                i32.add
                local.set $l2
                local.get $l3
                i32.const 1
                i32.add
                local.set $l3
                br $L16
              end
            end
            i32.const 1054460
            i32.const 25
            call $f52
            unreachable
          end
          local.get $l0
          i32.load offset=20
          local.set $l1
        end
        local.get $l0
        i32.const 64
        i32.add
        call $f89
      end
      local.get $l0
      i32.const 48
      i32.add
      call $f86
      local.get $l2
      local.get $l1
      call $f53
      unreachable
    end
    local.get $l7
    i32.const 1
    i32.shl
    i32.const -2
    i32.add
    local.set $l3
    local.get $l0
    i32.load offset=152
    local.tee $l4
    local.get $l7
    i32.sub
    i32.const 12
    i32.mul
    local.set $l8
    local.get $l0
    i32.load offset=128
    local.get $l7
    i32.const -1
    i32.add
    local.tee $l2
    i32.const 96
    i32.mul
    i32.add
    local.set $l1
    local.get $l0
    i32.load offset=144
    local.get $l2
    i32.const 12
    i32.mul
    i32.add
    local.set $l2
    block $B19
      block $B20
        loop $L21
          local.get $l7
          i32.const -1
          i32.add
          local.tee $l9
          i32.const 0
          i32.lt_s
          br_if $B20
          local.get $l0
          i32.const 176
          i32.add
          local.get $l1
          i32.const 96
          call $f290
          drop
          local.get $l0
          i32.const 272
          i32.add
          local.get $l0
          i32.const 176
          i32.add
          i32.const 96
          call $f110
          local.get $l0
          i32.const 160
          i32.add
          local.get $l3
          i32.const 1049040
          call $f117
          local.tee $l10
          call $f37
          local.get $l10
          i32.const 8
          i32.add
          local.get $l0
          i32.const 272
          i32.add
          i32.const 8
          i32.add
          local.tee $l11
          i32.load
          i32.store
          local.get $l10
          local.get $l0
          i64.load offset=272
          i64.store align=4
          local.get $l4
          local.get $l9
          i32.le_u
          br_if $B19
          local.get $l11
          local.get $l2
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get $l0
          local.get $l2
          i64.load align=4
          i64.store offset=272
          local.get $l2
          local.get $l2
          i32.const 12
          i32.add
          local.get $l8
          call $f291
          local.set $l10
          local.get $l0
          i32.const 160
          i32.add
          local.get $l3
          i32.const 1
          i32.add
          i32.const 1049056
          call $f117
          local.tee $l2
          call $f37
          local.get $l2
          i32.const 8
          i32.add
          local.get $l11
          i32.load
          i32.store
          local.get $l2
          local.get $l0
          i64.load offset=272
          i64.store align=4
          local.get $l1
          i32.const -96
          i32.add
          local.set $l1
          local.get $l10
          i32.const -12
          i32.add
          local.set $l2
          local.get $l3
          i32.const -2
          i32.add
          local.set $l3
          local.get $l4
          i32.const -1
          i32.add
          local.set $l4
          local.get $l9
          local.set $l7
          br $L21
        end
      end
      local.get $l0
      i32.const 176
      i32.add
      i32.const 8
      i32.add
      local.get $l0
      i32.const 160
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get $l0
      local.get $l4
      i32.store offset=152
      local.get $l0
      local.get $l7
      i32.store offset=136
      local.get $l0
      local.get $l0
      i64.load offset=160
      i64.store offset=176
      local.get $l0
      i32.const 144
      i32.add
      call $f86
      local.get $l0
      i32.const 128
      i32.add
      call $f89
      local.get $l6
      local.get $l5
      local.get $l0
      i32.const 176
      i32.add
      local.get $l0
      i32.const 124
      i32.add
      call $f126
      local.get $l0
      i32.const 112
      i32.add
      call $f78
      local.get $l0
      i32.const 288
      i32.add
      global.set $g0
      return
    end
    local.get $l7
    i32.const -1
    i32.add
    local.get $l4
    call $f204
    unreachable)
  (func $f204 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=4
    local.get $l2
    local.get $p0
    i32.store
    local.get $l2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l2
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get $l2
    i64.const 3
    i64.store offset=12 align=4
    local.get $l2
    i32.const 1051060
    i32.store offset=8
    local.get $l2
    i32.const 1
    i32.store offset=36
    local.get $l2
    local.get $l2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l2
    local.get $l2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l2
    local.get $l2
    i32.store offset=32
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1051084
    call $f234
    unreachable)
  (func $activateGenesis (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    block $B0
      block $B1
        block $B2
          call $env.getBlockNonce
          i64.const 0
          i64.eq
          br_if $B2
          i32.const 1049477
          local.set $l1
          i32.const 18
          local.set $l0
          br $B1
        end
        local.get $l0
        i32.const 8
        i32.add
        call $f153
        local.get $l0
        i32.load offset=8
        local.tee $l1
        i32.eqz
        br_if $B0
        local.get $l0
        i32.load offset=12
        local.set $l0
      end
      local.get $l1
      local.get $l0
      call $f53
      unreachable
    end
    i32.const 2
    call $f155
    call $f177
    local.get $l0
    i32.const 16
    i32.add
    global.set $g0)
  (func $deactivate (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    call $f149
    local.get $l0
    i32.const 32
    i32.add
    call $f167
    block $B0
      block $B1
        block $B2
          local.get $l0
          local.get $l0
          i32.const 32
          i32.add
          call $f116
          i32.eqz
          br_if $B2
          i32.const 1049896
          local.set $l0
          i32.const 25
          local.set $l1
          br $B1
        end
        call $f172
        i32.const 255
        i32.and
        i32.const 2
        i32.eq
        br_if $B0
        i32.const 1049921
        local.set $l0
        i32.const 22
        local.set $l1
      end
      local.get $l0
      local.get $l1
      call $f53
      unreachable
    end
    call $f154
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $forceUnstake (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i64) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    call $f149
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $l0
            call $f150
            local.tee $l1
            br_if $B3
            i32.const 1049943
            local.set $l0
            i32.const 37
            local.set $l1
            br $B2
          end
          block $B4
            local.get $l1
            call $f174
            call $f120
            i32.eqz
            br_if $B4
            i32.const 1049980
            local.set $l0
            i32.const 67
            local.set $l1
            br $B2
          end
          local.get $l0
          i32.const 1050593
          local.get $l1
          call $f48
          local.get $l0
          i32.const 4
          i32.or
          local.set $l1
          local.get $l0
          i32.load
          i32.const 1
          i32.eq
          br_if $B0
          local.get $l0
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get $l1
          i32.const 8
          i32.add
          i32.load
          local.tee $l2
          i32.store
          local.get $l0
          local.get $l1
          i64.load align=4
          local.tee $l3
          i64.store offset=32
          local.get $l3
          i32.wrap_i64
          local.get $l2
          call $env.int64storageLoad
          local.set $l3
          local.get $l0
          i32.const 32
          i32.add
          call $f37
          call $f170
          local.set $l4
          call $env.getBlockTimestamp
          local.get $l4
          local.get $l3
          i64.add
          i64.gt_u
          br_if $B1
          i32.const 1050047
          local.set $l0
          i32.const 29
          local.set $l1
        end
        local.get $l0
        local.get $l1
        call $f53
        unreachable
      end
      call $f154
      local.get $l0
      i32.const 48
      i32.add
      global.set $g0
      return
    end
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l0
    local.get $l1
    i64.load align=4
    i64.store offset=32
    i32.const 1050511
    i32.const 27
    i32.const 1050566
    i32.const 3
    local.get $l0
    i32.const 32
    i32.add
    call $f54
    unreachable)
  (func $unBond (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    block $B0
      call $f172
      i32.const 255
      i32.and
      i32.const 4
      i32.eq
      br_if $B0
      i32.const 1050076
      i32.const 32
      call $f53
      unreachable
    end
    local.get $l0
    i32.const 8
    i32.add
    call $f139
    i32.const 5
    call $f155
    call $f163
    local.get $l0
    i32.const 24
    i32.add
    call $f156
    local.get $l0
    i32.const 24
    i32.add
    call $f157
    local.set $l1
    local.get $l0
    i32.const 1049872
    i32.store offset=60
    local.get $l0
    local.get $l1
    i32.store offset=56
    local.get $l0
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.get $l0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get $l0
    local.get $l0
    i64.load offset=8
    i64.store offset=64
    local.get $l1
    local.get $l0
    i32.const 64
    i32.add
    call $f131
    local.get $l0
    i32.const 56
    i32.add
    call $f78
    local.get $l0
    i32.const 80
    i32.add
    global.set $g0)
  (func $getTotalCumulatedRewards (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f158
    call $env.bigIntFinishUnsigned)
  (func $_rewards_for_node (type $t19)
    call $f179
    i32.const 1
    call $f59
    call $f67
    call $f159
    call $env.bigIntFinishUnsigned)
  (func $computeAllRewards (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f163)
  (func $getClaimableRewards (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    local.get $l0
    i32.const 0
    call $f60
    local.get $l0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.get $l0
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get $l0
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get $l0
    local.get $l0
    i64.load
    i64.store offset=32
    block $B0
      block $B1
        local.get $l0
        i32.const 32
        i32.add
        call $f150
        local.tee $l1
        i32.eqz
        br_if $B1
        local.get $l0
        i32.const 64
        i32.add
        local.get $l1
        call $f161
        local.get $l0
        i32.load offset=68
        local.set $l1
        br $B0
      end
      call $f33
      local.set $l1
    end
    local.get $l1
    call $env.bigIntFinishUnsigned
    local.get $l0
    i32.const 80
    i32.add
    global.set $g0)
  (func $claimRewards (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    call $f149
    block $B0
      local.get $l0
      call $f150
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $l0
      i32.const 32
      i32.add
      local.get $l1
      call $f161
      block $B1
        local.get $l0
        i32.load offset=36
        local.tee $l2
        i64.const 0
        call $f73
        i32.eqz
        br_if $B1
        local.get $l0
        local.get $l2
        i32.const 1050122
        i32.const 16
        call $f202
        call $f164
        local.tee $l3
        local.get $l2
        call $f61
        i32.const 1050599
        i32.const 12
        local.get $l3
        call $env.bigIntStorageStoreUnsigned
        drop
        local.get $l0
        call $f33
        local.tee $l2
        i32.store offset=36
      end
      local.get $l1
      local.get $l0
      i32.load offset=32
      local.get $l2
      local.get $l0
      i32.load offset=40
      call $f143
      local.get $l0
      i32.const 48
      i32.add
      global.set $g0
      return
    end
    i32.const 1050108
    i32.const 14
    call $f53
    unreachable)
  (func $getUnexpectedBalance (type $t19)
    call $f179
    i32.const 0
    call $f59
    call $f165
    call $env.bigIntFinishUnsigned)
  (func $withdrawUnexpectedBalance (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 0
    call $f59
    local.get $l0
    call $f149
    local.get $l0
    i32.const 32
    i32.add
    call $f167
    block $B0
      local.get $l0
      local.get $l0
      i32.const 32
      i32.add
      call $f116
      br_if $B0
      block $B1
        call $f165
        local.tee $l1
        i64.const 0
        call $f73
        i32.eqz
        br_if $B1
        local.get $l0
        local.get $l1
        i32.const 1050180
        i32.const 18
        call $f202
      end
      local.get $l0
      i32.const 64
      i32.add
      global.set $g0
      return
    end
    i32.const 1050138
    i32.const 42
    call $f53
    unreachable)
  (func $offerStakeForSale (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i64) (local $l4 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    call $f67
    local.set $l1
    local.get $l0
    i32.const 8
    i32.add
    call $f149
    block $B0
      block $B1
        local.get $l0
        i32.const 8
        i32.add
        call $f150
        local.tee $l2
        br_if $B1
        i32.const 1050198
        local.set $l0
        i32.const 40
        local.set $l2
        br $B0
      end
      block $B2
        local.get $l1
        local.get $l2
        call $f142
        call $f75
        i32.eqz
        br_if $B2
        i32.const 1050238
        local.set $l0
        i32.const 37
        local.set $l2
        br $B0
      end
      local.get $l2
      local.get $l1
      call $f175
      call $env.getBlockTimestamp
      local.set $l3
      local.get $l0
      i32.const 40
      i32.add
      i32.const 1050593
      local.get $l2
      call $f48
      local.get $l0
      i32.const 40
      i32.add
      i32.const 4
      i32.or
      local.set $l2
      block $B3
        local.get $l0
        i32.load offset=40
        i32.const 1
        i32.ne
        br_if $B3
        local.get $l0
        i32.const 64
        i32.add
        i32.const 8
        i32.add
        local.get $l2
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get $l0
        local.get $l2
        i64.load align=4
        i64.store offset=64
        i32.const 1050511
        i32.const 27
        i32.const 1050566
        i32.const 3
        local.get $l0
        i32.const 64
        i32.add
        call $f54
        unreachable
      end
      local.get $l0
      i32.const 64
      i32.add
      i32.const 8
      i32.add
      local.get $l2
      i32.const 8
      i32.add
      i32.load
      local.tee $l1
      i32.store
      local.get $l0
      local.get $l2
      i64.load align=4
      local.tee $l4
      i64.store offset=64
      local.get $l4
      i32.wrap_i64
      local.get $l1
      local.get $l3
      call $env.int64storageStore
      drop
      local.get $l0
      i32.const 64
      i32.add
      call $f37
      local.get $l0
      i32.const 80
      i32.add
      global.set $g0
      return
    end
    local.get $l0
    local.get $l2
    call $f53
    unreachable)
  (func $getStakeForSale (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f179
    i32.const 1
    call $f59
    local.get $l0
    i32.const 0
    call $f60
    local.get $l0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.get $l0
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get $l0
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get $l0
    local.get $l0
    i64.load
    i64.store offset=32
    block $B0
      block $B1
        local.get $l0
        i32.const 32
        i32.add
        call $f150
        local.tee $l1
        i32.eqz
        br_if $B1
        local.get $l1
        call $f174
        local.set $l1
        br $B0
      end
      call $f33
      local.set $l1
    end
    local.get $l1
    call $env.bigIntFinishUnsigned
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $purchaseStake (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 240
    i32.sub
    local.tee $l0
    global.set $g0
    i32.const 1
    call $f59
    local.get $l0
    i32.const 0
    call $f60
    call $f70
    local.set $l1
    local.get $l0
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.get $l0
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get $l0
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get $l0
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get $l0
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get $l0
    local.get $l0
    i64.load
    i64.store offset=32
    block $B0
      block $B1
        block $B2
          local.get $l1
          call $f120
          br_if $B2
          block $B3
            local.get $l0
            i32.const 32
            i32.add
            call $f150
            local.tee $l2
            br_if $B3
            i32.const 1050275
            local.set $l2
            i32.const 14
            local.set $l3
            br $B0
          end
          block $B4
            local.get $l1
            local.get $l2
            call $f174
            local.tee $l3
            call $f75
            i32.eqz
            br_if $B4
            i32.const 1050289
            local.set $l2
            i32.const 29
            local.set $l3
            br $B0
          end
          local.get $l3
          local.get $l1
          call $f62
          local.get $l2
          local.get $l3
          call $f175
          block $B5
            local.get $l1
            local.get $l2
            call $f142
            local.tee $l3
            call $f75
            i32.eqz
            br_if $B5
            i32.const 1050318
            local.set $l2
            i32.const 35
            local.set $l3
            br $B0
          end
          local.get $l3
          local.get $l1
          call $f62
          local.get $l2
          local.get $l3
          call $f145
          local.get $l0
          i32.const 64
          i32.add
          call $f149
          block $B6
            local.get $l0
            i32.const 64
            i32.add
            call $f150
            local.tee $l2
            br_if $B6
            local.get $l0
            i32.const 64
            i32.add
            call $f135
            local.tee $l2
            call $f151
          end
          local.get $l2
          call $f142
          local.tee $l3
          local.get $l1
          call $f61
          local.get $l2
          local.get $l3
          call $f145
          local.get $l0
          i32.const 32
          i32.add
          local.get $l1
          i32.const 1050353
          i32.const 17
          call $f202
          local.get $l0
          i32.const 192
          i32.add
          i32.const 24
          i32.add
          local.tee $l4
          i64.const 0
          i64.store
          local.get $l0
          i32.const 192
          i32.add
          i32.const 16
          i32.add
          local.tee $l5
          i64.const 0
          i64.store
          local.get $l0
          i32.const 192
          i32.add
          i32.const 8
          i32.add
          local.tee $l6
          i64.const 0
          i64.store
          local.get $l0
          i64.const 0
          i64.store offset=192
          i32.const 0
          local.set $l2
          block $B7
            loop $L8
              local.get $l2
              i32.const 96
              i32.eq
              br_if $B7
              local.get $l0
              i32.const 96
              i32.add
              local.get $l2
              i32.add
              local.tee $l3
              local.get $l0
              i64.load offset=192
              i64.store align=1
              local.get $l3
              i32.const 24
              i32.add
              local.get $l4
              i64.load
              i64.store align=1
              local.get $l3
              i32.const 16
              i32.add
              local.get $l5
              i64.load
              i64.store align=1
              local.get $l3
              i32.const 8
              i32.add
              local.get $l6
              i64.load
              i64.store align=1
              local.get $l2
              i32.const 32
              i32.add
              local.set $l2
              br $L8
            end
          end
          local.get $l0
          i32.const 96
          i32.add
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get $l0
          i32.const 96
          i32.add
          i32.const 16
          i32.add
          i64.const 0
          i64.store
          local.get $l0
          i32.const 119
          i32.add
          i64.const 0
          i64.store align=1
          local.get $l0
          i32.const 136
          i32.add
          local.get $l0
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get $l0
          i32.const 144
          i32.add
          local.get $l0
          i32.const 32
          i32.add
          i32.const 16
          i32.add
          i64.load
          i64.store
          local.get $l0
          i32.const 152
          i32.add
          local.get $l0
          i32.const 32
          i32.add
          i32.const 24
          i32.add
          i64.load
          i64.store
          local.get $l0
          i32.const 168
          i32.add
          local.get $l0
          i32.const 64
          i32.add
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get $l0
          i32.const 176
          i32.add
          local.get $l0
          i32.const 64
          i32.add
          i32.const 16
          i32.add
          i64.load
          i64.store
          local.get $l0
          i32.const 184
          i32.add
          local.get $l0
          i32.const 64
          i32.add
          i32.const 24
          i32.add
          i64.load
          i64.store
          local.get $l0
          i64.const 0
          i64.store offset=96
          local.get $l0
          i32.const 9
          i32.store8 offset=127
          local.get $l0
          local.get $l0
          i64.load offset=32
          i64.store offset=128
          local.get $l0
          local.get $l0
          i64.load offset=64
          i64.store offset=160
          local.get $l0
          i32.const 192
          i32.add
          local.get $l1
          call $f39
          local.get $l0
          i32.const 192
          i32.add
          i32.const 4
          i32.or
          local.set $l2
          local.get $l0
          i32.load offset=192
          i32.const 1
          i32.eq
          br_if $B1
          local.get $l0
          i32.const 224
          i32.add
          i32.const 8
          i32.add
          local.get $l2
          i32.const 8
          i32.add
          i32.load
          local.tee $l3
          i32.store
          local.get $l0
          local.get $l2
          i64.load align=4
          local.tee $l7
          i64.store offset=224
          local.get $l0
          i32.const 96
          i32.add
          i32.const 3
          local.get $l7
          i32.wrap_i64
          local.get $l3
          call $f152
          local.get $l0
          i32.const 224
          i32.add
          call $f37
        end
        local.get $l0
        i32.const 240
        i32.add
        global.set $g0
        return
      end
      local.get $l0
      i32.const 224
      i32.add
      i32.const 8
      i32.add
      local.get $l2
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l0
      local.get $l2
      i64.load align=4
      i64.store offset=224
      i32.const 1050637
      i32.const 25
      i32.const 1050662
      i32.const 4
      local.get $l0
      i32.const 224
      i32.add
      call $f54
      unreachable
    end
    local.get $l2
    local.get $l3
    call $f53
    unreachable)
  (func $callBack (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64) (local $l9 i32)
    global.get $g0
    i32.const 112
    i32.sub
    local.tee $l0
    global.set $g0
    i32.const 0
    local.set $l1
    local.get $l0
    i32.const 88
    i32.add
    i32.const 0
    i64.load offset=1048732 align=1
    i64.store
    local.get $l0
    i32.const 80
    i32.add
    i32.const 0
    i64.load offset=1048724 align=1
    i64.store
    local.get $l0
    i32.const 72
    i32.add
    i32.const 0
    i64.load offset=1048716 align=1
    i64.store
    local.get $l0
    i32.const 0
    i64.load offset=1048708 align=1
    i64.store offset=64
    local.get $l0
    i32.const 16
    i32.add
    local.get $l0
    i32.const 64
    i32.add
    i32.const 32
    call $f168
    local.get $l0
    i32.load offset=24
    local.set $l2
    local.get $l0
    i32.load offset=16
    local.set $l3
    block $B0
      block $B1
        block $B2
          loop $L3
            local.get $l1
            local.get $l2
            i32.gt_u
            br_if $B1
            block $B4
              local.get $l2
              local.get $l1
              i32.ne
              br_if $B4
              local.get $l0
              i32.const 0
              local.get $l2
              local.get $l3
              local.get $l2
              i32.const 1054920
              call $f220
              local.get $l0
              i32.load offset=4
              local.set $l4
              local.get $l0
              i32.load
              local.set $l3
              br $B2
            end
            block $B5
              local.get $l3
              local.get $l1
              i32.add
              i32.load8_u
              i32.const 64
              i32.eq
              br_if $B5
              local.get $l1
              i32.const 1
              i32.add
              local.set $l1
              br $L3
            end
          end
          local.get $l0
          i32.const 8
          i32.add
          i32.const 0
          local.get $l1
          local.get $l3
          local.get $l2
          i32.const 1054936
          call $f220
          local.get $l0
          i32.load offset=12
          local.set $l4
          local.get $l0
          i32.load offset=8
          local.set $l3
        end
        local.get $l1
        i32.const 1
        i32.add
        local.set $l1
        local.get $l3
        br_if $B0
      end
      i32.const 1054692
      local.set $l3
      i32.const 0
      local.set $l4
    end
    block $B6
      block $B7
        block $B8
          block $B9
            block $B10
              block $B11
                block $B12
                  block $B13
                    block $B14
                      block $B15
                        block $B16
                          block $B17
                            block $B18
                              block $B19
                                block $B20
                                  block $B21
                                    block $B22
                                      block $B23
                                        block $B24
                                          block $B25
                                            block $B26
                                              block $B27
                                                block $B28
                                                  call $env.getNumArguments
                                                  local.tee $l5
                                                  i32.eqz
                                                  br_if $B28
                                                  block $B29
                                                    local.get $l4
                                                    i32.const -22
                                                    i32.add
                                                    local.tee $l6
                                                    i32.const 2
                                                    i32.le_u
                                                    br_if $B29
                                                    local.get $l4
                                                    br_if $B6
                                                    br $B19
                                                  end
                                                  local.get $l6
                                                  br_table $B27 $B25 $B26 $B27
                                                end
                                                i32.const 1054485
                                                i32.const 48
                                                call $f52
                                                unreachable
                                              end
                                              local.get $l3
                                              i32.load8_u
                                              i32.const 97
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=1
                                              i32.const 117
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=2
                                              i32.const 99
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=3
                                              i32.const 116
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=4
                                              i32.const 105
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=5
                                              i32.const 111
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=6
                                              i32.const 110
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=7
                                              i32.const 95
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=8
                                              i32.const 115
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=9
                                              i32.const 116
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=10
                                              i32.const 97
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=11
                                              i32.const 107
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=12
                                              i32.const 101
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=13
                                              i32.const 95
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=14
                                              i32.const 99
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=15
                                              i32.const 97
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=16
                                              i32.const 108
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=17
                                              i32.const 108
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=18
                                              i32.const 98
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=19
                                              i32.const 97
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=20
                                              i32.const 99
                                              i32.ne
                                              br_if $B6
                                              local.get $l3
                                              i32.load8_u offset=21
                                              i32.const 107
                                              i32.eq
                                              br_if $B24
                                              br $B6
                                            end
                                            local.get $l3
                                            i32.load8_u
                                            i32.const 97
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=1
                                            i32.const 117
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=2
                                            i32.const 99
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=3
                                            i32.const 116
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=4
                                            i32.const 105
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=5
                                            i32.const 111
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=6
                                            i32.const 110
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=7
                                            i32.const 95
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=8
                                            i32.const 117
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=9
                                            i32.const 110
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=10
                                            i32.const 83
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=11
                                            i32.const 116
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=12
                                            i32.const 97
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=13
                                            i32.const 107
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=14
                                            i32.const 101
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=15
                                            i32.const 95
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=16
                                            i32.const 99
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=17
                                            i32.const 97
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=18
                                            i32.const 108
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=19
                                            i32.const 108
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=20
                                            i32.const 98
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=21
                                            i32.const 97
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=22
                                            i32.const 99
                                            i32.ne
                                            br_if $B6
                                            local.get $l3
                                            i32.load8_u offset=23
                                            i32.const 107
                                            i32.ne
                                            br_if $B6
                                            local.get $l5
                                            i32.const 1
                                            i32.lt_s
                                            br_if $B15
                                            call $f66
                                            i64.eqz
                                            br_if $B22
                                            local.get $l5
                                            i32.const 1
                                            i32.le_s
                                            br_if $B14
                                            local.get $l0
                                            i32.const 64
                                            i32.add
                                            i32.const 1
                                            call $f57
                                            local.get $l0
                                            i32.load offset=64
                                            local.tee $l7
                                            i32.eqz
                                            br_if $B22
                                            local.get $l0
                                            i64.load offset=68 align=4
                                            local.set $l8
                                            i32.const 2
                                            call $f155
                                            local.get $l0
                                            i32.const 64
                                            i32.add
                                            i32.const 24
                                            i32.add
                                            local.tee $l5
                                            i64.const 0
                                            i64.store
                                            local.get $l0
                                            i32.const 64
                                            i32.add
                                            i32.const 16
                                            i32.add
                                            local.tee $l6
                                            i64.const 0
                                            i64.store
                                            local.get $l0
                                            i32.const 64
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.tee $l9
                                            i64.const 0
                                            i64.store
                                            local.get $l0
                                            i64.const 0
                                            i64.store offset=64
                                            i32.const 0
                                            local.set $l3
                                            loop $L30
                                              local.get $l3
                                              i32.const 32
                                              i32.eq
                                              br_if $B23
                                              local.get $l0
                                              i32.const 32
                                              i32.add
                                              local.get $l3
                                              i32.add
                                              local.tee $l4
                                              local.get $l0
                                              i64.load offset=64
                                              i64.store align=1
                                              local.get $l4
                                              i32.const 24
                                              i32.add
                                              local.get $l5
                                              i64.load
                                              i64.store align=1
                                              local.get $l4
                                              i32.const 16
                                              i32.add
                                              local.get $l6
                                              i64.load
                                              i64.store align=1
                                              local.get $l4
                                              i32.const 8
                                              i32.add
                                              local.get $l9
                                              i64.load
                                              i64.store align=1
                                              local.get $l3
                                              i32.const 32
                                              i32.add
                                              local.set $l3
                                              br $L30
                                            end
                                          end
                                          local.get $l3
                                          i32.load8_u
                                          i32.const 97
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=1
                                          i32.const 117
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=2
                                          i32.const 99
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=3
                                          i32.const 116
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=4
                                          i32.const 105
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=5
                                          i32.const 111
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=6
                                          i32.const 110
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=7
                                          i32.const 95
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=8
                                          i32.const 117
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=9
                                          i32.const 110
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=10
                                          i32.const 66
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=11
                                          i32.const 111
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=12
                                          i32.const 110
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=13
                                          i32.const 100
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=14
                                          i32.const 95
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=15
                                          i32.const 99
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=16
                                          i32.const 97
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=17
                                          i32.const 108
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=18
                                          i32.const 108
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=19
                                          i32.const 98
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=20
                                          i32.const 97
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=21
                                          i32.const 99
                                          i32.ne
                                          br_if $B6
                                          local.get $l3
                                          i32.load8_u offset=22
                                          i32.const 107
                                          i32.ne
                                          br_if $B6
                                          local.get $l5
                                          i32.const 1
                                          i32.lt_s
                                          br_if $B12
                                          call $f66
                                          i64.eqz
                                          br_if $B20
                                          local.get $l5
                                          i32.const 1
                                          i32.le_s
                                          br_if $B11
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 1
                                          call $f57
                                          local.get $l0
                                          i32.load offset=64
                                          local.tee $l7
                                          i32.eqz
                                          br_if $B20
                                          local.get $l0
                                          i64.load offset=68 align=4
                                          local.set $l8
                                          i32.const 4
                                          call $f155
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 24
                                          i32.add
                                          local.tee $l5
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 16
                                          i32.add
                                          local.tee $l6
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 8
                                          i32.add
                                          local.tee $l9
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i64.const 0
                                          i64.store offset=64
                                          i32.const 0
                                          local.set $l3
                                          loop $L31
                                            local.get $l3
                                            i32.const 32
                                            i32.eq
                                            br_if $B21
                                            local.get $l0
                                            i32.const 32
                                            i32.add
                                            local.get $l3
                                            i32.add
                                            local.tee $l4
                                            local.get $l0
                                            i64.load offset=64
                                            i64.store align=1
                                            local.get $l4
                                            i32.const 24
                                            i32.add
                                            local.get $l5
                                            i64.load
                                            i64.store align=1
                                            local.get $l4
                                            i32.const 16
                                            i32.add
                                            local.get $l6
                                            i64.load
                                            i64.store align=1
                                            local.get $l4
                                            i32.const 8
                                            i32.add
                                            local.get $l9
                                            i64.load
                                            i64.store align=1
                                            local.get $l3
                                            i32.const 32
                                            i32.add
                                            local.set $l3
                                            br $L31
                                          end
                                        end
                                        local.get $l5
                                        i32.const 1
                                        i32.lt_s
                                        br_if $B18
                                        block $B32
                                          call $f66
                                          i64.eqz
                                          br_if $B32
                                          local.get $l5
                                          i32.const 1
                                          i32.le_s
                                          br_if $B17
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 1
                                          call $f57
                                          local.get $l0
                                          i32.load offset=64
                                          local.tee $l7
                                          i32.eqz
                                          br_if $B32
                                          local.get $l0
                                          i64.load offset=68 align=4
                                          local.set $l8
                                          i32.const 0
                                          local.set $l3
                                          i32.const 0
                                          call $f155
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 24
                                          i32.add
                                          local.tee $l5
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 16
                                          i32.add
                                          local.tee $l6
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 8
                                          i32.add
                                          local.tee $l9
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i64.const 0
                                          i64.store offset=64
                                          block $B33
                                            loop $L34
                                              local.get $l3
                                              i32.const 32
                                              i32.eq
                                              br_if $B33
                                              local.get $l0
                                              i32.const 32
                                              i32.add
                                              local.get $l3
                                              i32.add
                                              local.tee $l4
                                              local.get $l0
                                              i64.load offset=64
                                              i64.store align=1
                                              local.get $l4
                                              i32.const 24
                                              i32.add
                                              local.get $l5
                                              i64.load
                                              i64.store align=1
                                              local.get $l4
                                              i32.const 16
                                              i32.add
                                              local.get $l6
                                              i64.load
                                              i64.store align=1
                                              local.get $l4
                                              i32.const 8
                                              i32.add
                                              local.get $l9
                                              i64.load
                                              i64.store align=1
                                              local.get $l3
                                              i32.const 32
                                              i32.add
                                              local.set $l3
                                              br $L34
                                            end
                                          end
                                          local.get $l0
                                          i32.const 32
                                          i32.add
                                          i32.const 8
                                          i32.add
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i32.const 48
                                          i32.add
                                          i64.const 0
                                          i64.store
                                          local.get $l0
                                          i32.const 55
                                          i32.add
                                          i64.const 0
                                          i64.store align=1
                                          local.get $l0
                                          i64.const 0
                                          i64.store offset=32
                                          local.get $l0
                                          i32.const 4
                                          i32.store8 offset=63
                                          local.get $l0
                                          local.get $l8
                                          i64.store offset=100 align=4
                                          local.get $l0
                                          local.get $l7
                                          i32.store offset=96
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          local.get $l0
                                          i32.const 96
                                          i32.add
                                          call $f42
                                          local.get $l0
                                          i32.const 64
                                          i32.add
                                          i32.const 4
                                          i32.or
                                          local.set $l3
                                          local.get $l0
                                          i32.load offset=64
                                          i32.const 1
                                          i32.eq
                                          br_if $B16
                                          local.get $l0
                                          i32.const 96
                                          i32.add
                                          i32.const 8
                                          i32.add
                                          local.get $l3
                                          i32.const 8
                                          i32.add
                                          i32.load
                                          local.tee $l4
                                          i32.store
                                          local.get $l0
                                          local.get $l3
                                          i64.load align=4
                                          local.tee $l8
                                          i64.store offset=96
                                          local.get $l0
                                          i32.const 32
                                          i32.add
                                          i32.const 1
                                          local.get $l8
                                          i32.wrap_i64
                                          local.get $l4
                                          call $f152
                                          local.get $l0
                                          i32.const 96
                                          i32.add
                                          call $f37
                                          br $B19
                                        end
                                        i32.const 2
                                        call $f155
                                        call $f166
                                        local.tee $l3
                                        call $f132
                                        call $f119
                                        local.get $l3
                                        call $f176
                                        call $f177
                                        br $B19
                                      end
                                      local.get $l0
                                      i32.const 32
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get $l0
                                      i32.const 48
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get $l0
                                      i32.const 55
                                      i32.add
                                      i64.const 0
                                      i64.store align=1
                                      local.get $l0
                                      i64.const 0
                                      i64.store offset=32
                                      local.get $l0
                                      i32.const 6
                                      i32.store8 offset=63
                                      local.get $l0
                                      local.get $l8
                                      i64.store offset=100 align=4
                                      local.get $l0
                                      local.get $l7
                                      i32.store offset=96
                                      local.get $l0
                                      i32.const 64
                                      i32.add
                                      local.get $l0
                                      i32.const 96
                                      i32.add
                                      call $f42
                                      local.get $l0
                                      i32.const 64
                                      i32.add
                                      i32.const 4
                                      i32.or
                                      local.set $l3
                                      local.get $l0
                                      i32.load offset=64
                                      i32.const 1
                                      i32.eq
                                      br_if $B13
                                      local.get $l0
                                      i32.const 96
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.get $l3
                                      i32.const 8
                                      i32.add
                                      i32.load
                                      local.tee $l4
                                      i32.store
                                      local.get $l0
                                      local.get $l3
                                      i64.load align=4
                                      local.tee $l8
                                      i64.store offset=96
                                      local.get $l0
                                      i32.const 32
                                      i32.add
                                      i32.const 1
                                      local.get $l8
                                      i32.wrap_i64
                                      local.get $l4
                                      call $f152
                                      local.get $l0
                                      i32.const 96
                                      i32.add
                                      call $f37
                                      br $B19
                                    end
                                    i32.const 4
                                    call $f155
                                    local.get $l0
                                    i32.const 64
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    local.tee $l5
                                    i64.const 0
                                    i64.store
                                    local.get $l0
                                    i32.const 64
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    local.tee $l6
                                    i64.const 0
                                    i64.store
                                    local.get $l0
                                    i32.const 64
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    local.tee $l9
                                    i64.const 0
                                    i64.store
                                    local.get $l0
                                    i64.const 0
                                    i64.store offset=64
                                    i32.const 0
                                    local.set $l3
                                    block $B35
                                      loop $L36
                                        local.get $l3
                                        i32.const 32
                                        i32.eq
                                        br_if $B35
                                        local.get $l0
                                        i32.const 32
                                        i32.add
                                        local.get $l3
                                        i32.add
                                        local.tee $l4
                                        local.get $l0
                                        i64.load offset=64
                                        i64.store align=1
                                        local.get $l4
                                        i32.const 24
                                        i32.add
                                        local.get $l5
                                        i64.load
                                        i64.store align=1
                                        local.get $l4
                                        i32.const 16
                                        i32.add
                                        local.get $l6
                                        i64.load
                                        i64.store align=1
                                        local.get $l4
                                        i32.const 8
                                        i32.add
                                        local.get $l9
                                        i64.load
                                        i64.store align=1
                                        local.get $l3
                                        i32.const 32
                                        i32.add
                                        local.set $l3
                                        br $L36
                                      end
                                    end
                                    local.get $l0
                                    i32.const 32
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get $l0
                                    i32.const 48
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get $l0
                                    i32.const 55
                                    i32.add
                                    i64.const 0
                                    i64.store align=1
                                    local.get $l0
                                    i64.const 0
                                    i64.store offset=32
                                    local.get $l0
                                    i32.const 5
                                    i32.store8 offset=63
                                    local.get $l0
                                    i32.const 64
                                    i32.add
                                    call $f38
                                    local.get $l0
                                    i32.const 64
                                    i32.add
                                    i32.const 4
                                    i32.or
                                    local.set $l3
                                    local.get $l0
                                    i32.load offset=64
                                    i32.const 1
                                    i32.eq
                                    br_if $B7
                                    local.get $l0
                                    i32.const 96
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    local.get $l3
                                    i32.const 8
                                    i32.add
                                    i32.load
                                    local.tee $l4
                                    i32.store
                                    local.get $l0
                                    local.get $l3
                                    i64.load align=4
                                    local.tee $l8
                                    i64.store offset=96
                                    local.get $l0
                                    i32.const 32
                                    i32.add
                                    i32.const 1
                                    local.get $l8
                                    i32.wrap_i64
                                    local.get $l4
                                    call $f152
                                    local.get $l0
                                    i32.const 96
                                    i32.add
                                    call $f37
                                    br $B19
                                  end
                                  local.get $l0
                                  i32.const 48
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get $l0
                                  i32.const 55
                                  i32.add
                                  i64.const 0
                                  i64.store align=1
                                  local.get $l0
                                  i32.const 8
                                  i32.store8 offset=63
                                  local.get $l0
                                  i32.const 32
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get $l0
                                  i64.const 0
                                  i64.store offset=32
                                  local.get $l0
                                  local.get $l8
                                  i64.store offset=100 align=4
                                  local.get $l0
                                  local.get $l7
                                  i32.store offset=96
                                  local.get $l0
                                  i32.const 64
                                  i32.add
                                  local.get $l0
                                  i32.const 96
                                  i32.add
                                  call $f42
                                  local.get $l0
                                  i32.const 64
                                  i32.add
                                  i32.const 4
                                  i32.or
                                  local.set $l3
                                  local.get $l0
                                  i32.load offset=64
                                  i32.const 1
                                  i32.eq
                                  br_if $B10
                                  local.get $l0
                                  i32.const 96
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.get $l3
                                  i32.const 8
                                  i32.add
                                  i32.load
                                  local.tee $l4
                                  i32.store
                                  local.get $l0
                                  local.get $l3
                                  i64.load align=4
                                  local.tee $l8
                                  i64.store offset=96
                                  local.get $l0
                                  i32.const 32
                                  i32.add
                                  i32.const 1
                                  local.get $l8
                                  i32.wrap_i64
                                  local.get $l4
                                  call $f152
                                  local.get $l0
                                  i32.const 96
                                  i32.add
                                  call $f37
                                  br $B19
                                end
                                i32.const 0
                                local.set $l3
                                i32.const 0
                                call $f155
                                call $f166
                                local.tee $l4
                                call $f132
                                call $f118
                                local.get $l4
                                call $f176
                                local.get $l0
                                i32.const 64
                                i32.add
                                i32.const 24
                                i32.add
                                local.tee $l5
                                i64.const 0
                                i64.store
                                local.get $l0
                                i32.const 64
                                i32.add
                                i32.const 16
                                i32.add
                                local.tee $l6
                                i64.const 0
                                i64.store
                                local.get $l0
                                i32.const 64
                                i32.add
                                i32.const 8
                                i32.add
                                local.tee $l9
                                i64.const 0
                                i64.store
                                local.get $l0
                                i64.const 0
                                i64.store offset=64
                                block $B37
                                  loop $L38
                                    local.get $l3
                                    i32.const 32
                                    i32.eq
                                    br_if $B37
                                    local.get $l0
                                    i32.const 32
                                    i32.add
                                    local.get $l3
                                    i32.add
                                    local.tee $l4
                                    local.get $l0
                                    i64.load offset=64
                                    i64.store align=1
                                    local.get $l4
                                    i32.const 24
                                    i32.add
                                    local.get $l5
                                    i64.load
                                    i64.store align=1
                                    local.get $l4
                                    i32.const 16
                                    i32.add
                                    local.get $l6
                                    i64.load
                                    i64.store align=1
                                    local.get $l4
                                    i32.const 8
                                    i32.add
                                    local.get $l9
                                    i64.load
                                    i64.store align=1
                                    local.get $l3
                                    i32.const 32
                                    i32.add
                                    local.set $l3
                                    br $L38
                                  end
                                end
                                local.get $l0
                                i32.const 32
                                i32.add
                                i32.const 8
                                i32.add
                                i64.const 0
                                i64.store
                                local.get $l0
                                i32.const 48
                                i32.add
                                i64.const 0
                                i64.store
                                local.get $l0
                                i32.const 55
                                i32.add
                                i64.const 0
                                i64.store align=1
                                local.get $l0
                                i64.const 0
                                i64.store offset=32
                                local.get $l0
                                i32.const 7
                                i32.store8 offset=63
                                local.get $l0
                                i32.const 64
                                i32.add
                                call $f38
                                local.get $l0
                                i32.const 64
                                i32.add
                                i32.const 4
                                i32.or
                                local.set $l3
                                local.get $l0
                                i32.load offset=64
                                i32.const 1
                                i32.eq
                                br_if $B8
                                local.get $l0
                                i32.const 96
                                i32.add
                                i32.const 8
                                i32.add
                                local.get $l3
                                i32.const 8
                                i32.add
                                i32.load
                                local.tee $l4
                                i32.store
                                local.get $l0
                                local.get $l3
                                i64.load align=4
                                local.tee $l8
                                i64.store offset=96
                                local.get $l0
                                i32.const 32
                                i32.add
                                i32.const 1
                                local.get $l8
                                i32.wrap_i64
                                local.get $l4
                                call $f152
                                local.get $l0
                                i32.const 96
                                i32.add
                                call $f37
                              end
                              local.get $l1
                              local.get $l2
                              i32.le_u
                              br_if $B9
                              local.get $l0
                              i32.const 88
                              i32.add
                              i32.const 0
                              i64.load offset=1048732 align=1
                              i64.store
                              local.get $l0
                              i32.const 80
                              i32.add
                              i32.const 0
                              i64.load offset=1048724 align=1
                              i64.store
                              local.get $l0
                              i32.const 72
                              i32.add
                              i32.const 0
                              i64.load offset=1048716 align=1
                              i64.store
                              local.get $l0
                              i32.const 0
                              i64.load offset=1048708 align=1
                              i64.store offset=64
                              local.get $l0
                              i32.const 64
                              i32.add
                              i32.const 32
                              i32.const 1054692
                              i32.const 0
                              call $env.storageStore
                              drop
                              local.get $l0
                              i32.const 16
                              i32.add
                              call $f37
                              local.get $l0
                              i32.const 112
                              i32.add
                              global.set $g0
                              return
                            end
                            i32.const 1054460
                            i32.const 25
                            call $f52
                            unreachable
                          end
                          i32.const 1054460
                          i32.const 25
                          call $f52
                          unreachable
                        end
                        local.get $l0
                        i32.const 96
                        i32.add
                        i32.const 8
                        i32.add
                        local.get $l3
                        i32.const 8
                        i32.add
                        i64.load align=4
                        i64.store
                        local.get $l0
                        local.get $l3
                        i64.load align=4
                        i64.store offset=96
                        i32.const 1050637
                        i32.const 25
                        i32.const 1050662
                        i32.const 4
                        local.get $l0
                        i32.const 96
                        i32.add
                        call $f54
                        unreachable
                      end
                      i32.const 1054460
                      i32.const 25
                      call $f52
                      unreachable
                    end
                    i32.const 1054460
                    i32.const 25
                    call $f52
                    unreachable
                  end
                  local.get $l0
                  i32.const 96
                  i32.add
                  i32.const 8
                  i32.add
                  local.get $l3
                  i32.const 8
                  i32.add
                  i64.load align=4
                  i64.store
                  local.get $l0
                  local.get $l3
                  i64.load align=4
                  i64.store offset=96
                  i32.const 1050637
                  i32.const 25
                  i32.const 1050662
                  i32.const 4
                  local.get $l0
                  i32.const 96
                  i32.add
                  call $f54
                  unreachable
                end
                i32.const 1054460
                i32.const 25
                call $f52
                unreachable
              end
              i32.const 1054460
              i32.const 25
              call $f52
              unreachable
            end
            local.get $l0
            i32.const 96
            i32.add
            i32.const 8
            i32.add
            local.get $l3
            i32.const 8
            i32.add
            i64.load align=4
            i64.store
            local.get $l0
            local.get $l3
            i64.load align=4
            i64.store offset=96
            i32.const 1050637
            i32.const 25
            i32.const 1050662
            i32.const 4
            local.get $l0
            i32.const 96
            i32.add
            call $f54
            unreachable
          end
          i32.const 1054533
          i32.const 36
          call $f52
          unreachable
        end
        local.get $l0
        i32.const 96
        i32.add
        i32.const 8
        i32.add
        local.get $l3
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get $l0
        local.get $l3
        i64.load align=4
        i64.store offset=96
        i32.const 1050637
        i32.const 25
        i32.const 1050662
        i32.const 4
        local.get $l0
        i32.const 96
        i32.add
        call $f54
        unreachable
      end
      local.get $l0
      i32.const 96
      i32.add
      i32.const 8
      i32.add
      local.get $l3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l0
      local.get $l3
      i64.load align=4
      i64.store offset=96
      i32.const 1050637
      i32.const 25
      i32.const 1050662
      i32.const 4
      local.get $l0
      i32.const 96
      i32.add
      call $f54
      unreachable
    end
    i32.const 1050692
    i32.const 55
    i32.const 1050676
    call $f221
    unreachable)
  (func $f220 (type $t20) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    block $B0
      block $B1
        local.get $p2
        local.get $p1
        i32.lt_u
        br_if $B1
        local.get $p4
        local.get $p2
        i32.ge_u
        br_if $B0
        local.get $p2
        local.get $p4
        local.get $p5
        call $f241
        unreachable
      end
      local.get $p1
      local.get $p2
      local.get $p5
      call $f242
      unreachable
    end
    local.get $p0
    local.get $p2
    local.get $p1
    i32.sub
    i32.store offset=4
    local.get $p0
    local.get $p3
    local.get $p1
    i32.add
    i32.store)
  (func $f221 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get $l3
    i32.const 1054692
    i32.store offset=16
    local.get $l3
    i64.const 1
    i64.store offset=4 align=4
    local.get $l3
    local.get $p1
    i32.store offset=28
    local.get $l3
    local.get $p0
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 24
    i32.add
    i32.store
    local.get $l3
    local.get $p2
    call $f234
    unreachable)
  (func $f222 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $f276)
  (func $f223 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $f277)
  (func $f224 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    block $B0
      local.get $p3
      local.get $p2
      call $f276
      local.tee $l4
      i32.eqz
      br_if $B0
      local.get $l4
      local.get $p0
      local.get $p3
      local.get $p1
      local.get $p1
      local.get $p3
      i32.gt_u
      select
      call $f290
      drop
      local.get $p0
      local.get $p1
      local.get $p2
      call $f277
    end
    local.get $l4)
  (func $f225 (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    call $f226)
  (func $f226 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.const 1
      call $f276
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $l1
      i32.const 0
      local.get $p0
      call $f292
      drop
    end
    local.get $l1)
  (func $f227 (type $t19)
    i32.const 1055676
    i32.const 16
    call $f269
    unreachable)
  (func $f228 (type $t19)
    call $f102
    unreachable)
  (func $f229 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.const 4
            i32.add
            i32.load
            local.tee $l3
            local.get $p0
            i32.const 8
            i32.add
            i32.load
            local.tee $l4
            i32.sub
            local.get $p2
            local.get $p1
            i32.sub
            local.tee $p2
            i32.lt_u
            br_if $B3
            local.get $p0
            i32.load
            local.set $l5
            br $B2
          end
          local.get $l4
          local.get $p2
          i32.add
          local.tee $l5
          local.get $l4
          i32.lt_u
          br_if $B1
          local.get $l3
          i32.const 1
          i32.shl
          local.tee $l6
          local.get $l5
          local.get $l6
          local.get $l5
          i32.gt_u
          select
          local.tee $l6
          i32.const 0
          i32.lt_s
          br_if $B1
          block $B4
            block $B5
              block $B6
                local.get $l3
                i32.eqz
                br_if $B6
                local.get $p0
                i32.load
                local.tee $l5
                br_if $B5
              end
              block $B7
                local.get $l6
                br_if $B7
                i32.const 1
                local.set $l5
                br $B4
              end
              local.get $l6
              i32.const 1
              call $f114
              local.tee $l5
              br_if $B4
              br $B0
            end
            block $B8
              local.get $l3
              local.get $l6
              i32.eq
              br_if $B8
              local.get $l5
              local.get $l3
              i32.const 1
              local.get $l6
              call $f113
              local.set $l5
            end
            local.get $l5
            i32.eqz
            br_if $B0
            local.get $p0
            i32.const 8
            i32.add
            i32.load
            local.set $l4
          end
          local.get $p0
          local.get $l5
          i32.store
          local.get $p0
          i32.const 4
          i32.add
          local.get $l6
          i32.store
        end
        local.get $l5
        local.get $l4
        i32.add
        local.get $p1
        local.get $p2
        call $f290
        drop
        local.get $p0
        i32.const 8
        i32.add
        local.get $l4
        local.get $p2
        i32.add
        i32.store
        return
      end
      call $f108
      unreachable
    end
    call $f102
    unreachable)
  (func $f230 (type $t2) (param $p0 i32))
  (func $f231 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p1
    local.get $p2
    i32.add
    call $f229
    i32.const 0)
  (func $f232 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p1
                i32.const 128
                i32.lt_u
                br_if $B5
                local.get $l2
                i32.const 0
                i32.store offset=12
                local.get $p1
                i32.const 2048
                i32.lt_u
                br_if $B4
                local.get $l2
                i32.const 12
                i32.add
                local.set $l3
                block $B6
                  local.get $p1
                  i32.const 65536
                  i32.ge_u
                  br_if $B6
                  local.get $l2
                  local.get $p1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  local.get $l2
                  local.get $p1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  local.get $l2
                  local.get $p1
                  i32.const 12
                  i32.shr_u
                  i32.const 15
                  i32.and
                  i32.const 224
                  i32.or
                  i32.store8 offset=12
                  i32.const 3
                  local.set $p1
                  br $B1
                end
                local.get $l2
                local.get $p1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=15
                local.get $l2
                local.get $p1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=12
                local.get $l2
                local.get $p1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                local.get $l2
                local.get $p1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                i32.const 4
                local.set $p1
                br $B1
              end
              block $B7
                block $B8
                  local.get $p0
                  i32.load offset=8
                  local.tee $l3
                  local.get $p0
                  i32.const 4
                  i32.add
                  i32.load
                  i32.eq
                  br_if $B8
                  local.get $p0
                  i32.load
                  local.set $l4
                  br $B7
                end
                local.get $l3
                i32.const 1
                i32.add
                local.tee $l4
                local.get $l3
                i32.lt_u
                br_if $B3
                local.get $l3
                i32.const 1
                i32.shl
                local.tee $l5
                local.get $l4
                local.get $l5
                local.get $l4
                i32.gt_u
                select
                local.tee $l5
                i32.const 0
                i32.lt_s
                br_if $B3
                block $B9
                  block $B10
                    block $B11
                      local.get $l3
                      i32.eqz
                      br_if $B11
                      local.get $p0
                      i32.load
                      local.tee $l4
                      br_if $B10
                    end
                    block $B12
                      local.get $l5
                      br_if $B12
                      i32.const 1
                      local.set $l4
                      br $B9
                    end
                    local.get $l5
                    i32.const 1
                    call $f114
                    local.tee $l4
                    br_if $B9
                    br $B2
                  end
                  block $B13
                    local.get $l3
                    local.get $l5
                    i32.eq
                    br_if $B13
                    local.get $l4
                    local.get $l3
                    i32.const 1
                    local.get $l5
                    call $f113
                    local.set $l4
                  end
                  local.get $l4
                  i32.eqz
                  br_if $B2
                  local.get $p0
                  i32.load offset=8
                  local.set $l3
                end
                local.get $p0
                local.get $l4
                i32.store
                local.get $p0
                i32.const 4
                i32.add
                local.get $l5
                i32.store
              end
              local.get $l4
              local.get $l3
              i32.add
              local.get $p1
              i32.store8
              local.get $p0
              local.get $p0
              i32.load offset=8
              i32.const 1
              i32.add
              i32.store offset=8
              br $B0
            end
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 31
            i32.and
            i32.const 192
            i32.or
            i32.store8 offset=12
            local.get $l2
            i32.const 12
            i32.add
            local.set $l3
            i32.const 2
            local.set $p1
            br $B1
          end
          call $f108
          unreachable
        end
        call $f102
        unreachable
      end
      local.get $p0
      local.get $l3
      local.get $l3
      local.get $p1
      i32.add
      call $f229
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    i32.const 0)
  (func $f233 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1050888
    local.get $l2
    i32.const 8
    i32.add
    call $f77
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f234 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    call $f237
    unreachable)
  (func $f235 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    drop
    loop $L0 (result i32)
      br $L0
    end)
  (func $f236 (type $t21) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    i32.const 39
    local.set $l3
    block $B0
      block $B1
        local.get $p0
        i64.const 10000
        i64.ge_u
        br_if $B1
        local.get $p0
        local.set $l4
        br $B0
      end
      i32.const 39
      local.set $l3
      loop $L2
        local.get $l2
        i32.const 9
        i32.add
        local.get $l3
        i32.add
        local.tee $l5
        i32.const -4
        i32.add
        local.get $p0
        local.get $p0
        i64.const 10000
        i64.div_u
        local.tee $l4
        i64.const -10000
        i64.mul
        i64.add
        i32.wrap_i64
        local.tee $l6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee $l7
        i32.const 1
        i32.shl
        i32.const 1051186
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l5
        i32.const -2
        i32.add
        local.get $l7
        i32.const -100
        i32.mul
        local.get $l6
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1051186
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l3
        i32.const -4
        i32.add
        local.set $l3
        local.get $p0
        i64.const 99999999
        i64.gt_u
        local.set $l5
        local.get $l4
        local.set $p0
        local.get $l5
        br_if $L2
      end
    end
    block $B3
      local.get $l4
      i32.wrap_i64
      local.tee $l5
      i32.const 99
      i32.le_s
      br_if $B3
      local.get $l2
      i32.const 9
      i32.add
      local.get $l3
      i32.const -2
      i32.add
      local.tee $l3
      i32.add
      local.get $l4
      i32.wrap_i64
      local.tee $l6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee $l5
      i32.const -100
      i32.mul
      local.get $l6
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1051186
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block $B4
      block $B5
        local.get $l5
        i32.const 10
        i32.lt_s
        br_if $B5
        local.get $l2
        i32.const 9
        i32.add
        local.get $l3
        i32.const -2
        i32.add
        local.tee $l3
        i32.add
        local.get $l5
        i32.const 1
        i32.shl
        i32.const 1051186
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br $B4
      end
      local.get $l2
      i32.const 9
      i32.add
      local.get $l3
      i32.const -1
      i32.add
      local.tee $l3
      i32.add
      local.get $l5
      i32.const 48
      i32.add
      i32.store8
    end
    local.get $p1
    i32.const 1054692
    i32.const 0
    local.get $l2
    i32.const 9
    i32.add
    local.get $l3
    i32.add
    i32.const 39
    local.get $l3
    i32.sub
    call $f239
    local.set $l3
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0
    local.get $l3)
  (func $f237 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            br_if $B3
            local.get $l1
            i32.const 40
            i32.add
            i32.const 22
            call $f268
            local.get $l1
            i32.const 40
            i32.add
            i32.const 1055692
            i32.const 1055714
            call $f125
            local.get $l1
            i32.load offset=48
            local.set $p0
            local.get $l1
            i32.load offset=40
            local.set $l2
            br $B2
          end
          local.get $l1
          local.get $p0
          i32.store offset=12
          local.get $l1
          i32.const 8
          i32.store offset=20
          local.get $l1
          local.get $l1
          i32.const 12
          i32.add
          i32.store offset=16
          i32.const 32
          i32.const 1
          call $f114
          local.tee $p0
          i32.eqz
          br_if $B1
          local.get $l1
          i64.const 32
          i64.store offset=28 align=4
          local.get $l1
          local.get $p0
          i32.store offset=24
          local.get $l1
          local.get $l1
          i32.const 24
          i32.add
          i32.store offset=36
          local.get $l1
          i32.const 60
          i32.add
          i32.const 1
          i32.store
          local.get $l1
          i64.const 1
          i64.store offset=44 align=4
          local.get $l1
          i32.const 1055716
          i32.store offset=40
          local.get $l1
          local.get $l1
          i32.const 16
          i32.add
          i32.store offset=56
          local.get $l1
          i32.const 36
          i32.add
          i32.const 1050888
          local.get $l1
          i32.const 40
          i32.add
          call $f77
          br_if $B0
          local.get $l1
          i32.load offset=24
          local.set $l2
          local.get $l1
          i32.load offset=32
          local.set $p0
        end
        local.get $l2
        local.get $p0
        call $f270
        unreachable
      end
      call $f228
      unreachable
    end
    i32.const 1050912
    i32.const 51
    local.get $l1
    i32.const 40
    i32.add
    i32.const 1050964
    i32.const 1050980
    call $f92
    unreachable)
  (func $f238 (type $t2) (param $p0 i32))
  (func $f239 (type $t22) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    local.get $p0
    i32.load
    local.tee $l5
    i32.const 1
    i32.and
    local.tee $l6
    local.get $p4
    i32.add
    local.set $l7
    block $B0
      block $B1
        local.get $l5
        i32.const 4
        i32.and
        br_if $B1
        i32.const 0
        local.set $p1
        br $B0
      end
      i32.const 0
      local.set $l8
      block $B2
        local.get $p2
        i32.eqz
        br_if $B2
        local.get $p2
        local.set $l9
        local.get $p1
        local.set $l10
        loop $L3
          local.get $l8
          local.get $l10
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set $l8
          local.get $l10
          i32.const 1
          i32.add
          local.set $l10
          local.get $l9
          i32.const -1
          i32.add
          local.tee $l9
          br_if $L3
        end
      end
      local.get $l7
      local.get $p2
      i32.add
      local.get $l8
      i32.sub
      local.set $l7
    end
    i32.const 43
    i32.const 1114112
    local.get $l6
    select
    local.set $l8
    block $B4
      block $B5
        local.get $p0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if $B5
        i32.const 1
        local.set $l10
        local.get $p0
        local.get $l8
        local.get $p1
        local.get $p2
        call $f240
        br_if $B4
        local.get $p0
        i32.load offset=24
        local.get $p3
        local.get $p4
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t0) $T0
        local.set $l10
        br $B4
      end
      block $B6
        local.get $p0
        i32.const 12
        i32.add
        i32.load
        local.tee $l9
        local.get $l7
        i32.gt_u
        br_if $B6
        i32.const 1
        local.set $l10
        local.get $p0
        local.get $l8
        local.get $p1
        local.get $p2
        call $f240
        br_if $B4
        local.get $p0
        i32.load offset=24
        local.get $p3
        local.get $p4
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t0) $T0
        return
      end
      block $B7
        block $B8
          local.get $l5
          i32.const 8
          i32.and
          br_if $B8
          i32.const 0
          local.set $l10
          local.get $l9
          local.get $l7
          i32.sub
          local.tee $l9
          local.set $l5
          block $B9
            block $B10
              block $B11
                i32.const 1
                local.get $p0
                i32.load8_u offset=32
                local.tee $l7
                local.get $l7
                i32.const 3
                i32.eq
                select
                br_table $B9 $B10 $B11 $B10 $B9
              end
              local.get $l9
              i32.const 1
              i32.shr_u
              local.set $l10
              local.get $l9
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set $l5
              br $B9
            end
            i32.const 0
            local.set $l5
            local.get $l9
            local.set $l10
          end
          local.get $l10
          i32.const 1
          i32.add
          local.set $l10
          loop $L12
            local.get $l10
            i32.const -1
            i32.add
            local.tee $l10
            i32.eqz
            br_if $B7
            local.get $p0
            i32.load offset=24
            local.get $p0
            i32.load offset=4
            local.get $p0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type $t1) $T0
            i32.eqz
            br_if $L12
          end
          i32.const 1
          return
        end
        local.get $p0
        i32.load offset=4
        local.set $l5
        local.get $p0
        i32.const 48
        i32.store offset=4
        local.get $p0
        i32.load8_u offset=32
        local.set $l6
        i32.const 1
        local.set $l10
        local.get $p0
        i32.const 1
        i32.store8 offset=32
        local.get $p0
        local.get $l8
        local.get $p1
        local.get $p2
        call $f240
        br_if $B4
        i32.const 0
        local.set $l10
        local.get $l9
        local.get $l7
        i32.sub
        local.tee $l9
        local.set $p2
        block $B13
          block $B14
            block $B15
              i32.const 1
              local.get $p0
              i32.load8_u offset=32
              local.tee $l8
              local.get $l8
              i32.const 3
              i32.eq
              select
              br_table $B13 $B14 $B15 $B14 $B13
            end
            local.get $l9
            i32.const 1
            i32.shr_u
            local.set $l10
            local.get $l9
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set $p2
            br $B13
          end
          i32.const 0
          local.set $p2
          local.get $l9
          local.set $l10
        end
        local.get $l10
        i32.const 1
        i32.add
        local.set $l10
        block $B16
          loop $L17
            local.get $l10
            i32.const -1
            i32.add
            local.tee $l10
            i32.eqz
            br_if $B16
            local.get $p0
            i32.load offset=24
            local.get $p0
            i32.load offset=4
            local.get $p0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type $t1) $T0
            i32.eqz
            br_if $L17
          end
          i32.const 1
          return
        end
        local.get $p0
        i32.load offset=4
        local.set $l9
        i32.const 1
        local.set $l10
        local.get $p0
        i32.load offset=24
        local.get $p3
        local.get $p4
        local.get $p0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type $t0) $T0
        br_if $B4
        local.get $p2
        i32.const 1
        i32.add
        local.set $l8
        local.get $p0
        i32.load offset=28
        local.set $p2
        local.get $p0
        i32.load offset=24
        local.set $p1
        block $B18
          loop $L19
            local.get $l8
            i32.const -1
            i32.add
            local.tee $l8
            i32.eqz
            br_if $B18
            i32.const 1
            local.set $l10
            local.get $p1
            local.get $l9
            local.get $p2
            i32.load offset=16
            call_indirect (type $t1) $T0
            br_if $B4
            br $L19
          end
        end
        local.get $p0
        local.get $l6
        i32.store8 offset=32
        local.get $p0
        local.get $l5
        i32.store offset=4
        i32.const 0
        return
      end
      local.get $p0
      i32.load offset=4
      local.set $l9
      i32.const 1
      local.set $l10
      local.get $p0
      local.get $l8
      local.get $p1
      local.get $p2
      call $f240
      br_if $B4
      local.get $p0
      i32.load offset=24
      local.get $p3
      local.get $p4
      local.get $p0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type $t0) $T0
      br_if $B4
      local.get $l5
      i32.const 1
      i32.add
      local.set $l8
      local.get $p0
      i32.load offset=28
      local.set $p2
      local.get $p0
      i32.load offset=24
      local.set $p0
      loop $L20
        block $B21
          local.get $l8
          i32.const -1
          i32.add
          local.tee $l8
          br_if $B21
          i32.const 0
          return
        end
        i32.const 1
        local.set $l10
        local.get $p0
        local.get $l9
        local.get $p2
        i32.load offset=16
        call_indirect (type $t1) $T0
        i32.eqz
        br_if $L20
      end
    end
    local.get $l10)
  (func $f240 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    block $B0
      block $B1
        local.get $p1
        i32.const 1114112
        i32.eq
        br_if $B1
        i32.const 1
        local.set $l4
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type $t1) $T0
        br_if $B0
      end
      block $B2
        local.get $p2
        br_if $B2
        i32.const 0
        return
      end
      local.get $p0
      i32.load offset=24
      local.get $p2
      local.get $p3
      local.get $p0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t0) $T0
      local.set $l4
    end
    local.get $l4)
  (func $f241 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1051388
    i32.store offset=8
    local.get $l3
    i32.const 1
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    call $f234
    unreachable)
  (func $f242 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 1
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1051444
    i32.store offset=8
    local.get $l3
    i32.const 1
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    call $f234
    unreachable)
  (func $f243 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32)
    local.get $p0
    i32.const 16
    i32.add
    i32.load
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.const 8
            i32.add
            i32.load
            local.tee $l4
            i32.const 1
            i32.eq
            br_if $B3
            local.get $l3
            i32.const 1
            i32.eq
            br_if $B2
            local.get $p0
            i32.load offset=24
            local.get $p1
            local.get $p2
            local.get $p0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type $t0) $T0
            local.set $l3
            br $B0
          end
          local.get $l3
          i32.const 1
          i32.ne
          br_if $B1
        end
        block $B4
          block $B5
            local.get $p2
            br_if $B5
            i32.const 0
            local.set $p2
            br $B4
          end
          local.get $p1
          local.get $p2
          i32.add
          local.set $l5
          local.get $p0
          i32.const 20
          i32.add
          i32.load
          i32.const 1
          i32.add
          local.set $l6
          i32.const 0
          local.set $l7
          local.get $p1
          local.set $l3
          local.get $p1
          local.set $l8
          loop $L6
            local.get $l3
            i32.const 1
            i32.add
            local.set $l9
            block $B7
              block $B8
                block $B9
                  local.get $l3
                  i32.load8_s
                  local.tee $l10
                  i32.const -1
                  i32.gt_s
                  br_if $B9
                  block $B10
                    block $B11
                      local.get $l9
                      local.get $l5
                      i32.ne
                      br_if $B11
                      i32.const 0
                      local.set $l11
                      local.get $l5
                      local.set $l3
                      br $B10
                    end
                    local.get $l3
                    i32.load8_u offset=1
                    i32.const 63
                    i32.and
                    local.set $l11
                    local.get $l3
                    i32.const 2
                    i32.add
                    local.tee $l9
                    local.set $l3
                  end
                  local.get $l10
                  i32.const 31
                  i32.and
                  local.set $l12
                  block $B12
                    local.get $l10
                    i32.const 255
                    i32.and
                    local.tee $l10
                    i32.const 223
                    i32.gt_u
                    br_if $B12
                    local.get $l11
                    local.get $l12
                    i32.const 6
                    i32.shl
                    i32.or
                    local.set $l10
                    br $B8
                  end
                  block $B13
                    block $B14
                      local.get $l3
                      local.get $l5
                      i32.ne
                      br_if $B14
                      i32.const 0
                      local.set $l13
                      local.get $l5
                      local.set $l14
                      br $B13
                    end
                    local.get $l3
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set $l13
                    local.get $l3
                    i32.const 1
                    i32.add
                    local.tee $l9
                    local.set $l14
                  end
                  local.get $l13
                  local.get $l11
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set $l11
                  block $B15
                    local.get $l10
                    i32.const 240
                    i32.ge_u
                    br_if $B15
                    local.get $l11
                    local.get $l12
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set $l10
                    br $B8
                  end
                  block $B16
                    block $B17
                      local.get $l14
                      local.get $l5
                      i32.ne
                      br_if $B17
                      i32.const 0
                      local.set $l10
                      local.get $l9
                      local.set $l3
                      br $B16
                    end
                    local.get $l14
                    i32.const 1
                    i32.add
                    local.set $l3
                    local.get $l14
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set $l10
                  end
                  local.get $l11
                  i32.const 6
                  i32.shl
                  local.get $l12
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.get $l10
                  i32.or
                  local.tee $l10
                  i32.const 1114112
                  i32.ne
                  br_if $B7
                  br $B4
                end
                local.get $l10
                i32.const 255
                i32.and
                local.set $l10
              end
              local.get $l9
              local.set $l3
            end
            block $B18
              local.get $l6
              i32.const -1
              i32.add
              local.tee $l6
              i32.eqz
              br_if $B18
              local.get $l7
              local.get $l8
              i32.sub
              local.get $l3
              i32.add
              local.set $l7
              local.get $l3
              local.set $l8
              local.get $l5
              local.get $l3
              i32.ne
              br_if $L6
              br $B4
            end
          end
          local.get $l10
          i32.const 1114112
          i32.eq
          br_if $B4
          block $B19
            block $B20
              local.get $l7
              i32.eqz
              br_if $B20
              local.get $l7
              local.get $p2
              i32.eq
              br_if $B20
              i32.const 0
              local.set $l3
              local.get $l7
              local.get $p2
              i32.ge_u
              br_if $B19
              local.get $p1
              local.get $l7
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if $B19
            end
            local.get $p1
            local.set $l3
          end
          local.get $l7
          local.get $p2
          local.get $l3
          select
          local.set $p2
          local.get $l3
          local.get $p1
          local.get $l3
          select
          local.set $p1
        end
        local.get $l4
        i32.const 1
        i32.eq
        br_if $B1
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p2
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t0) $T0
        return
      end
      i32.const 0
      local.set $l9
      block $B21
        local.get $p2
        i32.eqz
        br_if $B21
        local.get $p2
        local.set $l10
        local.get $p1
        local.set $l3
        loop $L22
          local.get $l9
          local.get $l3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set $l9
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $l10
          i32.const -1
          i32.add
          local.tee $l10
          br_if $L22
        end
      end
      block $B23
        local.get $p2
        local.get $l9
        i32.sub
        local.get $p0
        i32.load offset=12
        local.tee $l6
        i32.lt_u
        br_if $B23
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p2
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t0) $T0
        return
      end
      i32.const 0
      local.set $l7
      i32.const 0
      local.set $l9
      block $B24
        local.get $p2
        i32.eqz
        br_if $B24
        i32.const 0
        local.set $l9
        local.get $p2
        local.set $l10
        local.get $p1
        local.set $l3
        loop $L25
          local.get $l9
          local.get $l3
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set $l9
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $l10
          i32.const -1
          i32.add
          local.tee $l10
          br_if $L25
        end
      end
      local.get $l9
      local.get $p2
      i32.sub
      local.get $l6
      i32.add
      local.tee $l9
      local.set $l10
      block $B26
        block $B27
          block $B28
            i32.const 0
            local.get $p0
            i32.load8_u offset=32
            local.tee $l3
            local.get $l3
            i32.const 3
            i32.eq
            select
            br_table $B26 $B27 $B28 $B27 $B26
          end
          local.get $l9
          i32.const 1
          i32.shr_u
          local.set $l7
          local.get $l9
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set $l10
          br $B26
        end
        i32.const 0
        local.set $l10
        local.get $l9
        local.set $l7
      end
      local.get $l7
      i32.const 1
      i32.add
      local.set $l3
      block $B29
        loop $L30
          local.get $l3
          i32.const -1
          i32.add
          local.tee $l3
          i32.eqz
          br_if $B29
          local.get $p0
          i32.load offset=24
          local.get $p0
          i32.load offset=4
          local.get $p0
          i32.load offset=28
          i32.load offset=16
          call_indirect (type $t1) $T0
          i32.eqz
          br_if $L30
        end
        i32.const 1
        return
      end
      local.get $p0
      i32.load offset=4
      local.set $l9
      i32.const 1
      local.set $l3
      local.get $p0
      i32.load offset=24
      local.get $p1
      local.get $p2
      local.get $p0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type $t0) $T0
      br_if $B0
      local.get $l10
      i32.const 1
      i32.add
      local.set $l3
      local.get $p0
      i32.load offset=28
      local.set $l10
      local.get $p0
      i32.load offset=24
      local.set $p0
      loop $L31
        block $B32
          local.get $l3
          i32.const -1
          i32.add
          local.tee $l3
          br_if $B32
          i32.const 0
          return
        end
        local.get $p0
        local.get $l9
        local.get $l10
        i32.load offset=16
        call_indirect (type $t1) $T0
        i32.eqz
        br_if $L31
      end
      i32.const 1
      return
    end
    local.get $l3)
  (func $f244 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    i32.const 112
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p3
    i32.store offset=12
    local.get $l5
    local.get $p2
    i32.store offset=8
    i32.const 1
    local.set $l6
    local.get $p1
    local.set $l7
    block $B0
      local.get $p1
      i32.const 257
      i32.lt_u
      br_if $B0
      i32.const 0
      local.get $p1
      i32.sub
      local.set $l8
      i32.const 256
      local.set $l9
      loop $L1
        block $B2
          local.get $l9
          local.get $p1
          i32.ge_u
          br_if $B2
          local.get $p0
          local.get $l9
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if $B2
          i32.const 0
          local.set $l6
          local.get $l9
          local.set $l7
          br $B0
        end
        local.get $l9
        i32.const -1
        i32.add
        local.set $l7
        i32.const 0
        local.set $l6
        local.get $l9
        i32.const 1
        i32.eq
        br_if $B0
        local.get $l8
        local.get $l9
        i32.add
        local.set $l10
        local.get $l7
        local.set $l9
        local.get $l10
        i32.const 1
        i32.ne
        br_if $L1
      end
    end
    local.get $l5
    local.get $l7
    i32.store offset=20
    local.get $l5
    local.get $p0
    i32.store offset=16
    local.get $l5
    i32.const 0
    i32.const 5
    local.get $l6
    select
    i32.store offset=28
    local.get $l5
    i32.const 1054692
    i32.const 1051512
    local.get $l6
    select
    i32.store offset=24
    block $B3
      block $B4
        block $B5
          block $B6
            local.get $p2
            local.get $p1
            i32.gt_u
            local.tee $l9
            br_if $B6
            local.get $p3
            local.get $p1
            i32.gt_u
            br_if $B6
            local.get $p2
            local.get $p3
            i32.gt_u
            br_if $B5
            block $B7
              block $B8
                local.get $p2
                i32.eqz
                br_if $B8
                local.get $p1
                local.get $p2
                i32.eq
                br_if $B8
                local.get $p1
                local.get $p2
                i32.le_u
                br_if $B7
                local.get $p0
                local.get $p2
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if $B7
              end
              local.get $p3
              local.set $p2
            end
            local.get $l5
            local.get $p2
            i32.store offset=32
            local.get $p2
            i32.eqz
            br_if $B4
            local.get $p2
            local.get $p1
            i32.eq
            br_if $B4
            local.get $p1
            i32.const 1
            i32.add
            local.set $l10
            loop $L9
              block $B10
                local.get $p2
                local.get $p1
                i32.ge_u
                br_if $B10
                local.get $p0
                local.get $p2
                i32.add
                i32.load8_s
                i32.const -64
                i32.ge_s
                br_if $B4
              end
              local.get $p2
              i32.const -1
              i32.add
              local.set $l9
              local.get $p2
              i32.const 1
              i32.eq
              br_if $B3
              local.get $l10
              local.get $p2
              i32.eq
              local.set $l7
              local.get $l9
              local.set $p2
              local.get $l7
              i32.eqz
              br_if $L9
              br $B3
            end
          end
          local.get $l5
          local.get $p2
          local.get $p3
          local.get $l9
          select
          i32.store offset=40
          local.get $l5
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 3
          i32.store
          local.get $l5
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 4
          i32.store
          local.get $l5
          i32.const 84
          i32.add
          i32.const 4
          i32.store
          local.get $l5
          i64.const 3
          i64.store offset=52 align=4
          local.get $l5
          i32.const 1051520
          i32.store offset=48
          local.get $l5
          i32.const 1
          i32.store offset=76
          local.get $l5
          local.get $l5
          i32.const 72
          i32.add
          i32.store offset=64
          local.get $l5
          local.get $l5
          i32.const 24
          i32.add
          i32.store offset=88
          local.get $l5
          local.get $l5
          i32.const 16
          i32.add
          i32.store offset=80
          local.get $l5
          local.get $l5
          i32.const 40
          i32.add
          i32.store offset=72
          local.get $l5
          i32.const 48
          i32.add
          local.get $p4
          call $f234
          unreachable
        end
        local.get $l5
        i32.const 100
        i32.add
        i32.const 4
        i32.store
        local.get $l5
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 4
        i32.store
        local.get $l5
        i32.const 84
        i32.add
        i32.const 1
        i32.store
        local.get $l5
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 4
        i32.store
        local.get $l5
        i64.const 4
        i64.store offset=52 align=4
        local.get $l5
        i32.const 1051544
        i32.store offset=48
        local.get $l5
        i32.const 1
        i32.store offset=76
        local.get $l5
        local.get $l5
        i32.const 72
        i32.add
        i32.store offset=64
        local.get $l5
        local.get $l5
        i32.const 24
        i32.add
        i32.store offset=96
        local.get $l5
        local.get $l5
        i32.const 16
        i32.add
        i32.store offset=88
        local.get $l5
        local.get $l5
        i32.const 12
        i32.add
        i32.store offset=80
        local.get $l5
        local.get $l5
        i32.const 8
        i32.add
        i32.store offset=72
        local.get $l5
        i32.const 48
        i32.add
        local.get $p4
        call $f234
        unreachable
      end
      local.get $p2
      local.set $l9
    end
    block $B11
      local.get $l9
      local.get $p1
      i32.eq
      br_if $B11
      i32.const 1
      local.set $l7
      block $B12
        block $B13
          block $B14
            block $B15
              local.get $p0
              local.get $l9
              i32.add
              local.tee $l10
              i32.load8_s
              local.tee $p2
              i32.const -1
              i32.gt_s
              br_if $B15
              i32.const 0
              local.set $l6
              local.get $p0
              local.get $p1
              i32.add
              local.tee $l7
              local.set $p1
              block $B16
                local.get $l10
                i32.const 1
                i32.add
                local.get $l7
                i32.eq
                br_if $B16
                local.get $l10
                i32.const 2
                i32.add
                local.set $p1
                local.get $l10
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set $l6
              end
              local.get $p2
              i32.const 31
              i32.and
              local.set $l10
              local.get $p2
              i32.const 255
              i32.and
              i32.const 223
              i32.gt_u
              br_if $B14
              local.get $l6
              local.get $l10
              i32.const 6
              i32.shl
              i32.or
              local.set $p1
              br $B13
            end
            local.get $l5
            local.get $p2
            i32.const 255
            i32.and
            i32.store offset=36
            local.get $l5
            i32.const 40
            i32.add
            local.set $p2
            br $B12
          end
          i32.const 0
          local.set $p0
          local.get $l7
          local.set $l8
          block $B17
            local.get $p1
            local.get $l7
            i32.eq
            br_if $B17
            local.get $p1
            i32.const 1
            i32.add
            local.set $l8
            local.get $p1
            i32.load8_u
            i32.const 63
            i32.and
            local.set $p0
          end
          local.get $p0
          local.get $l6
          i32.const 6
          i32.shl
          i32.or
          local.set $p1
          block $B18
            local.get $p2
            i32.const 255
            i32.and
            i32.const 240
            i32.ge_u
            br_if $B18
            local.get $p1
            local.get $l10
            i32.const 12
            i32.shl
            i32.or
            local.set $p1
            br $B13
          end
          i32.const 0
          local.set $p2
          block $B19
            local.get $l8
            local.get $l7
            i32.eq
            br_if $B19
            local.get $l8
            i32.load8_u
            i32.const 63
            i32.and
            local.set $p2
          end
          local.get $p1
          i32.const 6
          i32.shl
          local.get $l10
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          local.get $p2
          i32.or
          local.tee $p1
          i32.const 1114112
          i32.eq
          br_if $B11
        end
        local.get $l5
        local.get $p1
        i32.store offset=36
        i32.const 1
        local.set $l7
        local.get $l5
        i32.const 40
        i32.add
        local.set $p2
        local.get $p1
        i32.const 128
        i32.lt_u
        br_if $B12
        i32.const 2
        local.set $l7
        local.get $p1
        i32.const 2048
        i32.lt_u
        br_if $B12
        i32.const 3
        i32.const 4
        local.get $p1
        i32.const 65536
        i32.lt_u
        select
        local.set $l7
      end
      local.get $l5
      local.get $l9
      i32.store offset=40
      local.get $l5
      local.get $l7
      local.get $l9
      i32.add
      i32.store offset=44
      local.get $l5
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 5
      i32.store
      local.get $l5
      i32.const 108
      i32.add
      i32.const 4
      i32.store
      local.get $l5
      i32.const 100
      i32.add
      i32.const 4
      i32.store
      local.get $l5
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 9
      i32.store
      local.get $l5
      i32.const 84
      i32.add
      i32.const 10
      i32.store
      local.get $l5
      i64.const 5
      i64.store offset=52 align=4
      local.get $l5
      i32.const 1051576
      i32.store offset=48
      local.get $l5
      local.get $p2
      i32.store offset=88
      local.get $l5
      i32.const 1
      i32.store offset=76
      local.get $l5
      local.get $l5
      i32.const 72
      i32.add
      i32.store offset=64
      local.get $l5
      local.get $l5
      i32.const 24
      i32.add
      i32.store offset=104
      local.get $l5
      local.get $l5
      i32.const 16
      i32.add
      i32.store offset=96
      local.get $l5
      local.get $l5
      i32.const 36
      i32.add
      i32.store offset=80
      local.get $l5
      local.get $l5
      i32.const 32
      i32.add
      i32.store offset=72
      local.get $l5
      i32.const 48
      i32.add
      local.get $p4
      call $f234
      unreachable
    end
    i32.const 1055352
    i32.const 43
    local.get $p4
    call $f221
    unreachable)
  (func $f245 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    call $f243)
  (func $f246 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        i32.load
        local.get $p1
        call $f249
        br_if $B1
        local.get $p1
        i32.const 28
        i32.add
        i32.load
        local.set $l3
        local.get $p1
        i32.load offset=24
        local.set $l4
        local.get $l2
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get $l2
        i32.const 1054692
        i32.store offset=24
        local.get $l2
        i64.const 1
        i64.store offset=12 align=4
        local.get $l2
        i32.const 1051680
        i32.store offset=8
        local.get $l4
        local.get $l3
        local.get $l2
        i32.const 8
        i32.add
        call $f77
        i32.eqz
        br_if $B0
      end
      local.get $l2
      i32.const 32
      i32.add
      global.set $g0
      i32.const 1
      return
    end
    local.get $p0
    i32.load offset=4
    local.get $p1
    call $f249
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f247 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    i32.const 1
    local.set $l2
    block $B0
      local.get $p1
      i32.load offset=24
      i32.const 39
      local.get $p1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type $t1) $T0
      br_if $B0
      i32.const 2
      local.set $l3
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p0
                i32.load
                local.tee $l4
                i32.const -9
                i32.add
                local.tee $p0
                i32.const 30
                i32.le_u
                br_if $B5
                local.get $l4
                i32.const 92
                i32.ne
                br_if $B4
                br $B3
              end
              i32.const 116
              local.set $l5
              block $B6
                block $B7
                  local.get $p0
                  br_table $B1 $B6 $B4 $B4 $B7 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B3 $B4 $B4 $B4 $B4 $B3 $B1
                end
                i32.const 114
                local.set $l5
                br $B1
              end
              i32.const 110
              local.set $l5
              br $B1
            end
            block $B8
              block $B9
                block $B10
                  block $B11
                    block $B12
                      block $B13
                        block $B14
                          block $B15
                            block $B16
                              i32.const 0
                              i32.const 15
                              local.get $l4
                              i32.const 68900
                              i32.lt_u
                              select
                              local.tee $l3
                              local.get $l3
                              i32.const 8
                              i32.add
                              local.tee $l3
                              local.get $l3
                              i32.const 2
                              i32.shl
                              i32.const 1053200
                              i32.add
                              i32.load
                              i32.const 11
                              i32.shl
                              local.get $l4
                              i32.const 11
                              i32.shl
                              local.tee $l3
                              i32.gt_u
                              select
                              local.tee $p0
                              local.get $p0
                              i32.const 4
                              i32.add
                              local.tee $p0
                              local.get $p0
                              i32.const 2
                              i32.shl
                              i32.const 1053200
                              i32.add
                              i32.load
                              i32.const 11
                              i32.shl
                              local.get $l3
                              i32.gt_u
                              select
                              local.tee $p0
                              local.get $p0
                              i32.const 2
                              i32.add
                              local.tee $p0
                              local.get $p0
                              i32.const 2
                              i32.shl
                              i32.const 1053200
                              i32.add
                              i32.load
                              i32.const 11
                              i32.shl
                              local.get $l3
                              i32.gt_u
                              select
                              local.tee $p0
                              local.get $p0
                              i32.const 1
                              i32.add
                              local.tee $p0
                              local.get $p0
                              i32.const 2
                              i32.shl
                              i32.const 1053200
                              i32.add
                              i32.load
                              i32.const 11
                              i32.shl
                              local.get $l3
                              i32.gt_u
                              select
                              local.tee $p0
                              i32.const 2
                              i32.shl
                              i32.const 1053200
                              i32.add
                              i32.load
                              i32.const 11
                              i32.shl
                              local.tee $l2
                              local.get $l3
                              i32.eq
                              local.get $l2
                              local.get $l3
                              i32.lt_u
                              i32.add
                              local.get $p0
                              i32.add
                              local.tee $l3
                              i32.const 30
                              i32.gt_u
                              br_if $B16
                              local.get $l3
                              i32.const 2
                              i32.shl
                              local.set $l2
                              i32.const 689
                              local.set $p0
                              block $B17
                                local.get $l3
                                i32.const 30
                                i32.eq
                                br_if $B17
                                local.get $l2
                                i32.const 1053204
                                i32.add
                                local.tee $l5
                                i32.eqz
                                br_if $B17
                                local.get $l5
                                i32.load
                                i32.const 21
                                i32.shr_u
                                local.set $p0
                              end
                              i32.const 0
                              local.set $l5
                              block $B18
                                local.get $l3
                                i32.const -1
                                i32.add
                                local.tee $l6
                                local.get $l3
                                i32.gt_u
                                br_if $B18
                                local.get $l6
                                i32.const 31
                                i32.ge_u
                                br_if $B11
                                local.get $l6
                                i32.const 2
                                i32.shl
                                i32.const 1053200
                                i32.add
                                i32.load
                                i32.const 2097151
                                i32.and
                                local.set $l5
                              end
                              block $B19
                                local.get $p0
                                local.get $l2
                                i32.const 1053200
                                i32.add
                                i32.load
                                i32.const 21
                                i32.shr_u
                                local.tee $l3
                                i32.const 1
                                i32.add
                                i32.eq
                                br_if $B19
                                local.get $l4
                                local.get $l5
                                i32.sub
                                local.set $l2
                                local.get $p0
                                i32.const -1
                                i32.add
                                local.set $l5
                                i32.const 0
                                local.set $p0
                                loop $L20
                                  local.get $l3
                                  i32.const 688
                                  i32.gt_u
                                  br_if $B15
                                  local.get $p0
                                  local.get $l3
                                  i32.const 1053340
                                  i32.add
                                  i32.load8_u
                                  i32.add
                                  local.tee $p0
                                  local.get $l2
                                  i32.gt_u
                                  br_if $B19
                                  local.get $l5
                                  local.get $l3
                                  i32.const 1
                                  i32.add
                                  local.tee $l3
                                  i32.ne
                                  br_if $L20
                                end
                              end
                              local.get $l3
                              i32.const 1
                              i32.and
                              br_if $B10
                              local.get $l4
                              i32.const 65536
                              i32.lt_u
                              br_if $B14
                              local.get $l4
                              i32.const 131072
                              i32.lt_u
                              br_if $B13
                              local.get $l4
                              i32.const -918000
                              i32.add
                              i32.const 196112
                              i32.lt_u
                              br_if $B12
                              local.get $l4
                              i32.const -201547
                              i32.add
                              i32.const 716213
                              i32.lt_u
                              br_if $B12
                              local.get $l4
                              i32.const -195102
                              i32.add
                              i32.const 1506
                              i32.lt_u
                              br_if $B12
                              local.get $l4
                              i32.const -191457
                              i32.add
                              i32.const 3103
                              i32.lt_u
                              br_if $B12
                              local.get $l4
                              i32.const -183970
                              i32.add
                              i32.const 14
                              i32.lt_u
                              br_if $B12
                              local.get $l4
                              i32.const 2097150
                              i32.and
                              i32.const 178206
                              i32.eq
                              br_if $B12
                              local.get $l4
                              i32.const -173790
                              i32.add
                              i32.const 34
                              i32.lt_u
                              br_if $B12
                              local.get $l4
                              i32.const -177973
                              i32.add
                              i32.const 10
                              i32.gt_u
                              br_if $B8
                              br $B12
                            end
                            local.get $l3
                            i32.const 31
                            i32.const 1054032
                            call $f47
                            unreachable
                          end
                          local.get $l3
                          i32.const 689
                          i32.const 1054048
                          call $f47
                          unreachable
                        end
                        local.get $l4
                        i32.const 1051784
                        i32.const 41
                        i32.const 1051866
                        i32.const 290
                        i32.const 1052156
                        i32.const 309
                        call $f248
                        i32.eqz
                        br_if $B12
                        br $B8
                      end
                      local.get $l4
                      i32.const 1052465
                      i32.const 38
                      i32.const 1052541
                      i32.const 175
                      i32.const 1052716
                      i32.const 419
                      call $f248
                      br_if $B8
                    end
                    local.get $l4
                    i32.const 1
                    i32.or
                    i32.clz
                    i32.const 2
                    i32.shr_u
                    i32.const 7
                    i32.xor
                    i64.extend_i32_u
                    i64.const 21474836480
                    i64.or
                    local.set $l7
                    br $B9
                  end
                  local.get $l6
                  i32.const 31
                  i32.const 1053324
                  call $f47
                  unreachable
                end
                local.get $l4
                i32.const 1
                i32.or
                i32.clz
                i32.const 2
                i32.shr_u
                i32.const 7
                i32.xor
                i64.extend_i32_u
                i64.const 21474836480
                i64.or
                local.set $l7
              end
              i32.const 3
              local.set $l3
              br $B2
            end
            i32.const 1
            local.set $l3
            br $B2
          end
        end
        local.get $l4
        local.set $l5
      end
      loop $L21
        local.get $l3
        local.set $l4
        i32.const 92
        local.set $p0
        i32.const 1
        local.set $l2
        i32.const 1
        local.set $l3
        block $B22
          block $B23
            block $B24
              block $B25
                block $B26
                  block $B27
                    local.get $l4
                    br_table $B25 $B26 $B22 $B27 $B25
                  end
                  block $B28
                    block $B29
                      block $B30
                        block $B31
                          local.get $l7
                          i64.const 32
                          i64.shr_u
                          i32.wrap_i64
                          i32.const 255
                          i32.and
                          br_table $B25 $B28 $B29 $B30 $B31 $B24 $B25
                        end
                        local.get $l7
                        i64.const -1095216660481
                        i64.and
                        i64.const 12884901888
                        i64.or
                        local.set $l7
                        i32.const 117
                        local.set $p0
                        br $B23
                      end
                      local.get $l7
                      i64.const -1095216660481
                      i64.and
                      i64.const 8589934592
                      i64.or
                      local.set $l7
                      i32.const 123
                      local.set $p0
                      br $B23
                    end
                    local.get $l5
                    local.get $l7
                    i32.wrap_i64
                    local.tee $l4
                    i32.const 2
                    i32.shl
                    i32.const 28
                    i32.and
                    i32.shr_u
                    i32.const 15
                    i32.and
                    local.tee $l3
                    i32.const 48
                    i32.or
                    local.get $l3
                    i32.const 87
                    i32.add
                    local.get $l3
                    i32.const 10
                    i32.lt_u
                    select
                    local.set $p0
                    block $B32
                      local.get $l4
                      i32.eqz
                      br_if $B32
                      local.get $l7
                      i64.const -1
                      i64.add
                      i64.const 4294967295
                      i64.and
                      local.get $l7
                      i64.const -4294967296
                      i64.and
                      i64.or
                      local.set $l7
                      br $B23
                    end
                    local.get $l7
                    i64.const -1095216660481
                    i64.and
                    i64.const 4294967296
                    i64.or
                    local.set $l7
                    br $B23
                  end
                  local.get $l7
                  i64.const -1095216660481
                  i64.and
                  local.set $l7
                  i32.const 125
                  local.set $p0
                  br $B23
                end
                i32.const 0
                local.set $l3
                local.get $l5
                local.set $p0
                br $B22
              end
              local.get $p1
              i32.load offset=24
              i32.const 39
              local.get $p1
              i32.load offset=28
              i32.load offset=16
              call_indirect (type $t1) $T0
              return
            end
            local.get $l7
            i64.const -1095216660481
            i64.and
            i64.const 17179869184
            i64.or
            local.set $l7
          end
          i32.const 3
          local.set $l3
        end
        local.get $p1
        i32.load offset=24
        local.get $p0
        local.get $p1
        i32.load offset=28
        i32.load offset=16
        call_indirect (type $t1) $T0
        i32.eqz
        br_if $L21
      end
    end
    local.get $l2)
  (func $f248 (type $t23) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    local.get $p1
    local.get $p2
    i32.const 1
    i32.shl
    i32.add
    local.set $l7
    local.get $p0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shr_u
    local.set $l8
    i32.const 0
    local.set $l9
    local.get $p0
    i32.const 255
    i32.and
    local.set $l10
    block $B0
      block $B1
        block $B2
          loop $L3
            local.get $p1
            i32.const 2
            i32.add
            local.set $l11
            local.get $l9
            local.get $p1
            i32.load8_u offset=1
            local.tee $p2
            i32.add
            local.set $l12
            block $B4
              local.get $p1
              i32.load8_u
              local.tee $p1
              local.get $l8
              i32.eq
              br_if $B4
              local.get $p1
              local.get $l8
              i32.gt_u
              br_if $B1
              local.get $l12
              local.set $l9
              local.get $l11
              local.set $p1
              local.get $l11
              local.get $l7
              i32.ne
              br_if $L3
              br $B1
            end
            block $B5
              local.get $l12
              local.get $l9
              i32.lt_u
              br_if $B5
              local.get $l12
              local.get $p4
              i32.gt_u
              br_if $B2
              local.get $p3
              local.get $l9
              i32.add
              local.set $p1
              block $B6
                loop $L7
                  local.get $p2
                  i32.eqz
                  br_if $B6
                  local.get $p2
                  i32.const -1
                  i32.add
                  local.set $p2
                  local.get $p1
                  i32.load8_u
                  local.set $l9
                  local.get $p1
                  i32.const 1
                  i32.add
                  local.set $p1
                  local.get $l9
                  local.get $l10
                  i32.ne
                  br_if $L7
                end
                i32.const 0
                local.set $p2
                br $B0
              end
              local.get $l12
              local.set $l9
              local.get $l11
              local.set $p1
              local.get $l11
              local.get $l7
              i32.ne
              br_if $L3
              br $B1
            end
          end
          local.get $l9
          local.get $l12
          i32.const 1053136
          call $f242
          unreachable
        end
        local.get $l12
        local.get $p4
        i32.const 1053136
        call $f241
        unreachable
      end
      local.get $p0
      i32.const 65535
      i32.and
      local.set $l9
      local.get $p5
      local.get $p6
      i32.add
      local.set $l12
      i32.const 1
      local.set $p2
      block $B8
        loop $L9
          local.get $p5
          i32.const 1
          i32.add
          local.set $l10
          block $B10
            block $B11
              local.get $p5
              i32.load8_u
              local.tee $p1
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              local.tee $l11
              i32.const 0
              i32.lt_s
              br_if $B11
              local.get $l10
              local.set $p5
              br $B10
            end
            local.get $l10
            local.get $l12
            i32.eq
            br_if $B8
            local.get $l11
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            local.get $p5
            i32.load8_u offset=1
            i32.or
            local.set $p1
            local.get $p5
            i32.const 2
            i32.add
            local.set $p5
          end
          local.get $l9
          local.get $p1
          i32.sub
          local.tee $l9
          i32.const 0
          i32.lt_s
          br_if $B0
          local.get $p2
          i32.const 1
          i32.xor
          local.set $p2
          local.get $p5
          local.get $l12
          i32.ne
          br_if $L9
          br $B0
        end
      end
      i32.const 1055352
      i32.const 43
      i32.const 1053152
      call $f221
      unreachable
    end
    local.get $p2
    i32.const 1
    i32.and)
  (func $f249 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              i32.load
              local.tee $l3
              i32.const 16
              i32.and
              br_if $B4
              local.get $l3
              i32.const 32
              i32.and
              br_if $B3
              local.get $p0
              i64.extend_i32_u
              local.get $p1
              call $f236
              local.set $p0
              br $B2
            end
            i32.const 0
            local.set $l3
            loop $L5
              local.get $l2
              local.get $l3
              i32.add
              i32.const 127
              i32.add
              local.get $p0
              i32.const 15
              i32.and
              local.tee $l4
              i32.const 48
              i32.or
              local.get $l4
              i32.const 87
              i32.add
              local.get $l4
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get $l3
              i32.const -1
              i32.add
              local.set $l3
              local.get $p0
              i32.const 4
              i32.shr_u
              local.tee $p0
              br_if $L5
            end
            local.get $l3
            i32.const 128
            i32.add
            local.tee $p0
            i32.const 129
            i32.ge_u
            br_if $B1
            local.get $p1
            i32.const 1051760
            i32.const 2
            local.get $l2
            local.get $l3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get $l3
            i32.sub
            call $f239
            local.set $p0
            br $B2
          end
          i32.const 0
          local.set $l3
          loop $L6
            local.get $l2
            local.get $l3
            i32.add
            i32.const 127
            i32.add
            local.get $p0
            i32.const 15
            i32.and
            local.tee $l4
            i32.const 48
            i32.or
            local.get $l4
            i32.const 55
            i32.add
            local.get $l4
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get $l3
            i32.const -1
            i32.add
            local.set $l3
            local.get $p0
            i32.const 4
            i32.shr_u
            local.tee $p0
            br_if $L6
          end
          local.get $l3
          i32.const 128
          i32.add
          local.tee $p0
          i32.const 129
          i32.ge_u
          br_if $B0
          local.get $p1
          i32.const 1051760
          i32.const 2
          local.get $l2
          local.get $l3
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get $l3
          i32.sub
          call $f239
          local.set $p0
        end
        local.get $l2
        i32.const 128
        i32.add
        global.set $g0
        local.get $p0
        return
      end
      local.get $p0
      i32.const 128
      i32.const 1051744
      call $f242
      unreachable
    end
    local.get $p0
    i32.const 128
    i32.const 1051744
    call $f242
    unreachable)
  (func $f250 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type $t1) $T0)
  (func $f251 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p2
        br_if $B1
        i32.const 0
        local.set $l4
        br $B0
      end
      local.get $l3
      i32.const 40
      i32.add
      local.set $l5
      block $B2
        block $B3
          block $B4
            block $B5
              loop $L6
                block $B7
                  local.get $p0
                  i32.load offset=8
                  i32.load8_u
                  i32.eqz
                  br_if $B7
                  local.get $p0
                  i32.load
                  i32.const 1054198
                  i32.const 4
                  local.get $p0
                  i32.load offset=4
                  i32.load offset=12
                  call_indirect (type $t0) $T0
                  br_if $B2
                end
                local.get $l3
                i32.const 10
                i32.store offset=40
                local.get $l3
                i64.const 4294967306
                i64.store offset=32
                local.get $l3
                local.get $p2
                i32.store offset=28
                local.get $l3
                i32.const 0
                i32.store offset=24
                local.get $l3
                local.get $p2
                i32.store offset=20
                local.get $l3
                local.get $p1
                i32.store offset=16
                local.get $l3
                i32.const 8
                i32.add
                i32.const 10
                local.get $p1
                local.get $p2
                call $f252
                block $B8
                  block $B9
                    block $B10
                      block $B11
                        local.get $l3
                        i32.load offset=8
                        i32.const 1
                        i32.ne
                        br_if $B11
                        local.get $l3
                        i32.load offset=12
                        local.set $l4
                        loop $L12
                          local.get $l3
                          local.get $l4
                          local.get $l3
                          i32.load offset=24
                          i32.add
                          i32.const 1
                          i32.add
                          local.tee $l4
                          i32.store offset=24
                          block $B13
                            block $B14
                              local.get $l4
                              local.get $l3
                              i32.load offset=36
                              local.tee $l6
                              i32.ge_u
                              br_if $B14
                              local.get $l3
                              i32.load offset=20
                              local.set $l7
                              br $B13
                            end
                            local.get $l3
                            i32.load offset=20
                            local.tee $l7
                            local.get $l4
                            i32.lt_u
                            br_if $B13
                            local.get $l6
                            i32.const 5
                            i32.ge_u
                            br_if $B5
                            local.get $l3
                            i32.load offset=16
                            local.get $l4
                            local.get $l6
                            i32.sub
                            local.tee $l8
                            i32.add
                            local.tee $l9
                            local.get $l5
                            i32.eq
                            br_if $B9
                            local.get $l9
                            local.get $l5
                            local.get $l6
                            call $f293
                            i32.eqz
                            br_if $B9
                          end
                          local.get $l3
                          i32.load offset=28
                          local.tee $l9
                          local.get $l4
                          i32.lt_u
                          br_if $B10
                          local.get $l7
                          local.get $l9
                          i32.lt_u
                          br_if $B10
                          local.get $l3
                          local.get $l6
                          local.get $l3
                          i32.const 16
                          i32.add
                          i32.add
                          i32.const 23
                          i32.add
                          i32.load8_u
                          local.get $l3
                          i32.load offset=16
                          local.get $l4
                          i32.add
                          local.get $l9
                          local.get $l4
                          i32.sub
                          call $f252
                          local.get $l3
                          i32.load offset=4
                          local.set $l4
                          local.get $l3
                          i32.load
                          i32.const 1
                          i32.eq
                          br_if $L12
                        end
                      end
                      local.get $l3
                      local.get $l3
                      i32.load offset=28
                      i32.store offset=24
                    end
                    local.get $p0
                    i32.load offset=8
                    i32.const 0
                    i32.store8
                    local.get $p2
                    local.set $l4
                    br $B8
                  end
                  local.get $p0
                  i32.load offset=8
                  i32.const 1
                  i32.store8
                  local.get $l8
                  i32.const 1
                  i32.add
                  local.set $l4
                end
                local.get $p0
                i32.load offset=4
                local.set $l9
                local.get $p0
                i32.load
                local.set $l6
                block $B15
                  local.get $l4
                  i32.eqz
                  local.get $p2
                  local.get $l4
                  i32.eq
                  i32.or
                  local.tee $l7
                  br_if $B15
                  local.get $p2
                  local.get $l4
                  i32.le_u
                  br_if $B4
                  local.get $p1
                  local.get $l4
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if $B4
                end
                local.get $l6
                local.get $p1
                local.get $l4
                local.get $l9
                i32.load offset=12
                call_indirect (type $t0) $T0
                br_if $B2
                block $B16
                  local.get $l7
                  br_if $B16
                  local.get $p2
                  local.get $l4
                  i32.le_u
                  br_if $B3
                  local.get $p1
                  local.get $l4
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if $B3
                end
                local.get $p1
                local.get $l4
                i32.add
                local.set $p1
                local.get $p2
                local.get $l4
                i32.sub
                local.tee $p2
                br_if $L6
              end
              i32.const 0
              local.set $l4
              br $B0
            end
            local.get $l6
            i32.const 4
            i32.const 1054204
            call $f241
            unreachable
          end
          local.get $p1
          local.get $p2
          i32.const 0
          local.get $l4
          i32.const 1054220
          call $f244
          unreachable
        end
        local.get $p1
        local.get $p2
        local.get $l4
        local.get $p2
        i32.const 1051496
        call $f244
        unreachable
      end
      i32.const 1
      local.set $l4
    end
    local.get $l3
    i32.const 48
    i32.add
    global.set $g0
    local.get $l4)
  (func $f252 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    i32.const 0
    local.set $l4
    block $B0
      block $B1
        local.get $p2
        i32.const 3
        i32.and
        local.tee $l5
        i32.eqz
        br_if $B1
        i32.const 4
        local.get $l5
        i32.sub
        local.tee $l5
        i32.eqz
        br_if $B1
        local.get $p3
        local.get $l5
        local.get $l5
        local.get $p3
        i32.gt_u
        select
        local.set $l4
        i32.const 0
        local.set $l5
        local.get $p1
        i32.const 255
        i32.and
        local.set $l6
        loop $L2
          local.get $l4
          local.get $l5
          i32.eq
          br_if $B1
          local.get $p2
          local.get $l5
          i32.add
          local.set $l7
          local.get $l5
          i32.const 1
          i32.add
          local.set $l5
          local.get $l7
          i32.load8_u
          local.tee $l7
          local.get $l6
          i32.ne
          br_if $L2
        end
        i32.const 1
        local.set $p3
        local.get $l7
        local.get $p1
        i32.const 255
        i32.and
        i32.eq
        i32.const 1
        i32.add
        i32.const 1
        i32.and
        local.get $l5
        i32.add
        i32.const -1
        i32.add
        local.set $l5
        br $B0
      end
      local.get $p1
      i32.const 255
      i32.and
      local.set $l6
      block $B3
        block $B4
          local.get $p3
          i32.const 8
          i32.lt_u
          br_if $B4
          local.get $l4
          local.get $p3
          i32.const -8
          i32.add
          local.tee $l8
          i32.gt_u
          br_if $B4
          local.get $l6
          i32.const 16843009
          i32.mul
          local.set $l5
          block $B5
            loop $L6
              local.get $p2
              local.get $l4
              i32.add
              local.tee $l7
              i32.const 4
              i32.add
              i32.load
              local.get $l5
              i32.xor
              local.tee $l9
              i32.const -1
              i32.xor
              local.get $l9
              i32.const -16843009
              i32.add
              i32.and
              local.get $l7
              i32.load
              local.get $l5
              i32.xor
              local.tee $l7
              i32.const -1
              i32.xor
              local.get $l7
              i32.const -16843009
              i32.add
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if $B5
              local.get $l4
              i32.const 8
              i32.add
              local.tee $l4
              local.get $l8
              i32.le_u
              br_if $L6
            end
          end
          local.get $l4
          local.get $p3
          i32.gt_u
          br_if $B3
        end
        local.get $p2
        local.get $l4
        i32.add
        local.set $l9
        local.get $p3
        local.get $l4
        i32.sub
        local.set $p2
        i32.const 0
        local.set $p3
        i32.const 0
        local.set $l5
        block $B7
          loop $L8
            local.get $p2
            local.get $l5
            i32.eq
            br_if $B7
            local.get $l9
            local.get $l5
            i32.add
            local.set $l7
            local.get $l5
            i32.const 1
            i32.add
            local.set $l5
            local.get $l7
            i32.load8_u
            local.tee $l7
            local.get $l6
            i32.ne
            br_if $L8
          end
          i32.const 1
          local.set $p3
          local.get $l7
          local.get $p1
          i32.const 255
          i32.and
          i32.eq
          i32.const 1
          i32.add
          i32.const 1
          i32.and
          local.get $l5
          i32.add
          i32.const -1
          i32.add
          local.set $l5
        end
        local.get $l5
        local.get $l4
        i32.add
        local.set $l5
        br $B0
      end
      local.get $l4
      local.get $p3
      i32.const 1054264
      call $f242
      unreachable
    end
    local.get $p0
    local.get $l5
    i32.store offset=4
    local.get $p0
    local.get $p3
    i32.store)
  (func $f253 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            local.get $l2
            i32.const 12
            i32.add
            local.set $l3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B1
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.store8 offset=12
          local.get $l2
          i32.const 12
          i32.add
          local.set $l3
          i32.const 1
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 31
        i32.and
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get $l2
        i32.const 12
        i32.add
        local.set $l3
        i32.const 2
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get $l2
      local.get $p1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get $l2
      local.get $p1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set $p1
    end
    local.get $p0
    local.get $l3
    local.get $p1
    call $f251
    local.set $p1
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $f254 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1054344
    local.get $l2
    i32.const 8
    i32.add
    call $f77
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f255 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p2
    call $f251)
  (func $f256 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $f253)
  (func $f257 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1054344
    local.get $l2
    i32.const 8
    i32.add
    call $f77
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f258 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    i32.load offset=24
    i32.const 1054373
    i32.const 5
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t0) $T0)
  (func $f259 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    i32.const 1
    local.set $l3
    block $B0
      local.get $p1
      i32.load offset=24
      i32.const 1054378
      i32.const 9
      local.get $p1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t0) $T0
      br_if $B0
      local.get $p1
      i32.load offset=24
      local.set $l4
      local.get $p1
      i32.load offset=28
      i32.load offset=12
      local.set $l5
      block $B1
        block $B2
          local.get $p1
          i32.load8_u
          i32.const 4
          i32.and
          br_if $B2
          local.get $l4
          i32.const 1054307
          i32.const 3
          local.get $l5
          call_indirect (type $t0) $T0
          br_if $B0
          local.get $p1
          i32.load offset=24
          i32.const 1054387
          i32.const 7
          local.get $p1
          i32.load offset=28
          i32.load offset=12
          call_indirect (type $t0) $T0
          br_if $B0
          local.get $p1
          i32.load offset=24
          i32.const 1054196
          i32.const 2
          local.get $p1
          i32.load offset=28
          i32.load offset=12
          call_indirect (type $t0) $T0
          br_if $B0
          local.get $p1
          i32.const 1054371
          i32.const 2
          call $f243
          i32.eqz
          br_if $B1
          br $B0
        end
        local.get $l4
        i32.const 1054310
        i32.const 3
        local.get $l5
        call_indirect (type $t0) $T0
        br_if $B0
        local.get $p1
        i32.load
        local.set $l4
        i32.const 1
        local.set $l3
        local.get $l2
        i32.const 1
        i32.store8 offset=23
        local.get $l2
        i32.const 52
        i32.add
        i32.const 1054316
        i32.store
        local.get $l2
        local.get $l4
        i32.store offset=24
        local.get $l2
        local.get $p1
        i64.load offset=24 align=4
        i64.store offset=8
        local.get $l2
        local.get $p1
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get $l2
        local.get $p1
        i32.load offset=4
        i32.store offset=28
        local.get $l2
        local.get $p1
        i64.load offset=16 align=4
        i64.store offset=40
        local.get $l2
        local.get $p1
        i64.load offset=8 align=4
        i64.store offset=32
        local.get $l2
        local.get $l2
        i32.const 23
        i32.add
        i32.store offset=16
        local.get $l2
        local.get $l2
        i32.const 8
        i32.add
        i32.store offset=48
        local.get $l2
        i32.const 8
        i32.add
        i32.const 1054387
        i32.const 7
        call $f251
        br_if $B0
        local.get $l2
        i32.const 8
        i32.add
        i32.const 1054196
        i32.const 2
        call $f251
        br_if $B0
        local.get $l2
        i32.const 24
        i32.add
        i32.const 1054371
        i32.const 2
        call $f243
        br_if $B0
        i32.const 1
        local.set $l3
        local.get $l2
        i32.const 8
        i32.add
        i32.const 1054340
        i32.const 2
        call $f251
        br_if $B0
      end
      local.get $p1
      i32.load offset=24
      local.set $l3
      local.get $p1
      i32.load offset=28
      i32.load offset=12
      local.set $l4
      block $B3
        local.get $p1
        i32.load8_u
        i32.const 4
        i32.and
        br_if $B3
        local.get $l3
        i32.const 1054368
        i32.const 2
        local.get $l4
        call_indirect (type $t0) $T0
        local.set $l3
        br $B0
      end
      local.get $l3
      i32.const 1054370
      i32.const 1
      local.get $l4
      call_indirect (type $t0) $T0
      local.set $l3
    end
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0
    local.get $l3)
  (func $f260 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.load offset=4
          local.tee $l3
          local.get $p0
          i32.load offset=8
          local.tee $l4
          i32.sub
          local.get $p1
          i32.ge_u
          br_if $B2
          local.get $l4
          local.get $p1
          i32.add
          local.tee $p1
          local.get $l4
          i32.lt_u
          br_if $B1
          local.get $l3
          i32.const 1
          i32.shl
          local.tee $l4
          local.get $p1
          local.get $l4
          local.get $p1
          i32.gt_u
          select
          local.tee $p1
          i32.const 0
          i32.lt_s
          br_if $B1
          block $B3
            block $B4
              local.get $l3
              br_if $B4
              local.get $l2
              i32.const 8
              i32.add
              local.get $p1
              i32.const 0
              call $f262
              local.get $l2
              i32.load offset=8
              local.tee $l4
              i32.eqz
              br_if $B0
              local.get $l2
              i32.load offset=12
              local.set $l3
              br $B3
            end
            local.get $p0
            i32.load
            local.set $l4
            block $B5
              block $B6
                local.get $p1
                local.get $l3
                i32.eq
                local.tee $l5
                i32.eqz
                br_if $B6
                local.get $l4
                i32.const 0
                local.get $l5
                select
                local.set $l4
                br $B5
              end
              local.get $l4
              local.get $l3
              i32.const 1
              local.get $p1
              call $f113
              local.set $l4
              local.get $p1
              local.set $l3
            end
            local.get $l4
            i32.eqz
            br_if $B0
          end
          local.get $p0
          local.get $l3
          i32.store offset=4
          local.get $p0
          local.get $l4
          i32.store
        end
        local.get $l2
        i32.const 16
        i32.add
        global.set $g0
        return
      end
      call $f108
      unreachable
    end
    call $f102
    unreachable)
  (func $f261 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p1
    i32.store offset=8
    local.get $l4
    local.get $p3
    i32.store offset=12
    block $B0
      local.get $p1
      local.get $p3
      i32.ne
      br_if $B0
      local.get $p0
      local.get $p2
      local.get $p1
      call $f290
      drop
      local.get $l4
      i32.const 96
      i32.add
      global.set $g0
      return
    end
    local.get $l4
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 6
    i32.store
    local.get $l4
    i32.const 52
    i32.add
    i32.const 11
    i32.store
    local.get $l4
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get $l4
    local.get $l4
    i32.const 8
    i32.add
    i32.store offset=64
    local.get $l4
    local.get $l4
    i32.const 12
    i32.add
    i32.store offset=68
    local.get $l4
    i32.const 72
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get $l4
    i64.const 3
    i64.store offset=20 align=4
    local.get $l4
    i32.const 1054692
    i32.store offset=16
    local.get $l4
    i32.const 11
    i32.store offset=44
    local.get $l4
    i32.const 1054692
    i32.store offset=88
    local.get $l4
    i64.const 1
    i64.store offset=76 align=4
    local.get $l4
    i32.const 1054684
    i32.store offset=72
    local.get $l4
    local.get $l4
    i32.const 40
    i32.add
    i32.store offset=32
    local.get $l4
    local.get $l4
    i32.const 72
    i32.add
    i32.store offset=56
    local.get $l4
    local.get $l4
    i32.const 68
    i32.add
    i32.store offset=48
    local.get $l4
    local.get $l4
    i32.const 64
    i32.add
    i32.store offset=40
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1054716
    call $f234
    unreachable)
  (func $f262 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      block $B1
        local.get $p1
        br_if $B1
        i32.const 1
        local.set $p2
        br $B0
      end
      block $B2
        local.get $p2
        i32.eqz
        br_if $B2
        local.get $p1
        call $f225
        local.set $p2
        br $B0
      end
      local.get $p1
      i32.const 1
      call $f114
      local.set $p2
    end
    local.get $p0
    local.get $p1
    i32.store offset=4
    local.get $p0
    local.get $p2
    i32.store)
  (func $f263 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              i32.load
              local.tee $l3
              i32.const 16
              i32.and
              br_if $B4
              local.get $l3
              i32.const 32
              i32.and
              br_if $B3
              local.get $p0
              local.get $p1
              call $f123
              local.set $p0
              br $B2
            end
            local.get $p0
            i32.load
            local.set $l3
            i32.const 0
            local.set $p0
            loop $L5
              local.get $l2
              local.get $p0
              i32.add
              i32.const 127
              i32.add
              local.get $l3
              i32.const 15
              i32.and
              local.tee $l4
              i32.const 48
              i32.or
              local.get $l4
              i32.const 87
              i32.add
              local.get $l4
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get $p0
              i32.const -1
              i32.add
              local.set $p0
              local.get $l3
              i32.const 4
              i32.shr_u
              local.tee $l3
              br_if $L5
            end
            local.get $p0
            i32.const 128
            i32.add
            local.tee $l3
            i32.const 129
            i32.ge_u
            br_if $B1
            local.get $p1
            i32.const 1051760
            i32.const 2
            local.get $l2
            local.get $p0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get $p0
            i32.sub
            call $f239
            local.set $p0
            br $B2
          end
          local.get $p0
          i32.load
          local.set $l3
          i32.const 0
          local.set $p0
          loop $L6
            local.get $l2
            local.get $p0
            i32.add
            i32.const 127
            i32.add
            local.get $l3
            i32.const 15
            i32.and
            local.tee $l4
            i32.const 48
            i32.or
            local.get $l4
            i32.const 55
            i32.add
            local.get $l4
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get $p0
            i32.const -1
            i32.add
            local.set $p0
            local.get $l3
            i32.const 4
            i32.shr_u
            local.tee $l3
            br_if $L6
          end
          local.get $p0
          i32.const 128
          i32.add
          local.tee $l3
          i32.const 129
          i32.ge_u
          br_if $B0
          local.get $p1
          i32.const 1051760
          i32.const 2
          local.get $l2
          local.get $p0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get $p0
          i32.sub
          call $f239
          local.set $p0
        end
        local.get $l2
        i32.const 128
        i32.add
        global.set $g0
        local.get $p0
        return
      end
      local.get $l3
      i32.const 128
      i32.const 1051744
      call $f242
      unreachable
    end
    local.get $l3
    i32.const 128
    i32.const 1051744
    call $f242
    unreachable)
  (func $f264 (type $t19)
    call $f108
    unreachable)
  (func $f265 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    block $B0
      local.get $p0
      i32.load offset=8
      local.tee $l2
      local.get $p0
      i32.load offset=4
      i32.ne
      br_if $B0
      local.get $p0
      i32.const 1
      call $f260
      local.get $p0
      i32.load offset=8
      local.set $l2
    end
    local.get $p0
    i32.load
    local.get $l2
    i32.add
    local.get $p1
    i32.store8
    local.get $p0
    local.get $p0
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8)
  (func $f266 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i64.extend_i32_u
    i32.const 32
    i32.const 0
    call $f51)
  (func $f267 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    local.set $l3
    local.get $p1
    i32.load offset=24
    local.set $l4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p0
    i32.load
    local.tee $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l4
    local.get $l3
    local.get $l2
    i32.const 8
    i32.add
    call $f77
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $f268 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    local.get $p1
    i32.const 0
    call $f111
    local.get $l2
    i64.load offset=8
    local.set $l3
    local.get $p0
    i32.const 0
    i32.store offset=8
    local.get $p0
    local.get $l3
    i64.store align=4
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $f269 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $f270
    unreachable)
  (func $f270 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $env.signalError
    unreachable)
  (func $f271 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p1
          call $env.bigIntUnsignedByteLength
          local.tee $l3
          i32.const 32
          i32.gt_u
          br_if $B2
          local.get $l2
          i32.const 32
          call $f40
          block $B3
            local.get $l3
            i32.eqz
            br_if $B3
            local.get $l2
            i32.load offset=8
            local.tee $l4
            i32.const 32
            local.get $l3
            i32.sub
            local.tee $l3
            i32.le_u
            br_if $B0
            local.get $p1
            local.get $l2
            i32.load
            local.get $l3
            i32.add
            call $env.bigIntGetUnsignedBytes
            drop
          end
          local.get $p0
          local.get $l2
          i64.load
          i64.store align=4
          local.get $p0
          i32.const 8
          i32.add
          local.get $l2
          i32.const 8
          i32.add
          i32.load
          i32.store
          br $B1
        end
        local.get $p0
        i32.const 0
        i32.store
      end
      local.get $l2
      i32.const 16
      i32.add
      global.set $g0
      return
    end
    local.get $l3
    local.get $l4
    i32.const 1055508
    call $f47
    unreachable)
  (func $f272 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.load
      br_if $B0
      i32.const 1055352
      i32.const 43
      local.get $p2
      call $f221
      unreachable
    end
    local.get $p0
    local.get $p1
    i64.load align=4
    i64.store align=4
    local.get $p0
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i32.load
    i32.store)
  (func $f273 (type $t2) (param $p0 i32)
    local.get $p0
    call $f90)
  (func $f274 (type $t2) (param $p0 i32)
    local.get $p0
    call $f275
    unreachable)
  (func $f275 (type $t2) (param $p0 i32)
    local.get $p0
    i32.const 54
    call $f270
    unreachable)
  (func $f276 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 1
    local.get $p1
    select
    local.set $p1
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const 3
      i32.add
      i32.const 2
      i32.shr_u
      local.set $p0
      block $B1
        local.get $p1
        i32.const 4
        i32.gt_u
        br_if $B1
        local.get $p0
        i32.const -1
        i32.add
        local.tee $l3
        i32.const 255
        i32.gt_u
        br_if $B1
        local.get $l2
        i32.const 1055788
        i32.store offset=4
        local.get $l2
        local.get $l3
        i32.const 2
        i32.shl
        i32.const 1055792
        i32.add
        local.tee $l3
        i32.load
        i32.store offset=12
        local.get $p0
        local.get $p1
        local.get $l2
        i32.const 12
        i32.add
        local.get $l2
        i32.const 4
        i32.add
        i32.const 1055764
        call $f279
        local.set $p1
        local.get $l3
        local.get $l2
        i32.load offset=12
        i32.store
        br $B0
      end
      local.get $l2
      i32.const 0
      i32.load offset=1055788
      i32.store offset=8
      local.get $p0
      local.get $p1
      local.get $l2
      i32.const 8
      i32.add
      i32.const 1054692
      i32.const 1055740
      call $f279
      local.set $p1
      i32.const 0
      local.get $l2
      i32.load offset=8
      i32.store offset=1055788
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $f277 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      local.get $p0
      i32.eqz
      br_if $B0
      local.get $l3
      local.get $p0
      i32.store offset=4
      local.get $p1
      i32.eqz
      br_if $B0
      block $B1
        local.get $p2
        i32.const 4
        i32.gt_u
        br_if $B1
        local.get $p1
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        i32.const -1
        i32.add
        local.tee $p0
        i32.const 255
        i32.gt_u
        br_if $B1
        local.get $l3
        i32.const 1055788
        i32.store offset=8
        local.get $l3
        local.get $p0
        i32.const 2
        i32.shl
        i32.const 1055792
        i32.add
        local.tee $p0
        i32.load
        i32.store offset=12
        local.get $l3
        i32.const 4
        i32.add
        local.get $l3
        i32.const 12
        i32.add
        local.get $l3
        i32.const 8
        i32.add
        i32.const 1055764
        call $f289
        local.get $p0
        local.get $l3
        i32.load offset=12
        i32.store
        br $B0
      end
      local.get $l3
      i32.const 0
      i32.load offset=1055788
      i32.store offset=12
      local.get $l3
      i32.const 4
      i32.add
      local.get $l3
      i32.const 12
      i32.add
      i32.const 1054692
      i32.const 1055740
      call $f289
      i32.const 0
      local.get $l3
      i32.load offset=12
      i32.store offset=1055788
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0)
  (func $f278 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    local.get $p1
    i32.load
    local.tee $p1
    i32.load
    i32.store offset=12
    local.get $p2
    i32.const 2
    i32.add
    local.tee $p2
    local.get $p2
    i32.mul
    local.tee $p2
    i32.const 2048
    local.get $p2
    i32.const 2048
    i32.gt_u
    select
    local.tee $l5
    i32.const 4
    local.get $l4
    i32.const 12
    i32.add
    i32.const 1054692
    i32.const 1055740
    call $f279
    local.set $p2
    local.get $p1
    local.get $l4
    i32.load offset=12
    i32.store
    block $B0
      block $B1
        local.get $p2
        br_if $B1
        i32.const 1
        local.set $p1
        br $B0
      end
      local.get $p2
      i64.const 0
      i64.store offset=4 align=4
      local.get $p2
      local.get $p2
      local.get $l5
      i32.const 2
      i32.shl
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
      local.set $p1
    end
    local.get $p0
    local.get $p2
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store
    local.get $l4
    i32.const 16
    i32.add
    global.set $g0)
  (func $f279 (type $t22) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l5
    global.set $g0
    block $B0
      local.get $p0
      local.get $p1
      local.get $p2
      local.get $p3
      local.get $p4
      call $f280
      local.tee $l6
      br_if $B0
      local.get $l5
      i32.const 8
      i32.add
      local.get $p3
      local.get $p0
      local.get $p1
      local.get $p4
      i32.load offset=12
      call_indirect (type $t3) $T0
      i32.const 0
      local.set $l6
      local.get $l5
      i32.load offset=8
      br_if $B0
      local.get $l5
      i32.load offset=12
      local.tee $l6
      local.get $p2
      i32.load
      i32.store offset=8
      local.get $p2
      local.get $l6
      i32.store
      local.get $p0
      local.get $p1
      local.get $p2
      local.get $p3
      local.get $p4
      call $f280
      local.set $l6
    end
    local.get $l5
    i32.const 16
    i32.add
    global.set $g0
    local.get $l6)
  (func $f280 (type $t22) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    local.get $p1
    i32.const -1
    i32.add
    local.set $l5
    i32.const 0
    local.set $l6
    i32.const 0
    local.get $p1
    i32.sub
    local.set $l7
    local.get $p0
    i32.const 2
    i32.shl
    local.set $l8
    local.get $p2
    i32.load
    local.set $l9
    block $B0
      loop $L1
        local.get $l9
        i32.eqz
        br_if $B0
        local.get $l9
        local.set $p1
        block $B2
          loop $L3
            block $B4
              local.get $p1
              i32.load offset=8
              local.tee $l9
              i32.const 1
              i32.and
              br_if $B4
              local.get $p1
              i32.load
              i32.const -4
              i32.and
              local.tee $l10
              local.get $p1
              i32.const 8
              i32.add
              local.tee $l11
              i32.sub
              local.get $l8
              i32.lt_u
              br_if $B2
              block $B5
                block $B6
                  local.get $l11
                  local.get $p3
                  local.get $p0
                  local.get $p4
                  i32.load offset=16
                  call_indirect (type $t1) $T0
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.const 8
                  i32.add
                  local.get $l10
                  local.get $l8
                  i32.sub
                  local.get $l7
                  i32.and
                  local.tee $l9
                  i32.le_u
                  br_if $B6
                  local.get $l11
                  i32.load
                  local.set $l9
                  local.get $l5
                  local.get $l11
                  i32.and
                  br_if $B2
                  local.get $p2
                  local.get $l9
                  i32.const -4
                  i32.and
                  i32.store
                  local.get $p1
                  local.set $l9
                  br $B5
                end
                local.get $l9
                i32.const 0
                i32.store
                local.get $l9
                i32.const -8
                i32.add
                local.tee $l9
                i64.const 0
                i64.store align=4
                local.get $l9
                local.get $p1
                i32.load
                i32.const -4
                i32.and
                i32.store
                block $B7
                  local.get $p1
                  i32.load
                  local.tee $l11
                  i32.const -4
                  i32.and
                  local.tee $p2
                  i32.eqz
                  br_if $B7
                  local.get $l11
                  i32.const 2
                  i32.and
                  br_if $B7
                  local.get $p2
                  local.get $p2
                  i32.load offset=4
                  i32.const 3
                  i32.and
                  local.get $l9
                  i32.or
                  i32.store offset=4
                end
                local.get $l9
                local.get $l9
                i32.load offset=4
                i32.const 3
                i32.and
                local.get $p1
                i32.or
                i32.store offset=4
                local.get $p1
                local.get $p1
                i32.load offset=8
                i32.const -2
                i32.and
                i32.store offset=8
                local.get $p1
                local.get $p1
                i32.load
                local.tee $p2
                i32.const 3
                i32.and
                local.get $l9
                i32.or
                local.tee $l11
                i32.store
                local.get $p2
                i32.const 2
                i32.and
                i32.eqz
                br_if $B5
                local.get $p1
                local.get $l11
                i32.const -3
                i32.and
                i32.store
                local.get $l9
                local.get $l9
                i32.load
                i32.const 2
                i32.or
                i32.store
              end
              local.get $l9
              local.get $l9
              i32.load
              i32.const 1
              i32.or
              i32.store
              local.get $l9
              i32.const 8
              i32.add
              local.set $l6
              br $B0
            end
            local.get $p1
            local.get $l9
            i32.const -2
            i32.and
            i32.store offset=8
            block $B8
              block $B9
                local.get $p1
                i32.load offset=4
                i32.const -4
                i32.and
                local.tee $l9
                br_if $B9
                i32.const 0
                local.set $l9
                br $B8
              end
              i32.const 0
              local.get $l9
              local.get $l9
              i32.load8_u
              i32.const 1
              i32.and
              select
              local.set $l9
            end
            local.get $p1
            call $f281
            block $B10
              local.get $p1
              i32.load8_u
              i32.const 2
              i32.and
              i32.eqz
              br_if $B10
              local.get $l9
              local.get $l9
              i32.load
              i32.const 2
              i32.or
              i32.store
            end
            local.get $p2
            local.get $l9
            i32.store
            local.get $l9
            local.set $p1
            br $L3
          end
        end
        local.get $p2
        local.get $l9
        i32.store
        br $L1
      end
    end
    local.get $l6)
  (func $f281 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.const -4
      i32.and
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l1
      i32.const 2
      i32.and
      br_if $B0
      local.get $l2
      local.get $l2
      i32.load offset=4
      i32.const 3
      i32.and
      local.get $p0
      i32.load offset=4
      i32.const -4
      i32.and
      i32.or
      i32.store offset=4
    end
    block $B1
      local.get $p0
      i32.load offset=4
      local.tee $l2
      i32.const -4
      i32.and
      local.tee $l1
      i32.eqz
      br_if $B1
      local.get $l1
      local.get $l1
      i32.load
      i32.const 3
      i32.and
      local.get $p0
      i32.load
      i32.const -4
      i32.and
      i32.or
      i32.store
      local.get $p0
      i32.load offset=4
      local.set $l2
    end
    local.get $p0
    local.get $l2
    i32.const 3
    i32.and
    i32.store offset=4
    local.get $p0
    local.get $p0
    i32.load
    i32.const 3
    i32.and
    i32.store)
  (func $f282 (type $t2) (param $p0 i32))
  (func $f283 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    block $B0
      block $B1
        local.get $p2
        i32.const 2
        i32.shl
        local.tee $p2
        local.get $p3
        i32.const 3
        i32.shl
        i32.const 16384
        i32.add
        local.tee $p3
        local.get $p2
        local.get $p3
        i32.gt_u
        select
        i32.const 65543
        i32.add
        local.tee $l4
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee $p3
        i32.const -1
        i32.ne
        br_if $B1
        i32.const 1
        local.set $p2
        br $B0
      end
      local.get $p3
      i32.const 16
      i32.shl
      local.tee $p3
      i64.const 0
      i64.store
      i32.const 0
      local.set $p2
      local.get $p3
      i32.const 0
      i32.store offset=8
      local.get $p3
      local.get $p3
      local.get $l4
      i32.const -65536
      i32.and
      i32.add
      i32.const 2
      i32.or
      i32.store
    end
    local.get $p0
    local.get $p3
    i32.store offset=4
    local.get $p0
    local.get $p2
    i32.store)
  (func $f284 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 512)
  (func $f285 (type $t4) (param $p0 i32) (result i32)
    i32.const 1)
  (func $f286 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1)
  (func $f287 (type $t4) (param $p0 i32) (result i32)
    i32.const 0)
  (func $f288 (type $t2) (param $p0 i32))
  (func $f289 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    local.get $p0
    i32.load
    local.tee $l4
    i32.const 0
    i32.store
    local.get $l4
    i32.const -8
    i32.add
    local.tee $p0
    local.get $p0
    i32.load
    i32.const -2
    i32.and
    i32.store
    block $B0
      local.get $p2
      local.get $p3
      i32.load offset=20
      call_indirect (type $t4) $T0
      i32.eqz
      br_if $B0
      block $B1
        block $B2
          local.get $l4
          i32.const -4
          i32.add
          i32.load
          i32.const -4
          i32.and
          local.tee $p2
          i32.eqz
          br_if $B2
          local.get $p2
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if $B1
        end
        local.get $p0
        i32.load
        local.tee $p2
        i32.const -4
        i32.and
        local.tee $p3
        i32.eqz
        br_if $B0
        local.get $p2
        i32.const 2
        i32.and
        br_if $B0
        local.get $p3
        i32.load8_u
        i32.const 1
        i32.and
        br_if $B0
        local.get $l4
        local.get $p3
        i32.load offset=8
        i32.const -4
        i32.and
        i32.store
        local.get $p3
        local.get $p0
        i32.const 1
        i32.or
        i32.store offset=8
        return
      end
      local.get $p0
      call $f281
      block $B3
        local.get $p0
        i32.load8_u
        i32.const 2
        i32.and
        i32.eqz
        br_if $B3
        local.get $p2
        local.get $p2
        i32.load
        i32.const 2
        i32.or
        i32.store
      end
      return
    end
    local.get $l4
    local.get $p1
    i32.load
    i32.store
    local.get $p1
    local.get $p0
    i32.store)
  (func $f290 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      local.get $p0
      local.set $l3
      loop $L1
        local.get $l3
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $l3
        i32.const 1
        i32.add
        local.set $l3
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        br_if $L1
      end
    end
    local.get $p0)
  (func $f291 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    block $B0
      block $B1
        local.get $p1
        local.get $p0
        i32.lt_u
        br_if $B1
        local.get $p2
        i32.eqz
        br_if $B0
        local.get $p0
        local.set $l3
        loop $L2
          local.get $l3
          local.get $p1
          i32.load8_u
          i32.store8
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $l3
          i32.const 1
          i32.add
          local.set $l3
          local.get $p2
          i32.const -1
          i32.add
          local.tee $p2
          br_if $L2
          br $B0
        end
      end
      local.get $p2
      i32.eqz
      br_if $B0
      local.get $p1
      i32.const -1
      i32.add
      local.set $p1
      local.get $p0
      i32.const -1
      i32.add
      local.set $l3
      loop $L3
        local.get $l3
        local.get $p2
        i32.add
        local.get $p1
        local.get $p2
        i32.add
        i32.load8_u
        i32.store8
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        br_if $L3
      end
    end
    local.get $p0)
  (func $f292 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      local.get $p0
      local.set $l3
      loop $L1
        local.get $l3
        local.get $p1
        i32.store8
        local.get $l3
        i32.const 1
        i32.add
        local.set $l3
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        br_if $L1
      end
    end
    local.get $p0)
  (func $f293 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    i32.const 0
    local.set $l3
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      block $B1
        loop $L2
          local.get $p0
          i32.load8_u
          local.tee $l4
          local.get $p1
          i32.load8_u
          local.tee $l5
          i32.ne
          br_if $B1
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $p2
          i32.const -1
          i32.add
          local.tee $p2
          i32.eqz
          br_if $B0
          br $L2
        end
      end
      local.get $l4
      local.get $l5
      i32.sub
      local.set $l3
    end
    local.get $l3)
  (table $T0 44 44 funcref)
  (memory $memory 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end i32 (i32.const 1056816))
  (global $__heap_base i32 (i32.const 1056816))
  (export "memory" (memory 0))
  (export "version" (func $version))
  (export "init" (func $init))
  (export "getContractOwner" (func $getContractOwner))
  (export "getNodeRewardDestination" (func $getNodeRewardDestination))
  (export "getAuctionContractAddress" (func $getAuctionContractAddress))
  (export "getTimeBeforeForceUnstake" (func $getTimeBeforeForceUnstake))
  (export "getNodeShare" (func $getNodeShare))
  (export "getStakePerNode" (func $getStakePerNode))
  (export "setStakePerNode" (func $setStakePerNode))
  (export "getExpectedStake" (func $getExpectedStake))
  (export "getNrDelegators" (func $getNrDelegators))
  (export "getNumNodes" (func $getNumNodes))
  (export "setNumNodes" (func $setNumNodes))
  (export "getBlsKeys" (func $getBlsKeys))
  (export "getNumBlsKeys" (func $getNumBlsKeys))
  (export "setBlsKeys" (func $setBlsKeys))
  (export "stakeState" (func $stakeState))
  (export "getUserId" (func $getUserId))
  (export "getFilledStake" (func $getFilledStake))
  (export "getStake" (func $getStake))
  (export "stake" (func $stake))
  (export "stakeGenesis" (func $stakeGenesis))
  (export "unstake" (func $unstake))
  (export "activate" (func $activate))
  (export "activateGenesis" (func $activateGenesis))
  (export "deactivate" (func $deactivate))
  (export "forceUnstake" (func $forceUnstake))
  (export "unBond" (func $unBond))
  (export "getTotalCumulatedRewards" (func $getTotalCumulatedRewards))
  (export "_rewards_for_node" (func $_rewards_for_node))
  (export "computeAllRewards" (func $computeAllRewards))
  (export "getClaimableRewards" (func $getClaimableRewards))
  (export "claimRewards" (func $claimRewards))
  (export "getUnexpectedBalance" (func $getUnexpectedBalance))
  (export "withdrawUnexpectedBalance" (func $withdrawUnexpectedBalance))
  (export "offerStakeForSale" (func $offerStakeForSale))
  (export "getStakeForSale" (func $getStakeForSale))
  (export "purchaseStake" (func $purchaseStake))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem $e0 (i32.const 1) $f123 $f235 $f250 $f245 $f72 $f124 $f173 $f267 $f246 $f247 $f263 $f84 $f97 $f95 $f96 $f83 $f259 $f85 $f71 $f82 $f126 $f130 $f131 $f230 $f231 $f232 $f233 $f258 $f238 $f251 $f253 $f254 $f255 $f256 $f257 $f282 $f283 $f284 $f285 $f288 $f278 $f286 $f287)
  (data $d0 (i32.const 1048576) "\e4\17\10\00\00\00\00\00fmt err (): /home/andrei/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/address.rstx_hash_________________________\0c\00\00\00\04\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00/rustc/6470169237833d02c399568a375d9b47cbfaeccc/src/libcore/alloc/layout.rs\00\bc\00\10\00K\00\00\00\e7\00\00\00\09\00\00\00called `Result::unwrap()` on an `Err` value\00\10\00\00\00\00\00\00\00\01\00\00\00\11\00\00\00, expected invalid length \00\00_\01\10\00\0f\00\00\00T\01\10\00\0b\00\00\00\14\00\10\00p\00\00\00\87\00\00\00$\00\00\00BLSKeysrc/bls_key.rs\96\01\10\00\0e\00\00\00,\00\00\00\0d\00\00\00\12\00\00\00\00\00\00\00\01\00\00\00\13\00\00\00src/util.rs\00\c4\01\10\00\0b\00\00\00\14\00\00\00\09\00\00\00\c4\01\10\00\0b\00\00\00\16\00\00\00\09\00\00\00stakeauction_stake_callbackasync call serialization errorusizeunStakeauction_unStake_callbackunBondauction_unBond_callback0.2.1node share out of rangeonly owner can change stake per nodecannot change stake per node while activeonly owner can change the number of nodescannot change nr of nodes while activeonly owner can set BLS keyscannot change BLS keys while activecannot stake while contract is activegenesis block onlypayment exceeds unfilled total stakecannot unstake while contract is activeonly delegators can unstakecannot unstake more than was stakeddelegation unstakecannot activate with 0 staketoo much stake filledcannot activate before all stake has been filledonly owner can activatecontract already activewrong number of BLS keyswrong size BLS signaturecannot activate with no nodes\00\00\14\00\00\00 \00\00\00\01\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00only owner can deactivatecontract is not activeonly delegators can call forceUnstakeonly delegators that are trying to sell stake can call forceUnstaketoo soon to call forceUnstakecontract is not in unbond periodunknown callerdelegation claimonly owner can withdraw unexpected balanceunexpected balanceonly delegators can offer stake for salecannot offer more stake than is ownedunknown sellerpayment exceeds stake offeredpayment exceeds stake owned by userpayment for stakeownernode_rewards_addrauction_addrtime_before_force_unstakenode_sharestake_per_nodenum_usersnum_nodesbls_keysstorage deserialization errorVecstorage serialization errorstake_stateStakeStateuser_idkeyu_staku_unclu_lastu_saleu_toffsent_rewardsinactive_stakefilled_stakeevent serialization errordatasrc/lib.rs*\08\10\00\0a\00\00\008\00\00\00\01\00\00\00No callback function with that name exists in contract.result serialization errorargument deserialization error\000\00\00\00\00\00\00\00\15\00\00\00c\04\10\00\00\00\00\00N\04\10\00capacity overflow\00\00\00\f0\08\10\00\17\00\00\00n\02\00\00\05\00\00\00src/liballoc/raw_vec.rs\00\18\00\00\00\04\00\00\00\04\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00a formatting trait implementation returned an error\00\18\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00t\09\10\00\13\00\00\00J\02\00\00\05\00\00\00src/liballoc/fmt.rssrc/liballoc/vec.rs) should be < len (is )\00\00\00\dc\09\10\00\12\00\00\00\9a\09\10\00\16\00\00\00\b0\09\10\00\01\00\00\00\87\09\10\00\13\00\00\00!\04\00\00\0d\00\00\00removal index (is \00\00\00\0a\10\00 \00\00\00 \0a\10\00\12\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00\0c\0b\10\00\06\00\00\00\12\0b\10\00\22\00\00\00index  out of range for slice of length D\0b\10\00\16\00\00\00Z\0b\10\00\0d\00\00\00slice index starts at  but ends at \00\cb\15\10\00\16\00\00\00\04\08\00\00/\00\00\00[...]\00\00\00\e0\0b\10\00\0b\00\00\00\b5\15\10\00\16\00\00\00\1f\0c\10\00\01\00\00\00\93\15\10\00\0e\00\00\00\a1\15\10\00\04\00\00\00\a5\15\10\00\10\00\00\00\1f\0c\10\00\01\00\00\00\e0\0b\10\00\0b\00\00\00\eb\0b\10\00&\00\00\00\11\0c\10\00\08\00\00\00\19\0c\10\00\06\00\00\00\1f\0c\10\00\01\00\00\00byte index  is not a char boundary; it is inside  (bytes ) of ``^\0c\10\00\02\00\00\00H\0c\10\00\16\00\00\00V\04\00\00$\00\00\00H\0c\10\00\16\00\00\00L\04\00\00\11\00\00\00src/libcore/fmt/mod.rs..r\0c\10\00\16\00\00\00T\00\00\00\14\00\00\000xsrc/libcore/fmt/num.rs\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\10\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\03,\02-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\c0\c1\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5(\0b\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06!?L\04-\03t\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\b3-t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\ee\0d\03\84\8d\037\09\81\5c\14\80\b8\08\80\cb*8\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e8\02\ee \f0\04\f8\02\f9\02\fa\02\fb\01\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afy\ccno\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RN(\08*V\1c\14\17\09N\04\1e\0fC\0e\19\07\0a\06H\08'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\139\07\0a6,\04\10\80\c0<dS\0cH\09\0aFE\1bH\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\b7\01\0f2\0d\83\9bfu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\f7\81\1f1\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\80\d5-\03\1a\04\02\81p:\05\01\85\00\80\d7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\08\0d\03\0d\03t\0cY\07\0c\14\0c\048\08\0a\06(\08\22N\81T\0c\15\03\03\05\07\09\19\07\07\09\03\0d\07)\80\cb%\0a\84\06\00\f0\11\10\00 \00\00\00\0a\00\00\00\1c\00\00\00\f0\11\10\00 \00\00\00\1a\00\00\00(\00\00\00src/libcore/unicode/printable.rs\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17\a0\1e\0c \e0\1e\ef, +*0\a0+o\a6`,\02\a8\e0,\1e\fb\e0-\00\fe\a05\9e\ff\e05\fd\01a6\01\0a\a16$\0da7\ab\0e\e18/\18!90\1caF\f3\1e\a1J\f0jaNOo\a1N\9d\bc!Oe\d1\e1O\00\da!P\00\e0\e1Q0\e1aS\ec\e2\a1T\d0\e8\e1T \00.U\f0\01\bfUp\15\10\00#\00\00\00R\00\00\00>\00\00\00\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03w\0f\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\019\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\06J\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03w\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\11?\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6:\01\05\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02\99\0b\b0\016\0f8\031\04\02\02E\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\a0\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\00\05;\07\00\01?\04Q\01\00\02\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05\00\07\00\04\00\07m\07\00`\80\f0\00\00\00\00p\15\10\00#\00\00\00K\00\00\00(\00\00\00p\15\10\00#\00\00\00W\00\00\00\16\00\00\00src/libcore/unicode/unicode_data.rsbegin <= end ( <= ) when slicing ` is out of bounds of `src/libcore/str/mod.rs\00\00\00\e4\17\10\00\00\00\00\00\f4\15\10\00\02\00\00\00:     \00\00\1c\16\10\00\1a\00\00\00\8b\01\00\00&\00\00\00\cb\15\10\00\16\00\00\00\c3\07\00\00/\00\00\00src/libcore/str/pattern.rs\00\00H\16\10\00\1b\00\00\00R\00\00\00\05\00\00\00src/libcore/slice/memchr.rs {  {\0a\00\00\00\1d\00\00\00\0c\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00,\0a\00\00\1d\00\00\00\04\00\00\00\04\00\00\00!\00\00\00\22\00\00\00#\00\00\00 }}()ErrorLayoutErrprivateELRONDrewardattempted to transfer funds via a non-payable functionwrong number of argumentswrong number of arguments returned by async calltoo many callback arguments providedargument out of rangeargument has wrong length: 32 bytes expectedcannot subtract because result would be negative\00\00\91\18\10\004\00\00\00U\18\10\00-\00\00\00\82\18\10\00\0c\00\00\00\8e\18\10\00\03\00\00\00\0c\18\10\00I\00\00\00\10\00\00\00\09\00\00\00/rustc/6470169237833d02c399568a375d9b47cbfaeccc/src/libcore/macros/mod.rsassertion failed: `(left == right)`\0a  left: ``,\0a right: ``: destination and source slices have different lengths\00\00\00\e8\18\10\00x\00\00\00P\00\00\00\1e\00\00\00\e8\18\10\00x\00\00\00W\00\00\00\1e\00\00\00/home/andrei/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/call_data/cd_de.rs/home/andrei/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/serializer/bytes_de.rs`\19\10\00|\00\00\00R\00\00\00\1b\00\00\00`\19\10\00|\00\00\00S\00\00\00\1b\00\00\00invalid valueinput too longinput too shortsequence length requirednot yet implementedunsupported operation\00\00\a3\1a\10\00q\00\00\00\cb\00\00\00\1e\00\00\00called `Option::unwrap()` on a `None` value/home/andrei/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-node-0.4.4/src/ext.rs$\1b\10\00v\00\00\00<\01\00\00:\00\00\00/home/andrei/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-node-0.4.4/src/big_uint.rs\00\00\a3\1a\10\00q\00\00\00\d7\00\00\00\1e\00\00\00\a3\1a\10\00q\00\00\00\82\01\00\00\0d\00\00\00allocation errorunknown panic occurred\00\00\ec\1b\10\00\10\00\00\00panic occurred: $\00\00\00\00\00\00\00\01\00\00\00%\00\00\00&\00\00\00'\00\00\00(\00\00\00\04\00\00\00\04\00\00\00)\00\00\00*\00\00\00+\00\00\00")
  (data $d1 (i32.const 1055788) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
