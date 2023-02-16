FIRRTL version 1.1.0
circuit Mux4 :
  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_sel : UInt<2>
    output io_y : UInt<1>

    node _T = eq(io_sel, UInt<1>("h1")) @[Mux4.scala 33:15]
    node _GEN_0 = mux(_T, io_b, io_a) @[Mux4.scala 33:24 34:10 32:8]
    node _T_1 = eq(io_sel, UInt<2>("h2")) @[Mux4.scala 36:15]
    node _GEN_1 = mux(_T_1, io_c, _GEN_0) @[Mux4.scala 36:24 37:10]
    node _T_2 = eq(io_sel, UInt<2>("h3")) @[Mux4.scala 39:15]
    node _GEN_2 = mux(_T_2, io_d, _GEN_1) @[Mux4.scala 39:24 40:10]
    io_y <= _GEN_2
