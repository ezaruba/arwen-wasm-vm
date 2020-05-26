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
    call $f86)
  (func $f38 (type $t6) (param $p0 i32) (param $p1 i32)
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
    call $f39
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
        call $f40
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
  (func $f39 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.load8_u offset=12
      br_if $B0
      local.get $p1
      local.get $p2
      call $f246
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
  (func $f40 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p2
    local.get $p1
    call $f108)
  (func $f41 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
          call $f40
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
      call $f42
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
  (func $f42 (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i64)
    local.get $p1
    local.get $p2
    i32.const 64
    local.get $p1
    i32.load8_u offset=12
    call $f51
    local.get $p0
    i32.const 7
    i32.store)
  (func $f43 (type $t6) (param $p0 i32) (param $p1 i32)
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
          i32.const 1050450
          i32.add
          i32.load8_u
          local.get $l2
          i32.const 8
          i32.add
          call $f40
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
            call $f44
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
              call $f40
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
          i32.const 1048844
          call $f45
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
  (func $f44 (type $t6) (param $p0 i32) (param $p1 i32)
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
  (func $f45 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    i32.const 1050916
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
    call $f228
    unreachable)
  (func $f46 (type $t2) (param $p0 i32)
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
  (func $f47 (type $t6) (param $p0 i32) (param $p1 i32)
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
    call $f48
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
    call $f49
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
  (func $f48 (type $t6) (param $p0 i32) (param $p1 i32)
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
    call $f107
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
  (func $f49 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p1
    local.get $p2
    i32.add
    call $f121)
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
          call $f245
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
    call $f49
    local.get $l5
    i32.const 16
    i32.add
    i32.const 1048591
    i32.const 2
    call $f49
    local.get $l5
    i32.const 16
    i32.add
    local.get $p2
    local.get $p3
    call $f49
    local.get $l5
    i32.const 16
    i32.add
    i32.const 1048593
    i32.const 3
    call $f49
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
    call $f49
    local.get $l5
    i32.load offset=16
    local.get $l5
    i32.load offset=24
    call $f53
    unreachable)
  (func $f55 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    i32.const 1052401
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
              i32.const 1052382
              local.set $l2
              i32.const 19
              local.set $l3
              br $B0
            end
            i32.const 1052358
            local.set $l2
            i32.const 24
            local.set $l3
            br $B0
          end
          i32.const 1052343
          local.set $l2
          i32.const 15
          local.set $l3
          br $B0
        end
        i32.const 1052329
        local.set $l2
        i32.const 14
        local.set $l3
        br $B0
      end
      i32.const 1052316
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
    i32.const 1051586
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
    call $f248
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
    i32.const 1051477
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
      i32.const 1051607
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
    i32.const 1051651
    i32.const 48
    call $f249
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
    i32.const 1048860
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
    i32.const 1048748
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
                i32.const 1051308
                call $f45
                unreachable
              end
              local.get $l8
              local.get $l10
              i32.const 1051292
              call $f45
              unreachable
            end
            local.get $l8
            local.get $l10
            i32.const 1051292
            call $f45
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
  (func $f79 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $p1
      local.get $p2
      call $f110
    end)
  (func $f80 (type $t2) (param $p0 i32)
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
  (func $f82 (type $t2) (param $p0 i32)
    (local $l1 i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    call $f83
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
  (func $f83 (type $t6) (param $p0 i32) (param $p1 i32)
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
  (func $f84 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    i32.load
    call_indirect (type $t2) $T0
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.load offset=4
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      local.get $l2
      local.get $l1
      i32.load offset=8
      call $f79
    end)
  (func $f85 (type $t2) (param $p0 i32)
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
  (func $f86 (type $t2) (param $p0 i32)
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
      call $f242
    end)
  (func $f87 (type $t2) (param $p0 i32))
  (func $f88 (type $t2) (param $p0 i32))
  (func $f89 (type $t2) (param $p0 i32))
  (func $f90 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
    call $f49
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    i32.const 0)
  (func $f91 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
  (func $f92 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p2
    call $f49
    i32.const 0)
  (func $f93 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p1
          i64.extend_i32_u
          i64.const 96
          i64.mul
          local.tee $l3
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          br_if $B2
          local.get $l3
          i32.wrap_i64
          local.tee $l4
          i32.const -1
          i32.le_s
          br_if $B1
          block $B3
            block $B4
              local.get $l4
              br_if $B4
              i32.const 1
              local.set $l4
              br $B3
            end
            local.get $l2
            i32.const 8
            i32.add
            local.get $l4
            i32.const 1
            call $f94
            local.get $l2
            i32.load offset=8
            local.tee $l4
            i32.eqz
            br_if $B0
            local.get $l2
            i32.load offset=12
            i32.const 96
            i32.div_u
            local.set $p1
          end
          local.get $p0
          i32.const 0
          i32.store offset=8
          local.get $p0
          local.get $p1
          i32.store offset=4
          local.get $p0
          local.get $l4
          i32.store
          local.get $l2
          i32.const 16
          i32.add
          global.set $g0
          return
        end
        call $f95
        unreachable
      end
      call $f96
      unreachable
    end
    call $f97
    unreachable)
  (func $f94 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.eqz
      br_if $B0
      local.get $p1
      local.get $p2
      call $f109
      local.set $p2
    end
    local.get $p0
    local.get $p1
    i32.store offset=4
    local.get $p0
    local.get $p2
    i32.store)
  (func $f95 (type $t19)
    call $f104
    unreachable)
  (func $f96 (type $t19)
    call $f104
    unreachable)
  (func $f97 (type $t19)
    call $f221
    unreachable)
  (func $f98 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p1
          i64.extend_i32_u
          i64.const 12
          i64.mul
          local.tee $l3
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          br_if $B2
          local.get $l3
          i32.wrap_i64
          local.tee $l4
          i32.const -1
          i32.le_s
          br_if $B1
          block $B3
            block $B4
              local.get $l4
              br_if $B4
              i32.const 4
              local.set $l4
              br $B3
            end
            local.get $l2
            i32.const 8
            i32.add
            local.get $l4
            i32.const 4
            call $f94
            local.get $l2
            i32.load offset=8
            local.tee $l4
            i32.eqz
            br_if $B0
            local.get $l2
            i32.load offset=12
            i32.const 12
            i32.div_u
            local.set $p1
          end
          local.get $p0
          i32.const 0
          i32.store offset=8
          local.get $p0
          local.get $p1
          i32.store offset=4
          local.get $p0
          local.get $l4
          i32.store
          local.get $l2
          i32.const 16
          i32.add
          global.set $g0
          return
        end
        call $f99
        unreachable
      end
      call $f100
      unreachable
    end
    call $f97
    unreachable)
  (func $f99 (type $t19)
    call $f104
    unreachable)
  (func $f100 (type $t19)
    call $f104
    unreachable)
  (func $f101 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i32)
    global.get $g0
    i32.const 16
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
          block $B4
            block $B5
              local.get $l3
              i32.const 1
              i32.add
              local.tee $l4
              local.get $l3
              i32.lt_u
              br_if $B5
              local.get $l3
              i32.const 1
              i32.shl
              local.tee $l5
              local.get $l4
              local.get $l5
              local.get $l4
              i32.gt_u
              select
              i64.extend_i32_u
              i64.const 96
              i64.mul
              local.tee $l6
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.tee $l5
              br_if $B5
              i32.const 0
              local.set $l7
              local.get $l6
              i32.wrap_i64
              local.tee $l4
              i32.const 0
              i32.lt_s
              br_if $B4
              block $B6
                block $B7
                  local.get $l3
                  br_if $B7
                  local.get $l2
                  local.get $l4
                  local.get $l5
                  i32.eqz
                  call $f94
                  local.get $l2
                  i32.load offset=4
                  local.set $l3
                  local.get $l2
                  i32.load
                  local.set $l4
                  br $B6
                end
                local.get $l2
                i32.const 8
                i32.add
                local.get $p0
                i32.load
                local.get $l3
                i32.const 96
                i32.mul
                i32.const 1
                local.get $l4
                call $f102
                local.get $l2
                i32.load offset=12
                local.set $l3
                local.get $l2
                i32.load offset=8
                local.set $l4
              end
              local.get $l4
              i32.eqz
              br_if $B3
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
            i32.const 0
            local.set $l7
          end
          local.get $l7
          i32.eqz
          br_if $B2
          i32.const 1051933
          i32.const 40
          i32.const 1051976
          call $f103
          unreachable
        end
        call $f97
        unreachable
      end
      call $f104
      unreachable
    end
    local.get $l4
    local.get $l3
    i32.const 96
    i32.mul
    i32.add
    local.get $p1
    i32.const 96
    call $f271
    drop
    local.get $p0
    local.get $p0
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $f102 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l5
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p2
          br_if $B2
          local.get $p4
          i32.eqz
          br_if $B1
          local.get $l5
          i32.const 8
          i32.add
          local.get $p4
          local.get $p3
          call $f94
          local.get $l5
          i32.load offset=12
          local.set $p4
          local.get $l5
          i32.load offset=8
          local.set $p3
          br $B0
        end
        block $B3
          local.get $p4
          i32.eqz
          br_if $B3
          local.get $p1
          local.get $p2
          local.get $p3
          local.get $p4
          call $f111
          local.set $p3
          br $B0
        end
        local.get $p1
        local.get $p2
        local.get $p3
        call $f79
      end
      i32.const 0
      local.set $p4
    end
    local.get $p0
    local.get $p4
    i32.store offset=4
    local.get $p0
    local.get $p3
    i32.store
    local.get $l5
    i32.const 16
    i32.add
    global.set $g0)
  (func $f103 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    i32.const 1051708
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
    call $f228
    unreachable)
  (func $f104 (type $t19)
    i32.const 1050712
    i32.const 17
    i32.const 1050732
    call $f103
    unreachable)
  (func $f105 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p0
              i32.load offset=4
              local.tee $l3
              local.get $p0
              i32.load offset=8
              local.tee $l4
              i32.sub
              local.get $p1
              i32.ge_u
              br_if $B4
              local.get $l4
              local.get $p1
              i32.add
              local.tee $p1
              local.get $l4
              i32.lt_u
              br_if $B3
              local.get $l3
              i32.const 1
              i32.shl
              local.tee $l4
              local.get $p1
              local.get $l4
              local.get $p1
              i32.gt_u
              select
              i64.extend_i32_u
              i64.const 12
              i64.mul
              local.tee $l5
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.tee $l4
              br_if $B3
              i32.const 0
              local.set $l6
              local.get $l5
              i32.wrap_i64
              local.tee $p1
              i32.const 0
              i32.lt_s
              br_if $B2
              block $B5
                block $B6
                  local.get $l3
                  br_if $B6
                  local.get $l2
                  local.get $p1
                  local.get $l4
                  i32.eqz
                  i32.const 2
                  i32.shl
                  call $f94
                  local.get $l2
                  i32.load offset=4
                  local.set $l3
                  local.get $l2
                  i32.load
                  local.set $p1
                  br $B5
                end
                local.get $l2
                i32.const 8
                i32.add
                local.get $p0
                i32.load
                local.get $l3
                i32.const 12
                i32.mul
                i32.const 4
                local.get $p1
                call $f102
                local.get $l2
                i32.load offset=12
                local.set $l3
                local.get $l2
                i32.load offset=8
                local.set $p1
              end
              local.get $p1
              i32.eqz
              br_if $B1
              local.get $p0
              local.get $p1
              i32.store
              local.get $p0
              local.get $l3
              i32.const 12
              i32.div_u
              i32.store offset=4
            end
            local.get $l2
            i32.const 16
            i32.add
            global.set $g0
            return
          end
          i32.const 0
          local.set $l6
        end
        local.get $l6
        i32.eqz
        br_if $B0
        i32.const 1051933
        i32.const 40
        i32.const 1051976
        call $f103
        unreachable
      end
      call $f97
      unreachable
    end
    call $f104
    unreachable)
  (func $f106 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    call $f107
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
    call $f49
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
  (func $f107 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
        block $B2
          block $B3
            local.get $p1
            br_if $B3
            i32.const 0
            local.set $p1
            i32.const 1
            local.set $p2
            br $B2
          end
          block $B4
            block $B5
              local.get $p2
              br_if $B5
              local.get $l3
              i32.const 8
              i32.add
              local.get $p1
              call $f241
              local.get $l3
              i32.load offset=12
              local.set $p1
              local.get $l3
              i32.load offset=8
              local.set $p2
              br $B4
            end
            local.get $p1
            call $f219
            local.set $p2
          end
          local.get $p2
          i32.eqz
          br_if $B0
        end
        local.get $p0
        local.get $p1
        i32.store offset=4
        local.get $p0
        local.get $p2
        i32.store
        local.get $l3
        i32.const 16
        i32.add
        global.set $g0
        return
      end
      call $f244
      unreachable
    end
    call $f97
    unreachable)
  (func $f108 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
  (func $f109 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $f216)
  (func $f110 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $f217)
  (func $f111 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p0
    local.get $p1
    local.get $p2
    local.get $p3
    call $f218)
  (func $f112 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
    call $f273
    i32.const 0
    i32.ne)
  (func $f113 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
      call $f45
      unreachable
    end
    local.get $p0
    i32.load
    local.get $p1
    i32.const 12
    i32.mul
    i32.add)
  (func $f114 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p0
    local.get $p1
    call $env.bigIntAdd)
  (func $f115 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p0
    local.get $p1
    call $f63)
  (func $f116 (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i64.const 0
    call $env.bigIntNew
    call $env.bigIntCmp
    i32.eqz)
  (func $f117 (type $t6) (param $p0 i32) (param $p1 i32)
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
    call $f270
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
          call $f44
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
            call $f271
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
                  call $f118
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
                    call $f80
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
                i32.const 1051708
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
            i32.const 1048896
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
            i32.const 3
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
            i32.const 1048828
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
            i32.const 4
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
              call $f121
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
            call $f85
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
            call $f85
            br $L2
          end
        end
        local.get $l9
        i32.const 96
        i32.const 1048880
        call $f45
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
  (func $f118 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
      i32.const 1052284
      call $f215
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
      i32.const 1052300
      call $f215
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
  (func $f119 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64) (local $l6 i32) (local $l7 i32)
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
        i64.load32_u
        local.tee $l4
        i64.const 10000
        i64.ge_u
        br_if $B1
        local.get $l4
        local.set $l5
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
        local.tee $p0
        i32.const -4
        i32.add
        local.get $l4
        local.get $l4
        i64.const 10000
        i64.div_u
        local.tee $l5
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
        i32.const 1050982
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $p0
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
        i32.const 1050982
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l3
        i32.const -4
        i32.add
        local.set $l3
        local.get $l4
        i64.const 99999999
        i64.gt_u
        local.set $p0
        local.get $l5
        local.set $l4
        local.get $p0
        br_if $L2
      end
    end
    block $B3
      local.get $l5
      i32.wrap_i64
      local.tee $p0
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
      local.get $l5
      i32.wrap_i64
      local.tee $l6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee $p0
      i32.const -100
      i32.mul
      local.get $l6
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1050982
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block $B4
      block $B5
        local.get $p0
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
        local.get $p0
        i32.const 1
        i32.shl
        i32.const 1050982
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
      local.get $p0
      i32.const 48
      i32.add
      i32.store8
    end
    local.get $p1
    i32.const 1051708
    i32.const 0
    local.get $l2
    i32.const 9
    i32.add
    local.get $l3
    i32.add
    i32.const 39
    local.get $l3
    i32.sub
    call $f229
    local.set $l3
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0
    local.get $l3)
  (func $f120 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
  (func $f121 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    local.get $p0
    local.get $p2
    local.get $p1
    i32.sub
    local.tee $p2
    call $f239
    local.get $p0
    local.get $p0
    i32.load offset=8
    local.tee $l3
    local.get $p2
    i32.add
    i32.store offset=8
    local.get $l3
    local.get $p0
    i32.load
    i32.add
    local.get $p2
    local.get $p1
    local.get $p2
    call $f240)
  (func $f122 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i64)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 1048956
    i32.const 5
    call $f123
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1048961
    i32.const 22
    call $f123
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
    call $f42
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
          call $f124
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
            call $f124
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
        i32.const 1048983
        i32.const 30
        i32.const 1049013
        i32.const 5
        local.get $l4
        i32.const 48
        i32.add
        call $f54
        unreachable
      end
      i32.const 1051502
      i32.const 48
      call $f52
      unreachable
    end
    local.get $l4
    i32.const 72
    i32.add
    i32.const 0
    i64.load offset=1048740 align=1
    i64.store
    local.get $l4
    i32.const 64
    i32.add
    i32.const 0
    i64.load offset=1048732 align=1
    i64.store
    local.get $l4
    i32.const 56
    i32.add
    i32.const 0
    i64.load offset=1048724 align=1
    i64.store
    local.get $l4
    i32.const 0
    i64.load offset=1048716 align=1
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
    call $f125
    local.get $l4
    i32.const 16
    i32.add
    call $f37
    local.get $l4
    call $f37
    local.get $p2
    call $f82
    local.get $l4
    i32.const 96
    i32.add
    global.set $g0)
  (func $f123 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    call $f107
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
    call $f49
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
  (func $f124 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    local.get $p0
    local.get $p2
    i32.const 1
    i32.shl
    i32.const 1
    i32.or
    call $f239
    local.get $p0
    i32.const 64
    call $f245
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
      call $f245
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
      call $f245
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
  (func $f125 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
    call $f251
    local.get $l4
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1052748
    call $f252
    local.get $p0
    local.get $l4
    i32.load
    local.get $p2
    local.get $p3
    call $env.asyncCall
    local.get $l4
    call $f253
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $f126 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l2
    global.set $g0
    call $f33
    local.set $l3
    local.get $l2
    i32.const 1049018
    i32.const 7
    call $f123
    local.get $l2
    i32.const 16
    i32.add
    i32.const 1049025
    i32.const 24
    call $f123
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
          call $f124
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
      i64.load offset=1048740 align=1
      i64.store
      local.get $l2
      i32.const 64
      i32.add
      i32.const 0
      i64.load offset=1048732 align=1
      i64.store
      local.get $l2
      i32.const 56
      i32.add
      i32.const 0
      i64.load offset=1048724 align=1
      i64.store
      local.get $l2
      i32.const 0
      i64.load offset=1048716 align=1
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
      call $f125
      local.get $l2
      i32.const 16
      i32.add
      call $f37
      local.get $l2
      call $f37
      local.get $p1
      call $f78
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
    i32.const 1048983
    i32.const 30
    i32.const 1048860
    i32.const 6
    local.get $l2
    i32.const 32
    i32.add
    call $f54
    unreachable)
  (func $f127 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l2
    global.set $g0
    call $f33
    local.set $l3
    local.get $l2
    i32.const 1049049
    i32.const 6
    call $f123
    local.get $l2
    i32.const 16
    i32.add
    i32.const 1049055
    i32.const 23
    call $f123
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
          call $f124
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
      i64.load offset=1048740 align=1
      i64.store
      local.get $l2
      i32.const 64
      i32.add
      i32.const 0
      i64.load offset=1048732 align=1
      i64.store
      local.get $l2
      i32.const 56
      i32.add
      i32.const 0
      i64.load offset=1048724 align=1
      i64.store
      local.get $l2
      i32.const 0
      i64.load offset=1048716 align=1
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
      call $f125
      local.get $l2
      i32.const 16
      i32.add
      call $f37
      local.get $l2
      call $f37
      local.get $p1
      call $f78
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
    i32.const 1048983
    i32.const 30
    i32.const 1048860
    i32.const 6
    local.get $l2
    i32.const 32
    i32.add
    call $f54
    unreachable)
  (func $f128 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    call $f129
    local.set $l0
    call $f130
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
  (func $f129 (type $t7) (result i32)
    i32.const 1050323
    i32.const 14
    call $f68)
  (func $f130 (type $t7) (result i32)
    i32.const 1050346
    i32.const 9
    call $env.int64storageLoad
    i32.wrap_i64)
  (func $f131 (type $t7) (result i32)
    (local $l0 i32)
    call $f132
    i32.const 1
    i32.add
    local.tee $l0
    call $f133
    local.get $l0)
  (func $f132 (type $t7) (result i32)
    i32.const 1050337
    i32.const 9
    call $env.int64storageLoad
    i32.wrap_i64)
  (func $f133 (type $t2) (param $p0 i32)
    i32.const 1050337
    i32.const 9
    local.get $p0
    i64.extend_i32_u
    call $env.int64storageStore
    drop)
  (func $f134 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    local.get $l0
    call $f135
    local.get $l0
    i32.load offset=8
    local.set $l1
    local.get $l0
    call $f78
    local.get $l0
    i32.const 16
    i32.add
    global.set $g0
    local.get $l1)
  (func $f135 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64) (local $l8 i32) (local $l9 i32)
    global.get $g0
    i32.const 256
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050355
    i32.const 8
    call $f164
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
    call $f93
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
            call $f117
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
              call $f78
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
            call $f271
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
            call $f271
            drop
            local.get $l1
            i32.const 56
            i32.add
            local.get $l1
            i32.const 152
            i32.add
            call $f101
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
        call $f78
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
      i32.const 1050363
      i32.const 29
      i32.const 1050392
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
  (func $f136 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050465
    local.get $p1
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
    call $f137
    local.set $l4
    local.get $p0
    local.get $p1
    call $f138
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
  (func $f137 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050459
    local.get $p0
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f138 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050453
    local.get $p0
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f139 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 8
    i32.add
    i32.const 1050465
    local.get $p0
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
    call $f140
    local.get $p0
    local.get $p3
    call $f141
    local.get $l4
    i32.const 48
    i32.add
    global.set $g0)
  (func $f140 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050459
    local.get $p0
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f141 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050453
    local.get $p0
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f142 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    global.get $g0
    i32.const 160
    i32.sub
    local.tee $l1
    global.set $g0
    call $f143
    local.tee $l2
    local.get $p0
    call $f61
    i32.const 1049379
    local.set $l3
    block $B0
      block $B1
        local.get $l2
        call $f128
        call $f75
        br_if $B1
        local.get $l2
        call $f144
        local.get $l1
        call $f145
        block $B2
          local.get $l1
          call $f146
          local.tee $l2
          br_if $B2
          local.get $l1
          call $f131
          local.tee $l2
          call $f147
        end
        local.get $l1
        i32.const 32
        i32.add
        local.get $l2
        call $f136
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
        call $f139
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
        call $f47
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
        call $f148
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
    i32.const 1050521
    i32.const 25
    i32.const 1050546
    i32.const 4
    local.get $l1
    i32.const 144
    i32.add
    call $f54
    unreachable)
  (func $f143 (type $t7) (result i32)
    i32.const 1050509
    i32.const 12
    call $f68)
  (func $f144 (type $t2) (param $p0 i32)
    i32.const 1050509
    i32.const 12
    local.get $p0
    call $f69)
  (func $f145 (type $t2) (param $p0 i32)
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
  (func $f146 (type $t4) (param $p0 i32) (result i32)
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
    call $f43
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f147 (type $t6) (param $p0 i32) (param $p1 i32)
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
    call $f43
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f148 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
    call $f270
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
          call $f240
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
    i32.const 1052764
    call $f232
    unreachable)
  (func $f149 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      block $B1
        call $f128
        local.tee $l1
        call $f116
        i32.eqz
        br_if $B1
        i32.const 1049534
        local.set $l1
        i32.const 28
        local.set $l2
        br $B0
      end
      call $f143
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
      i32.const 1050700
      i32.add
      i32.load
      local.set $l1
      local.get $l2
      i32.const 1050688
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
  (func $f150 (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    i32.const 3
    call $f151
    local.get $l0
    i32.const 8
    i32.add
    call $f152
    local.get $l0
    i32.const 8
    i32.add
    call $f153
    local.set $l1
    local.get $l0
    i32.const 1049756
    i32.store offset=44
    local.get $l0
    local.get $l1
    i32.store offset=40
    local.get $l0
    i32.const 48
    i32.add
    call $f135
    local.get $l1
    local.get $l0
    i32.const 48
    i32.add
    call $f126
    local.get $l0
    i32.const 40
    i32.add
    call $f84
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $f151 (type $t2) (param $p0 i32)
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
    call $f108
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
      i32.const 1050395
      i32.const 27
      i32.const 1050433
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
    i32.const 1050422
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
  (func $f152 (type $t2) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1050276
    i32.const 12
    call $f164
    local.get $p0
    local.get $l1
    i32.load
    local.get $l1
    i32.load offset=8
    call $f165
    local.get $l1
    call $f37
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $f153 (type $t4) (param $p0 i32) (result i32)
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
    call $f94
    block $B0
      local.get $l1
      i32.load offset=8
      local.tee $p0
      br_if $B0
      call $f97
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
  (func $f154 (type $t7) (result i32)
    i32.const 1051411
    i32.const 12
    call $f68)
  (func $f155 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    call $f156
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
  (func $f156 (type $t7) (result i32)
    i32.const 1050313
    i32.const 10
    call $f68)
  (func $f157 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    call $f136
    call $f154
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
        call $f116
        br_if $B1
        local.get $l4
        call $f155
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
          call $f158
          local.tee $l4
          local.get $l4
          local.get $p1
          call $env.bigIntMul
          local.get $l4
          local.get $l4
          call $f143
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
  (func $f158 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    i64.const 0
    call $env.bigIntNew
    local.tee $l2
    local.get $p0
    local.get $p1
    call $f63
    local.get $l2)
  (func $f159 (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l0
    global.set $g0
    call $f132
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
      call $f44
      block $B1
        local.get $l0
        i32.load
        br_if $B1
        block $B2
          call $f154
          local.get $l2
          call $f158
          call $f160
          call $f158
          local.tee $l1
          i64.const 0
          call $f73
          i32.eqz
          br_if $B2
          i32.const 1
          call $f137
          local.tee $l3
          local.get $l1
          call $f61
          i32.const 1
          local.get $l3
          call $f140
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
      call $f157
      local.get $l1
      local.get $l0
      i32.load offset=16
      local.get $l0
      i32.load offset=20
      local.tee $l3
      local.get $l0
      i32.load offset=24
      call $f139
      local.get $l2
      local.get $l3
      call $f114
      br $L0
    end)
  (func $f160 (type $t7) (result i32)
    i32.const 1050483
    i32.const 12
    call $f68)
  (func $f161 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f162
    local.tee $l1
    call $f154
    call $f114
    local.get $l1
    call $f160
    call $f115
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
    call $f158
    local.set $l1
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0
    local.get $l1)
  (func $f162 (type $t7) (result i32)
    i32.const 1050495
    i32.const 14
    call $f68)
  (func $f163 (type $t2) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 1050254
    i32.const 5
    call $f164
    local.get $p0
    local.get $l1
    i32.load
    local.get $l1
    i32.load offset=8
    call $f165
    local.get $l1
    call $f37
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0)
  (func $f164 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    call $f248
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
  (func $f165 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
  (func $f166 (type $t13) (result i64)
    i32.const 1050288
    i32.const 25
    call $env.int64storageLoad)
  (func $f167 (type $t2) (param $p0 i32)
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
    call $f39
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
      i32.const 1050355
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
      call $f78
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
    i32.const 1050395
    i32.const 27
    i32.const 1050392
    i32.const 3
    local.get $l1
    i32.const 56
    i32.add
    call $f54
    unreachable)
  (func $f168 (type $t7) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i64)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l0
    global.set $g0
    local.get $l0
    i32.const 8
    i32.add
    i32.const 1050422
    i32.const 11
    call $f164
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
      i32.const 1052316
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
      i32.const 5
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
        call $f121
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
      i32.const 1050363
      i32.const 29
      i32.const 1050433
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
  (func $f169 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    call $f234)
  (func $f170 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050471
    local.get $p0
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f171 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050471
    local.get $p0
    call $f41
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
      i32.const 1050395
      i32.const 27
      i32.const 1050450
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
  (func $f172 (type $t2) (param $p0 i32)
    i32.const 1050495
    i32.const 14
    local.get $p0
    call $f69)
  (func $f173 (type $t19)
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
    call $f46
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
      i32.const 1050521
      i32.const 25
      i32.const 1050546
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
    call $f148
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    i32.const 1049078
    i32.const 5
    call $f106
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
  (func $f175 (type $t19)
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
    i32.const 1051423
    call $f254
    unreachable)
  (func $init (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i64)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
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
      i32.const 1049083
      i32.const 23
      call $f53
      unreachable
    end
    i32.const 1050313
    i32.const 10
    local.get $l1
    call $env.bigIntStorageStoreUnsigned
    drop
    local.get $l0
    i32.const 32
    i32.add
    call $f145
    i32.const 1050254
    i32.const 5
    local.get $l0
    i32.const 32
    i32.add
    i32.const 32
    call $env.storageStore
    drop
    i32.const 1050259
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
    call $f147
    i32.const 1
    call $f133
    i32.const 1050276
    i32.const 12
    local.get $l0
    i32.const 32
    call $env.storageStore
    drop
    i32.const 1050288
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    call $f163
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    i32.const 32
    i32.add
    i32.const 1050259
    i32.const 17
    call $f164
    local.get $l0
    local.get $l0
    i32.load offset=32
    local.get $l0
    i32.load offset=40
    call $f165
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    call $f152
    local.get $l0
    call $f65
    local.get $l0
    i32.const 32
    i32.add
    global.set $g0)
  (func $getTimeBeforeForceUnstake (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f166
    call $f50)
  (func $getNodeShare (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f156
    call $env.bigIntFinishUnsigned)
  (func $getStakePerNode (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f129
    call $env.bigIntFinishUnsigned)
  (func $setStakePerNode (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
    i32.const 1
    call $f59
    call $f67
    local.set $l1
    local.get $l0
    call $f145
    local.get $l0
    i32.const 32
    i32.add
    call $f163
    block $B0
      block $B1
        block $B2
          local.get $l0
          local.get $l0
          i32.const 32
          i32.add
          call $f112
          i32.eqz
          br_if $B2
          i32.const 36
          local.set $l0
          i32.const 1049106
          local.set $l1
          br $B1
        end
        call $f168
        i32.const 255
        i32.and
        i32.eqz
        br_if $B0
        i32.const 41
        local.set $l0
        i32.const 1049142
        local.set $l1
      end
      local.get $l1
      local.get $l0
      call $f53
      unreachable
    end
    i32.const 1050323
    i32.const 14
    local.get $l1
    call $env.bigIntStorageStoreUnsigned
    drop
    local.get $l0
    i32.const 64
    i32.add
    global.set $g0)
  (func $getExpectedStake (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f128
    call $env.bigIntFinishUnsigned)
  (func $getNrDelegators (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f132
    i32.const -1
    i32.add
    i64.extend_i32_u
    call $f50)
  (func $getNumNodes (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f130
    i64.extend_i32_u
    call $f50)
  (func $setNumNodes (type $t19)
    (local $l0 i32) (local $l1 i64) (local $l2 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
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
      call $f145
      local.get $l0
      i32.const 32
      i32.add
      call $f163
      block $B1
        block $B2
          block $B3
            local.get $l0
            local.get $l0
            i32.const 32
            i32.add
            call $f112
            i32.eqz
            br_if $B3
            i32.const 1049183
            local.set $l0
            i32.const 41
            local.set $l2
            br $B2
          end
          call $f168
          i32.const 255
          i32.and
          i32.eqz
          br_if $B1
          i32.const 1049224
          local.set $l0
          i32.const 38
          local.set $l2
        end
        local.get $l0
        local.get $l2
        call $f53
        unreachable
      end
      i32.const 1050346
      i32.const 9
      local.get $l1
      i64.const 4294967295
      i64.and
      call $env.int64storageStore
      drop
      local.get $l0
      i32.const 0
      i32.store offset=40
      local.get $l0
      i64.const 1
      i64.store offset=32
      local.get $l0
      i32.const 32
      i32.add
      call $f167
      local.get $l0
      i32.const 64
      i32.add
      global.set $g0
      return
    end
    i32.const 1051586
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    i32.const 8
    i32.add
    call $f135
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
      call $f78
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
    i32.const 1050631
    i32.const 26
    i32.const 1048860
    i32.const 6
    local.get $l0
    i32.const 48
    i32.add
    call $f54
    unreachable)
  (func $getNumBlsKeys (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f134
    i64.extend_i32_u
    call $f50)
  (func $setBlsKeys (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 464
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
    call $env.getNumArguments
    local.set $l1
    local.get $l0
    i32.const 16
    i32.add
    call $f130
    call $f93
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
              call $f44
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
                call $f145
                local.get $l0
                i32.const 360
                i32.add
                call $f163
                local.get $l0
                i32.const 40
                i32.add
                local.get $l0
                i32.const 360
                i32.add
                call $f112
                i32.eqz
                br_if $B3
                i32.const 1049262
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
                      call $f117
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
                      call $f271
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
                      call $f271
                      drop
                      local.get $l0
                      i32.load offset=156
                      i32.eqz
                      br_if $B6
                      i32.const 4
                      local.set $l7
                      br $B7
                    end
                    i32.const 1051477
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
                i32.const 1050657
                i32.const 30
                i32.const 1048860
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
              call $f271
              drop
              local.get $l0
              local.get $l7
              i32.store offset=43 align=1
              local.get $l3
              local.get $l0
              i32.const 360
              i32.add
              i32.const 89
              call $f271
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
              call $f101
              br $L4
            end
          end
          call $f168
          i32.const 255
          i32.and
          i32.eqz
          br_if $B1
          i32.const 1049289
          local.set $l2
          i32.const 35
          local.set $l5
        end
        local.get $l0
        i32.const 264
        i32.add
        call $f78
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
      call $f167
      local.get $l0
      i32.const 464
      i32.add
      global.set $g0
      return
    end
    i32.const 1051477
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
    call $f175
    i32.const 0
    call $f59
    call $f168
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
    call $f108
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
      i32.const 1050631
      i32.const 26
      i32.const 1050433
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
    call $f175
    i32.const 1
    call $f59
    local.get $l0
    i32.const 0
    call $f60
    local.get $l0
    call $f146
    i64.extend_i32_u
    call $f50
    local.get $l0
    i32.const 32
    i32.add
    global.set $g0)
  (func $getFilledStake (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f143
    call $env.bigIntFinishUnsigned)
  (func $getStake (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
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
        call $f146
        local.tee $l1
        i32.eqz
        br_if $B1
        local.get $l1
        call $f138
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
          call $f168
          i32.const 255
          i32.and
          i32.eqz
          br_if $B2
          i32.const 37
          local.set $l1
          i32.const 1049324
          local.set $l0
          br $B1
        end
        local.get $l0
        call $f116
        br_if $B0
        call $f162
        local.tee $l1
        local.get $l0
        call $f61
        local.get $l1
        call $f172
        local.get $l0
        call $f142
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
    call $f175
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
          i32.const 1049361
          local.set $l0
          br $B1
        end
        local.get $l0
        call $f142
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
    call $f175
    i32.const 1
    call $f59
    call $f67
    local.set $l1
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              call $f168
              i32.const 255
              i32.and
              i32.eqz
              br_if $B4
              i32.const 1049415
              local.set $l2
              i32.const 39
              local.set $l3
              br $B3
            end
            local.get $l1
            call $f116
            br_if $B1
            local.get $l0
            call $f145
            block $B5
              local.get $l0
              call $f146
              local.tee $l2
              br_if $B5
              i32.const 1049454
              local.set $l2
              i32.const 27
              local.set $l3
              br $B3
            end
            local.get $l0
            i32.const 32
            i32.add
            local.get $l2
            call $f136
            local.get $l1
            local.get $l0
            i32.load offset=40
            local.tee $l3
            call $f75
            i32.eqz
            br_if $B2
            i32.const 1049481
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
        call $f139
        call $f162
        local.tee $l2
        local.get $l1
        call $f62
        local.get $l2
        call $f172
        call $f143
        local.tee $l2
        local.get $l1
        call $f62
        local.get $l2
        call $f144
        local.get $l0
        local.get $l1
        i32.const 1049516
        i32.const 18
        call $f198
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
        call $f47
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
        call $f148
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
    i32.const 1050521
    i32.const 25
    i32.const 1050546
    i32.const 4
    local.get $l0
    i32.const 144
    i32.add
    call $f54
    unreachable)
  (func $f198 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
    call $f251
    local.get $l4
    local.get $l4
    i32.const 16
    i32.add
    i32.const 1052424
    call $f252
    local.get $p0
    local.get $l4
    i32.load
    local.get $p2
    local.get $p3
    call $env.transferValue
    drop
    local.get $l4
    call $f253
    local.get $l4
    i32.const 32
    i32.add
    global.set $g0)
  (func $activate (type $t19)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    i32.const 288
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
    call $env.getNumArguments
    local.set $l1
    local.get $l0
    i32.const 32
    i32.add
    call $f130
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
    loop $L0
      local.get $l0
      i32.const 24
      i32.add
      local.get $l0
      i32.const 80
      i32.add
      call $f44
      block $B1
        local.get $l0
        i32.load offset=24
        br_if $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      local.get $l2
                      local.get $l1
                      i32.lt_s
                      br_if $B8
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
                      call $f145
                      local.get $l0
                      i32.const 176
                      i32.add
                      call $f163
                      i32.const 1049631
                      local.set $l2
                      i32.const 23
                      local.set $l1
                      local.get $l0
                      i32.const 80
                      i32.add
                      local.get $l0
                      i32.const 176
                      i32.add
                      call $f112
                      br_if $B5
                      i32.const 1049654
                      local.set $l2
                      call $f168
                      i32.const 255
                      i32.and
                      br_if $B5
                      i32.const 1049677
                      local.set $l2
                      i32.const 24
                      local.set $l1
                      call $f134
                      call $f130
                      i32.ne
                      br_if $B5
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
                      block $B9
                        loop $L10
                          block $B11
                            local.get $l3
                            i32.const -1
                            i32.add
                            local.tee $l3
                            br_if $B11
                            local.get $l0
                            i32.const 64
                            i32.add
                            call $f135
                            local.get $l0
                            i32.load offset=72
                            local.tee $l4
                            br_if $B9
                            i32.const 1049725
                            local.set $l2
                            i32.const 29
                            local.set $l1
                            br $B6
                          end
                          local.get $l2
                          i32.load
                          local.set $l5
                          local.get $l2
                          i32.const 12
                          i32.add
                          local.set $l2
                          local.get $l5
                          i32.const 32
                          i32.eq
                          br_if $L10
                        end
                        i32.const 1049701
                        local.set $l2
                        br $B5
                      end
                      local.get $l0
                      i32.const 16
                      i32.add
                      call $f149
                      local.get $l0
                      i32.load offset=16
                      local.tee $l2
                      br_if $B7
                      i32.const 1
                      call $f151
                      local.get $l0
                      i32.const 80
                      i32.add
                      call $f152
                      local.get $l0
                      i32.const 80
                      i32.add
                      call $f153
                      local.set $l6
                      local.get $l0
                      i32.const 1049756
                      i32.store offset=116
                      local.get $l0
                      local.get $l6
                      i32.store offset=112
                      local.get $l0
                      call $f128
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
                      block $B12
                        local.get $l0
                        i32.load offset=168
                        local.tee $l3
                        local.get $l2
                        i32.lt_u
                        br_if $B12
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
                        call $f83
                        br $B4
                      end
                      local.get $l0
                      i32.const 160
                      i32.add
                      local.get $l2
                      local.get $l3
                      i32.sub
                      local.tee $l5
                      call $f105
                      local.get $l0
                      i32.load offset=160
                      local.set $l2
                      local.get $l0
                      i32.load offset=168
                      local.set $l3
                      local.get $l0
                      local.get $l5
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
                      loop $L13
                        local.get $l0
                        i32.const 8
                        i32.add
                        local.get $l0
                        i32.const 176
                        i32.add
                        call $f44
                        block $B14
                          local.get $l0
                          i32.load offset=8
                          br_if $B14
                          block $B15
                            local.get $l5
                            i32.eqz
                            br_if $B15
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
                          br $B4
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
                        br $L13
                      end
                    end
                    i32.const 1051477
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
                call $f78
              end
              local.get $l0
              i32.const 48
              i32.add
              call $f82
              local.get $l2
              i32.eqz
              br_if $B3
              local.get $l2
              local.get $l1
              call $f53
              unreachable
            end
            local.get $l7
            i32.const 1
            i32.shl
            i32.const -1
            i32.add
            local.set $l3
            local.get $l0
            i32.load offset=152
            local.tee $l5
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
            block $B16
              loop $L17
                local.get $l7
                i32.const -1
                i32.add
                local.tee $l9
                i32.const 0
                i32.lt_s
                br_if $B16
                local.get $l0
                i32.const 176
                i32.add
                local.get $l1
                i32.const 96
                call $f271
                drop
                local.get $l0
                i32.const 272
                i32.add
                local.get $l0
                i32.const 176
                i32.add
                i32.const 96
                call $f106
                local.get $l0
                i32.const 160
                i32.add
                local.get $l3
                i32.const -1
                i32.add
                i32.const 1048924
                call $f113
                local.tee $l7
                call $f37
                local.get $l7
                i32.const 8
                i32.add
                local.get $l0
                i32.const 272
                i32.add
                i32.const 8
                i32.add
                local.tee $l10
                i32.load
                i32.store
                local.get $l7
                local.get $l0
                i64.load offset=272
                i64.store align=4
                local.get $l5
                local.get $l9
                i32.le_u
                br_if $B2
                local.get $l10
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
                call $f272
                local.set $l7
                local.get $l0
                i32.const 160
                i32.add
                local.get $l3
                i32.const 1048940
                call $f113
                local.tee $l2
                call $f37
                local.get $l2
                i32.const 8
                i32.add
                local.get $l10
                i32.load
                i32.store
                local.get $l2
                local.get $l0
                i64.load offset=272
                i64.store align=4
                local.get $l3
                i32.const -2
                i32.add
                local.set $l3
                local.get $l1
                i32.const -96
                i32.add
                local.set $l1
                local.get $l7
                i32.const -12
                i32.add
                local.set $l2
                local.get $l5
                i32.const -1
                i32.add
                local.set $l5
                local.get $l9
                local.set $l7
                br $L17
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
            local.get $l5
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
            call $f82
            local.get $l0
            i32.const 128
            i32.add
            call $f78
            local.get $l6
            local.get $l4
            local.get $l0
            i32.const 176
            i32.add
            local.get $l0
            i32.const 124
            i32.add
            call $f122
            local.get $l0
            i32.const 112
            i32.add
            call $f84
          end
          local.get $l0
          i32.const 288
          i32.add
          global.set $g0
          return
        end
        i32.const 1048772
        i32.const 29
        i32.const 1051976
        call $f103
        unreachable
      end
      block $B18
        local.get $l2
        local.get $l1
        i32.ge_s
        br_if $B18
        local.get $l0
        i32.const 176
        i32.add
        local.get $l2
        call $f57
        block $B19
          local.get $l0
          i32.load offset=40
          local.tee $l3
          local.get $l0
          i32.load offset=36
          i32.ne
          br_if $B19
          local.get $l0
          i32.const 32
          i32.add
          i32.const 1
          call $f105
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
        local.tee $l5
        local.get $l0
        i64.load offset=176
        i64.store align=4
        local.get $l5
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
        br $L0
      end
    end
    i32.const 1051477
    i32.const 25
    call $f52
    unreachable)
  (func $activateGenesis (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
    i32.const 0
    call $f59
    block $B0
      block $B1
        block $B2
          call $env.getBlockNonce
          i64.const 0
          i64.eq
          br_if $B2
          i32.const 1049361
          local.set $l1
          i32.const 18
          local.set $l0
          br $B1
        end
        local.get $l0
        i32.const 8
        i32.add
        call $f149
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
    call $f151
    call $f173
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    call $f145
    local.get $l0
    i32.const 32
    i32.add
    call $f163
    block $B0
      block $B1
        block $B2
          local.get $l0
          local.get $l0
          i32.const 32
          i32.add
          call $f112
          i32.eqz
          br_if $B2
          i32.const 1049780
          local.set $l0
          i32.const 25
          local.set $l1
          br $B1
        end
        call $f168
        i32.const 255
        i32.and
        i32.const 2
        i32.eq
        br_if $B0
        i32.const 1049805
        local.set $l0
        i32.const 22
        local.set $l1
      end
      local.get $l0
      local.get $l1
      call $f53
      unreachable
    end
    call $f150
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    call $f145
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $l0
            call $f146
            local.tee $l1
            br_if $B3
            i32.const 1049827
            local.set $l0
            i32.const 37
            local.set $l1
            br $B2
          end
          block $B4
            local.get $l1
            call $f170
            call $f116
            i32.eqz
            br_if $B4
            i32.const 1049864
            local.set $l0
            i32.const 67
            local.set $l1
            br $B2
          end
          local.get $l0
          i32.const 1050477
          local.get $l1
          call $f41
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
          call $f166
          local.set $l4
          call $env.getBlockTimestamp
          local.get $l4
          local.get $l3
          i64.add
          i64.gt_u
          br_if $B1
          i32.const 1049931
          local.set $l0
          i32.const 29
          local.set $l1
        end
        local.get $l0
        local.get $l1
        call $f53
        unreachable
      end
      call $f150
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
    i32.const 1050395
    i32.const 27
    i32.const 1050450
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
    call $f175
    i32.const 0
    call $f59
    block $B0
      call $f168
      i32.const 255
      i32.and
      i32.const 4
      i32.eq
      br_if $B0
      i32.const 1049960
      i32.const 32
      call $f53
      unreachable
    end
    local.get $l0
    i32.const 8
    i32.add
    call $f135
    i32.const 5
    call $f151
    call $f159
    local.get $l0
    i32.const 24
    i32.add
    call $f152
    local.get $l0
    i32.const 24
    i32.add
    call $f153
    local.set $l1
    local.get $l0
    i32.const 1049756
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
    call $f127
    local.get $l0
    i32.const 56
    i32.add
    call $f84
    local.get $l0
    i32.const 80
    i32.add
    global.set $g0)
  (func $getTotalCumulatedRewards (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f154
    call $env.bigIntFinishUnsigned)
  (func $_rewards_for_node (type $t19)
    call $f175
    i32.const 1
    call $f59
    call $f67
    call $f155
    call $env.bigIntFinishUnsigned)
  (func $computeAllRewards (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f159)
  (func $getClaimableRewards (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 80
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
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
        call $f146
        local.tee $l1
        i32.eqz
        br_if $B1
        local.get $l0
        i32.const 64
        i32.add
        local.get $l1
        call $f157
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
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    call $f145
    block $B0
      local.get $l0
      call $f146
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $l0
      i32.const 32
      i32.add
      local.get $l1
      call $f157
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
        i32.const 1050006
        i32.const 16
        call $f198
        call $f160
        local.tee $l3
        local.get $l2
        call $f61
        i32.const 1050483
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
      call $f139
      local.get $l0
      i32.const 48
      i32.add
      global.set $g0
      return
    end
    i32.const 1049992
    i32.const 14
    call $f53
    unreachable)
  (func $getUnexpectedBalance (type $t19)
    call $f175
    i32.const 0
    call $f59
    call $f161
    call $env.bigIntFinishUnsigned)
  (func $withdrawUnexpectedBalance (type $t19)
    (local $l0 i32) (local $l1 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l0
    global.set $g0
    call $f175
    i32.const 0
    call $f59
    local.get $l0
    call $f145
    local.get $l0
    i32.const 32
    i32.add
    call $f163
    block $B0
      local.get $l0
      local.get $l0
      i32.const 32
      i32.add
      call $f112
      br_if $B0
      block $B1
        call $f161
        local.tee $l1
        i64.const 0
        call $f73
        i32.eqz
        br_if $B1
        local.get $l0
        local.get $l1
        i32.const 1050064
        i32.const 18
        call $f198
      end
      local.get $l0
      i32.const 64
      i32.add
      global.set $g0
      return
    end
    i32.const 1050022
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
    call $f175
    i32.const 1
    call $f59
    call $f67
    local.set $l1
    local.get $l0
    i32.const 8
    i32.add
    call $f145
    block $B0
      block $B1
        local.get $l0
        i32.const 8
        i32.add
        call $f146
        local.tee $l2
        br_if $B1
        i32.const 1050082
        local.set $l0
        i32.const 40
        local.set $l2
        br $B0
      end
      block $B2
        local.get $l1
        local.get $l2
        call $f138
        call $f75
        i32.eqz
        br_if $B2
        i32.const 1050122
        local.set $l0
        i32.const 37
        local.set $l2
        br $B0
      end
      local.get $l2
      local.get $l1
      call $f171
      call $env.getBlockTimestamp
      local.set $l3
      local.get $l0
      i32.const 40
      i32.add
      i32.const 1050477
      local.get $l2
      call $f41
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
        i32.const 1050395
        i32.const 27
        i32.const 1050450
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
    call $f175
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
        call $f146
        local.tee $l1
        i32.eqz
        br_if $B1
        local.get $l1
        call $f170
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
          call $f116
          br_if $B2
          block $B3
            local.get $l0
            i32.const 32
            i32.add
            call $f146
            local.tee $l2
            br_if $B3
            i32.const 1050159
            local.set $l2
            i32.const 14
            local.set $l3
            br $B0
          end
          block $B4
            local.get $l1
            local.get $l2
            call $f170
            local.tee $l3
            call $f75
            i32.eqz
            br_if $B4
            i32.const 1050173
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
          call $f171
          block $B5
            local.get $l1
            local.get $l2
            call $f138
            local.tee $l3
            call $f75
            i32.eqz
            br_if $B5
            i32.const 1050202
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
          call $f141
          local.get $l0
          i32.const 64
          i32.add
          call $f145
          block $B6
            local.get $l0
            i32.const 64
            i32.add
            call $f146
            local.tee $l2
            br_if $B6
            local.get $l0
            i32.const 64
            i32.add
            call $f131
            local.tee $l2
            call $f147
          end
          local.get $l2
          call $f138
          local.tee $l3
          local.get $l1
          call $f61
          local.get $l2
          local.get $l3
          call $f141
          local.get $l0
          i32.const 32
          i32.add
          local.get $l1
          i32.const 1050237
          i32.const 17
          call $f198
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
          call $f47
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
          call $f148
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
      i32.const 1050521
      i32.const 25
      i32.const 1050546
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
    i64.load offset=1048740 align=1
    i64.store
    local.get $l0
    i32.const 80
    i32.add
    i32.const 0
    i64.load offset=1048732 align=1
    i64.store
    local.get $l0
    i32.const 72
    i32.add
    i32.const 0
    i64.load offset=1048724 align=1
    i64.store
    local.get $l0
    i32.const 0
    i64.load offset=1048716 align=1
    i64.store offset=64
    local.get $l0
    i32.const 16
    i32.add
    local.get $l0
    i32.const 64
    i32.add
    i32.const 32
    call $f164
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
              i32.const 1051992
              call $f215
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
          i32.const 1052008
          call $f215
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
      i32.const 1051708
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
                                                i32.const 1051502
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
                                            call $f151
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
                                          call $f151
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
                                          call $f151
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
                                          call $f148
                                          local.get $l0
                                          i32.const 96
                                          i32.add
                                          call $f37
                                          br $B19
                                        end
                                        i32.const 2
                                        call $f151
                                        call $f162
                                        local.tee $l3
                                        call $f128
                                        call $f115
                                        local.get $l3
                                        call $f172
                                        call $f173
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
                                      call $f148
                                      local.get $l0
                                      i32.const 96
                                      i32.add
                                      call $f37
                                      br $B19
                                    end
                                    i32.const 4
                                    call $f151
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
                                    call $f46
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
                                    call $f148
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
                                  call $f148
                                  local.get $l0
                                  i32.const 96
                                  i32.add
                                  call $f37
                                  br $B19
                                end
                                i32.const 0
                                local.set $l3
                                i32.const 0
                                call $f151
                                call $f162
                                local.tee $l4
                                call $f128
                                call $f114
                                local.get $l4
                                call $f172
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
                                call $f46
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
                                call $f148
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
                              i64.load offset=1048740 align=1
                              i64.store
                              local.get $l0
                              i32.const 80
                              i32.add
                              i32.const 0
                              i64.load offset=1048732 align=1
                              i64.store
                              local.get $l0
                              i32.const 72
                              i32.add
                              i32.const 0
                              i64.load offset=1048724 align=1
                              i64.store
                              local.get $l0
                              i32.const 0
                              i64.load offset=1048716 align=1
                              i64.store offset=64
                              local.get $l0
                              i32.const 64
                              i32.add
                              i32.const 32
                              i32.const 1051708
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
                            i32.const 1051477
                            i32.const 25
                            call $f52
                            unreachable
                          end
                          i32.const 1051477
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
                        i32.const 1050521
                        i32.const 25
                        i32.const 1050546
                        i32.const 4
                        local.get $l0
                        i32.const 96
                        i32.add
                        call $f54
                        unreachable
                      end
                      i32.const 1051477
                      i32.const 25
                      call $f52
                      unreachable
                    end
                    i32.const 1051477
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
                  i32.const 1050521
                  i32.const 25
                  i32.const 1050546
                  i32.const 4
                  local.get $l0
                  i32.const 96
                  i32.add
                  call $f54
                  unreachable
                end
                i32.const 1051477
                i32.const 25
                call $f52
                unreachable
              end
              i32.const 1051477
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
            i32.const 1050521
            i32.const 25
            i32.const 1050546
            i32.const 4
            local.get $l0
            i32.const 96
            i32.add
            call $f54
            unreachable
          end
          i32.const 1051550
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
        i32.const 1050521
        i32.const 25
        i32.const 1050546
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
      i32.const 1050521
      i32.const 25
      i32.const 1050546
      i32.const 4
      local.get $l0
      i32.const 96
      i32.add
      call $f54
      unreachable
    end
    i32.const 1050576
    i32.const 55
    i32.const 1050560
    call $f103
    unreachable)
  (func $f215 (type $t20) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
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
        call $f232
        unreachable
      end
      local.get $p1
      local.get $p2
      local.get $p5
      call $f233
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
  (func $f216 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $f256)
  (func $f217 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $f257)
  (func $f218 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    block $B0
      local.get $p3
      local.get $p2
      call $f256
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
      call $f271
      drop
      local.get $p0
      local.get $p1
      local.get $p2
      call $f257
    end
    local.get $l4)
  (func $f219 (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    call $f220)
  (func $f220 (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.const 1
      call $f256
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $l1
      i32.const 0
      local.get $p0
      call $f270
      drop
    end
    local.get $l1)
  (func $f221 (type $t19)
    i32.const 1052780
    i32.const 16
    call $f249
    unreachable)
  (func $f222 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l4
    global.set $g0
    i32.const 0
    local.set $l5
    block $B0
      local.get $p1
      i32.const 4
      i32.add
      i32.load
      local.tee $l6
      local.get $p2
      i32.sub
      local.get $p3
      i32.ge_u
      br_if $B0
      block $B1
        local.get $p2
        local.get $p3
        i32.add
        local.tee $p3
        local.get $p2
        i32.ge_u
        br_if $B1
        local.get $p0
        local.get $p3
        i32.store offset=4
        local.get $p0
        i32.const 8
        i32.add
        i32.const 0
        i32.store
        i32.const 1
        local.set $l5
        br $B0
      end
      i32.const 1
      local.set $l5
      block $B2
        block $B3
          block $B4
            local.get $l6
            i32.const 1
            i32.shl
            local.tee $p2
            local.get $p3
            local.get $p2
            local.get $p3
            i32.gt_u
            select
            local.tee $p2
            i32.const 0
            i32.lt_s
            br_if $B4
            block $B5
              local.get $l6
              br_if $B5
              i32.const 1
              local.set $l5
              local.get $l4
              i32.const 1
              i32.store offset=12
              local.get $l4
              local.get $p2
              i32.store offset=8
              local.get $p2
              i32.eqz
              br_if $B2
              local.get $p2
              i32.const 1
              call $f109
              local.set $l5
              br $B3
            end
            local.get $p1
            i32.load
            local.set $p3
            local.get $l4
            local.get $l6
            i32.const 0
            i32.ne
            local.tee $l5
            i32.store offset=12
            local.get $l4
            local.get $l6
            i32.store offset=8
            block $B6
              local.get $p2
              i32.eqz
              br_if $B6
              local.get $p3
              local.get $l6
              local.get $l5
              local.get $p2
              call $f111
              local.set $l5
              br $B3
            end
            local.get $p3
            local.get $l6
            local.get $l5
            call $f110
            br $B2
          end
          local.get $p0
          i32.const 8
          i32.add
          i32.const 0
          i32.store
          br $B0
        end
        local.get $l5
        br_if $B2
        call $f97
        unreachable
      end
      local.get $p1
      local.get $l5
      i32.store
      local.get $p1
      i32.const 4
      i32.add
      local.get $p2
      i32.store
      i32.const 0
      local.set $l5
    end
    local.get $p0
    local.get $l5
    i32.store
    local.get $l4
    i32.const 16
    i32.add
    global.set $g0)
  (func $f223 (type $t2) (param $p0 i32))
  (func $f224 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p0
    i32.load
    local.tee $p0
    local.get $p0
    i32.const 8
    i32.add
    local.tee $l4
    i32.load
    local.get $p2
    call $f222
    block $B0
      block $B1
        local.get $l3
        i32.load
        i32.const 1
        i32.ne
        br_if $B1
        local.get $l3
        i32.const 8
        i32.add
        i32.load
        i32.eqz
        br_if $B0
        i32.const 1051933
        i32.const 40
        i32.const 1050772
        call $f103
        unreachable
      end
      local.get $l4
      local.get $l4
      i32.load
      local.tee $l5
      local.get $p2
      i32.add
      i32.store
      local.get $l5
      local.get $p0
      i32.load
      i32.add
      local.get $p1
      local.get $p2
      call $f271
      drop
      local.get $l3
      i32.const 16
      i32.add
      global.set $g0
      i32.const 0
      return
    end
    call $f104
    unreachable)
  (func $f225 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 32
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
              i32.const 128
              i32.lt_u
              br_if $B4
              local.get $l2
              i32.const 0
              i32.store offset=12
              local.get $p1
              i32.const 2048
              i32.lt_u
              br_if $B3
              local.get $l2
              i32.const 12
              i32.add
              local.set $l3
              block $B5
                local.get $p1
                i32.const 65536
                i32.ge_u
                br_if $B5
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
                br $B2
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
              br $B2
            end
            block $B6
              local.get $p0
              i32.load offset=8
              local.tee $l4
              local.get $p0
              i32.const 4
              i32.add
              i32.load
              i32.ne
              br_if $B6
              local.get $l2
              i32.const 16
              i32.add
              local.get $p0
              local.get $l4
              i32.const 1
              call $f222
              block $B7
                local.get $l2
                i32.load offset=16
                i32.const 1
                i32.ne
                br_if $B7
                local.get $l2
                i32.const 24
                i32.add
                i32.load
                i32.eqz
                br_if $B0
                i32.const 1051933
                i32.const 40
                i32.const 1050772
                call $f103
                unreachable
              end
              local.get $p0
              i32.load offset=8
              local.set $l4
            end
            local.get $p0
            i32.load
            local.get $l4
            i32.add
            local.get $p1
            i32.store8
            local.get $p0
            local.get $p0
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            br $B1
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
        end
        local.get $l2
        i32.const 16
        i32.add
        local.get $p0
        local.get $p0
        i32.const 8
        i32.add
        local.tee $l4
        i32.load
        local.get $p1
        call $f222
        block $B8
          local.get $l2
          i32.load offset=16
          i32.const 1
          i32.ne
          br_if $B8
          local.get $l2
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.eqz
          br_if $B0
          i32.const 1051933
          i32.const 40
          i32.const 1050772
          call $f103
          unreachable
        end
        local.get $l4
        local.get $l4
        i32.load
        local.tee $l5
        local.get $p1
        i32.add
        i32.store
        local.get $l5
        local.get $p0
        i32.load
        i32.add
        local.get $l3
        local.get $p1
        call $f271
        drop
      end
      local.get $l2
      i32.const 32
      i32.add
      global.set $g0
      i32.const 0
      return
    end
    call $f104
    unreachable)
  (func $f226 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
    i32.const 1050788
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
  (func $f227 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    drop
    loop $L0 (result i32)
      br $L0
    end)
  (func $f228 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    call $f230
    unreachable)
  (func $f229 (type $t21) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
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
        call $f231
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
        call $f231
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
        call $f231
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
      call $f231
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
  (func $f230 (type $t2) (param $p0 i32)
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
            call $f248
            local.get $l1
            i32.const 40
            i32.add
            i32.const 1052796
            i32.const 1052818
            call $f121
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
          i32.const 6
          i32.store offset=20
          local.get $l1
          local.get $l1
          i32.const 12
          i32.add
          i32.store offset=16
          i32.const 32
          i32.const 1
          call $f109
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
          i32.const 1052820
          i32.store offset=40
          local.get $l1
          local.get $l1
          i32.const 16
          i32.add
          i32.store offset=56
          local.get $l1
          i32.const 36
          i32.add
          i32.const 1050788
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
        call $f250
        unreachable
      end
      call $f97
      unreachable
    end
    i32.const 1050812
    i32.const 51
    local.get $l1
    i32.const 40
    i32.add
    i32.const 1050864
    i32.const 1050880
    call $f236
    unreachable)
  (func $f231 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
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
  (func $f232 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    i32.const 1051184
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
    call $f228
    unreachable)
  (func $f233 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
    i32.const 1051240
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
    call $f228
    unreachable)
  (func $f234 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
  (func $f235 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    call $f234)
  (func $f236 (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
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
    i32.const 7
    i32.store
    local.get $l5
    i64.const 2
    i64.store offset=28 align=4
    local.get $l5
    i32.const 1051388
    i32.store offset=24
    local.get $l5
    i32.const 8
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
    call $f228
    unreachable)
  (func $f237 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type $t1) $T0)
  (func $f238 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    i32.load offset=24
    i32.const 1051406
    i32.const 5
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t0) $T0)
  (func $f239 (type $t6) (param $p0 i32) (param $p1 i32)
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
          br_if $B0
          local.get $l3
          i32.const 1
          i32.shl
          local.tee $l4
          local.get $p1
          local.get $l4
          local.get $p1
          i32.gt_u
          select
          local.tee $l4
          i32.const 0
          i32.lt_s
          br_if $B0
          block $B3
            block $B4
              local.get $l3
              br_if $B4
              local.get $l2
              i32.const 8
              i32.add
              local.get $l4
              call $f241
              local.get $l2
              i32.load offset=12
              local.set $l4
              local.get $l2
              i32.load offset=8
              local.set $p1
              br $B3
            end
            local.get $l3
            i32.const 0
            i32.ne
            local.set $p1
            local.get $p0
            i32.load
            local.set $l5
            block $B5
              local.get $l4
              i32.eqz
              br_if $B5
              local.get $l5
              local.get $l3
              local.get $p1
              local.get $l4
              call $f111
              local.set $p1
              br $B3
            end
            local.get $l5
            local.get $l3
            local.get $p1
            call $f242
          end
          local.get $p1
          i32.eqz
          br_if $B1
          local.get $p0
          local.get $l4
          i32.store offset=4
          local.get $p0
          local.get $p1
          i32.store
        end
        local.get $l2
        i32.const 16
        i32.add
        global.set $g0
        return
      end
      call $f97
      unreachable
    end
    call $f104
    unreachable)
  (func $f240 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
      call $f271
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
    i32.const 4
    i32.store
    local.get $l4
    i32.const 52
    i32.add
    i32.const 9
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
    i32.const 1051708
    i32.store offset=16
    local.get $l4
    i32.const 9
    i32.store offset=44
    local.get $l4
    i32.const 1051708
    i32.store offset=88
    local.get $l4
    i64.const 1
    i64.store offset=76 align=4
    local.get $l4
    i32.const 1051700
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
    i32.const 1051732
    call $f228
    unreachable)
  (func $f241 (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    block $B0
      block $B1
        local.get $p1
        br_if $B1
        i32.const 1
        local.set $l2
        br $B0
      end
      local.get $p1
      i32.const 1
      call $f109
      local.set $l2
    end
    local.get $p0
    local.get $p1
    i32.store offset=4
    local.get $p0
    local.get $l2
    i32.store)
  (func $f242 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.eqz
      br_if $B0
      local.get $p0
      local.get $p1
      local.get $p2
      call $f110
    end)
  (func $f243 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
              call $f119
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
            i32.const 1051364
            i32.const 2
            local.get $l2
            local.get $p0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get $p0
            i32.sub
            call $f229
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
          i32.const 1051364
          i32.const 2
          local.get $l2
          local.get $p0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get $p0
          i32.sub
          call $f229
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
      i32.const 1051348
      call $f233
      unreachable
    end
    local.get $l3
    i32.const 128
    i32.const 1051348
    call $f233
    unreachable)
  (func $f244 (type $t19)
    call $f104
    unreachable)
  (func $f245 (type $t6) (param $p0 i32) (param $p1 i32)
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
      call $f239
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
  (func $f246 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i64.extend_i32_u
    i32.const 32
    i32.const 0
    call $f51)
  (func $f247 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
  (func $f248 (type $t6) (param $p0 i32) (param $p1 i32)
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
    call $f107
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
  (func $f249 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $f250
    unreachable)
  (func $f250 (type $t6) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $env.signalError
    unreachable)
  (func $f251 (type $t6) (param $p0 i32) (param $p1 i32)
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
          call $f48
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
    i32.const 1052604
    call $f45
    unreachable)
  (func $f252 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    block $B0
      local.get $p1
      i32.load
      br_if $B0
      i32.const 1052440
      i32.const 43
      local.get $p2
      call $f103
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
  (func $f253 (type $t2) (param $p0 i32)
    local.get $p0
    call $f86)
  (func $f254 (type $t2) (param $p0 i32)
    local.get $p0
    call $f255
    unreachable)
  (func $f255 (type $t2) (param $p0 i32)
    local.get $p0
    i32.const 54
    call $f250
    unreachable)
  (func $f256 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
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
        i32.const 1052892
        i32.store offset=4
        local.get $l2
        local.get $l3
        i32.const 2
        i32.shl
        i32.const 1052896
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
        i32.const 1052868
        call $f259
        local.set $p1
        local.get $l3
        local.get $l2
        i32.load offset=12
        i32.store
        br $B0
      end
      local.get $l2
      i32.const 0
      i32.load offset=1052892
      i32.store offset=8
      local.get $p0
      local.get $p1
      local.get $l2
      i32.const 8
      i32.add
      i32.const 1051708
      i32.const 1052844
      call $f259
      local.set $p1
      i32.const 0
      local.get $l2
      i32.load offset=8
      i32.store offset=1052892
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $f257 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
        i32.const 1052892
        i32.store offset=8
        local.get $l3
        local.get $p0
        i32.const 2
        i32.shl
        i32.const 1052896
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
        i32.const 1052868
        call $f269
        local.get $p0
        local.get $l3
        i32.load offset=12
        i32.store
        br $B0
      end
      local.get $l3
      i32.const 0
      i32.load offset=1052892
      i32.store offset=12
      local.get $l3
      i32.const 4
      i32.add
      local.get $l3
      i32.const 12
      i32.add
      i32.const 1051708
      i32.const 1052844
      call $f269
      i32.const 0
      local.get $l3
      i32.load offset=12
      i32.store offset=1052892
    end
    local.get $l3
    i32.const 16
    i32.add
    global.set $g0)
  (func $f258 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
    i32.const 1051708
    i32.const 1052844
    call $f259
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
  (func $f259 (type $t21) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
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
      call $f260
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
      call $f260
      local.set $l6
    end
    local.get $l5
    i32.const 16
    i32.add
    global.set $g0
    local.get $l6)
  (func $f260 (type $t21) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
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
            call $f261
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
  (func $f261 (type $t2) (param $p0 i32)
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
  (func $f262 (type $t2) (param $p0 i32))
  (func $f263 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
  (func $f264 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 512)
  (func $f265 (type $t4) (param $p0 i32) (result i32)
    i32.const 1)
  (func $f266 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1)
  (func $f267 (type $t4) (param $p0 i32) (result i32)
    i32.const 0)
  (func $f268 (type $t2) (param $p0 i32))
  (func $f269 (type $t3) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
      call $f261
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
  (func $f270 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
  (func $f271 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
  (func $f272 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
  (func $f273 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
  (table $T0 33 33 funcref)
  (memory $memory 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end i32 (i32.const 1053920))
  (global $__heap_base i32 (i32.const 1053920))
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
  (elem $e0 (i32.const 1) $f119 $f227 $f72 $f120 $f169 $f247 $f237 $f235 $f243 $f88 $f92 $f90 $f91 $f89 $f71 $f87 $f122 $f126 $f127 $f223 $f224 $f225 $f226 $f238 $f262 $f263 $f264 $f265 $f268 $f258 $f266 $f267)
  (data $d0 (i32.const 1048576) "<\0c\10\00\00\00\00\00fmt err (): /home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/address.rstx_hash_________________________\0a\00\00\00\04\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00assertion failed: index < len, expected invalid length \00\ec\00\10\00\0f\00\00\00\e1\00\10\00\0b\00\00\00\14\00\10\00x\00\00\00\87\00\00\00$\00\00\00BLSKeysrc/bls_key.rs\22\01\10\00\0e\00\00\00,\00\00\00\0d\00\00\00\0e\00\00\00\00\00\00\00\01\00\00\00\0f\00\00\00src/util.rs\00P\01\10\00\0b\00\00\00\14\00\00\00\09\00\00\00P\01\10\00\0b\00\00\00\16\00\00\00\09\00\00\00stakeauction_stake_callbackasync call serialization errorusizeunStakeauction_unStake_callbackunBondauction_unBond_callback0.2.1node share out of rangeonly owner can change stake per nodecannot change stake per node while activeonly owner can change the number of nodescannot change nr of nodes while activeonly owner can set BLS keyscannot change BLS keys while activecannot stake while contract is activegenesis block onlypayment exceeds unfilled total stakecannot unstake while contract is activeonly delegators can unstakecannot unstake more than was stakeddelegation unstakecannot activate with 0 staketoo much stake filledcannot activate before all stake has been filledonly owner can activatecontract already activewrong number of BLS keyswrong size BLS signaturecannot activate with no nodes\00\00\10\00\00\00 \00\00\00\01\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00only owner can deactivatecontract is not activeonly delegators can call forceUnstakeonly delegators that are trying to sell stake can call forceUnstaketoo soon to call forceUnstakecontract is not in unbond periodunknown callerdelegation claimonly owner can withdraw unexpected balanceunexpected balanceonly delegators can offer stake for salecannot offer more stake than is ownedunknown sellerpayment exceeds stake offeredpayment exceeds stake owned by userpayment for stakeownernode_rewards_addrauction_addrtime_before_force_unstakenode_sharestake_per_nodenum_usersnum_nodesbls_keysstorage deserialization errorVecstorage serialization errorstake_stateStakeStateuser_idkeyu_staku_unclu_lastu_saleu_toffsent_rewardsinactive_stakefilled_stakeevent serialization errordatasrc/lib.rs\b6\07\10\00\0a\00\00\008\00\00\00\01\00\00\00No callback function with that name exists in contract.result serialization errorargument deserialization error\000\00\00\00\00\00\00\00\15\00\00\00\ef\03\10\00\00\00\00\00\da\03\10\00capacity overflow\00\00\00|\08\10\00\17\00\00\00\ee\02\00\00\05\00\00\00src/liballoc/raw_vec.rs\00|\08\10\00\17\00\00\00\e9\01\00\00'\00\00\00\14\00\00\00\04\00\00\00\04\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00a formatting trait implementation returned an error\00\14\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00\10\09\10\00\13\00\00\00J\02\00\00\05\00\00\00src/liballoc/fmt.rs\004\09\10\00 \00\00\00T\09\10\00\12\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00@\0a\10\00\06\00\00\00F\0a\10\00\22\00\00\00index  out of range for slice of length x\0a\10\00\16\00\00\00\8e\0a\10\00\0d\00\00\00slice index starts at  but ends at \00\bc\0a\10\00\16\00\00\00V\04\00\00$\00\00\00\bc\0a\10\00\16\00\00\00L\04\00\00\11\00\00\00src/libcore/fmt/mod.rs\00\00\e6\0a\10\00\16\00\00\00T\00\00\00\14\00\00\000xsrc/libcore/fmt/num.rs<\0c\10\00\00\00\00\00\0c\0b\10\00\02\00\00\00: ErrorELRONDrewardattempted to transfer funds via a non-payable functionwrong number of argumentswrong number of arguments returned by async calltoo many callback arguments providedargument out of rangeargument has wrong length: 32 bytes expectedcannot subtract because result would be negative\00\e9\0c\10\004\00\00\00\ad\0c\10\00-\00\00\00\da\0c\10\00\0c\00\00\00\e6\0c\10\00\03\00\00\00d\0c\10\00I\00\00\00(\00\00\00\09\00\00\00/rustc/a5fb9ae5b2ed3cb011ada9dc1e8633aa0927f279/src/libcore/macros/mod.rsassertion failed: `(left == right)`\0a  left: ``,\0a right: ``: destination and source slices have different lengthsinternal error: entered unreachable code\00\00\00d\0c\10\00I\00\00\00\22\00\00\00\09\00\00\00x\0d\10\00\80\00\00\00P\00\00\00\1e\00\00\00x\0d\10\00\80\00\00\00W\00\00\00\1e\00\00\00/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/call_data/cd_de.rs/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-0.4.4/src/serializer/bytes_de.rs\f8\0d\10\00\84\00\00\00R\00\00\00\1b\00\00\00\f8\0d\10\00\84\00\00\00S\00\00\00\1b\00\00\00invalid valueinput too longinput too shortsequence length requirednot yet implementedunsupported operation\00\00C\0f\10\00y\00\00\00\cb\00\00\00\1e\00\00\00called `Option::unwrap()` on a `None` value/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-node-0.4.4/src/ext.rs\cc\0f\10\00~\00\00\00<\01\00\00:\00\00\00/home/camil.bancioiu/ElrondSCTools/vendor-rust/registry/src/github.com-1ecc6299db9ec823/elrond-wasm-node-0.4.4/src/big_uint.rs\00\00C\0f\10\00y\00\00\00\d7\00\00\00\1e\00\00\00C\0f\10\00y\00\00\00\82\01\00\00\0d\00\00\00allocation errorunknown panic occurred\00\00\9c\10\10\00\10\00\00\00panic occurred: \19\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\04\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00")
  (data $d1 (i32.const 1052892) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
