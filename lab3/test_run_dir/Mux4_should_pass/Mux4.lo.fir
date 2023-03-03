FIRRTL version 1.1.0
circuit Mux4 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_sel : UInt<1>
    output io_y : UInt<1>

    node _T = eq(io_sel, UInt<1>("h1")) @[Mux2.scala 17:16]
    node _GEN_0 = mux(_T, io_b, io_a) @[Mux2.scala 17:25 18:10 16:8]
    io_y <= _GEN_0

  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_sel : UInt<2>
    output io_y : UInt<1>

    inst a1 of Mux2 @[Mux4.scala 44:18]
    inst a2 of Mux2 @[Mux4.scala 45:18]
    inst a3 of Mux2 @[Mux4.scala 46:18]
    node _a1_io_sel_T = bits(io_sel, 0, 0) @[Mux4.scala 48:22]
    node _a2_io_sel_T = bits(io_sel, 0, 0) @[Mux4.scala 52:22]
    node _a3_io_sel_T = bits(io_sel, 1, 1) @[Mux4.scala 56:22]
    io_y <= a3.io_y @[Mux4.scala 60:8]
    a1.clock <= clock
    a1.reset <= reset
    a1.io_a <= io_a @[Mux4.scala 49:11]
    a1.io_b <= io_b @[Mux4.scala 50:11]
    a1.io_sel <= _a1_io_sel_T @[Mux4.scala 48:13]
    a2.clock <= clock
    a2.reset <= reset
    a2.io_a <= io_c @[Mux4.scala 53:11]
    a2.io_b <= io_d @[Mux4.scala 54:11]
    a2.io_sel <= _a2_io_sel_T @[Mux4.scala 52:13]
    a3.clock <= clock
    a3.reset <= reset
    a3.io_a <= a1.io_y @[Mux4.scala 57:11]
    a3.io_b <= a2.io_y @[Mux4.scala 58:11]
    a3.io_sel <= _a3_io_sel_T @[Mux4.scala 56:13]
