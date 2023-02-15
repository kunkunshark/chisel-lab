FIRRTL version 1.1.0
circuit AddSub :
  module AddSub :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<4>
    input io_b : UInt<4>
    input io_selAdd : UInt<1>
    output io_y : UInt<4>

    node res = UInt<4>("h0") @[AddSub.scala 14:{21,21}]
    io_y <= res @[AddSub.scala 22:8]
