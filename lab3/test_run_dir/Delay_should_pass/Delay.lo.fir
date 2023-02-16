FIRRTL version 1.1.0
circuit Delay :
  module Delay :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    output io_dout : UInt<8>

    reg Reg_REG : UInt<8>, clock with :
      reset => (UInt<1>("h0"), Reg_REG) @[Delay.scala 13:28]
    reg Reg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), Reg) @[Delay.scala 13:20]
    node res = Reg @[Delay.scala 9:17 14:7]
    io_dout <= res @[Delay.scala 33:11]
    Reg_REG <= io_din @[Delay.scala 13:28]
    Reg <= Reg_REG @[Delay.scala 13:20]
