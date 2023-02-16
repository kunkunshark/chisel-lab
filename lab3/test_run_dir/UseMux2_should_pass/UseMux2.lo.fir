FIRRTL version 1.1.0
circuit UseMux2 :
  module UseMux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<1>
    output io_dout : UInt<1>

    node _T = eq(io_sel, UInt<1>("h0")) @[UseMux2.scala 18:12]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[UseMux2.scala 18:21 19:9 21:9]
    node res = _GEN_0 @[UseMux2.scala 12:17]
    io_dout <= res @[UseMux2.scala 26:11]
