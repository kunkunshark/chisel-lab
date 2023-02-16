FIRRTL version 1.1.0
circuit Accu :
  module Accu :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    input io_setZero : UInt<1>
    output io_dout : UInt<8>

    reg Reg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), Reg) @[Accu.scala 14:20]
    node _T = eq(io_setZero, UInt<1>("h1")) @[Accu.scala 16:19]
    node _Reg_T = add(Reg, io_din) @[Accu.scala 19:16]
    node _Reg_T_1 = tail(_Reg_T, 1) @[Accu.scala 19:16]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _Reg_T_1) @[Accu.scala 16:28 17:9 19:9]
    node res = Reg @[Accu.scala 10:17 22:7]
    io_dout <= res @[Accu.scala 26:11]
    Reg <= mux(reset, UInt<8>("h0"), _GEN_0) @[Accu.scala 14:{20,20}]
