FIRRTL version 1.1.0
circuit Decoder :
  module Decoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<2>
    output io_out : UInt<4>

    node dec = UInt<1>("h0") @[Decoder.scala 11:{24,24}]
    io_out <= pad(dec, 4) @[Decoder.scala 17:10]
