FIRRTL version 1.1.0
circuit Delay :
  module Delay :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    output io_dout : UInt<8>

    node res = io_din @[Delay.scala 9:17 14:7]
    io_dout <= res @[Delay.scala 18:11]
