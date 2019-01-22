(module
  (import "env" "imported" (func $imported (result i64)))
  (import "env" "invoke_vj" (func $invoke_vj (param i64)))
  (export "func" (func $func))
  (export "dynCall_foo" (func $dyn))
  (func $func (result i64)
    (drop (call $imported))
    (call $invoke_vj (i64.const 0))
    (unreachable)
  )
  (func $dyn (result i64)
    (drop (call $imported))
    (unreachable)
  )
)
(module)

