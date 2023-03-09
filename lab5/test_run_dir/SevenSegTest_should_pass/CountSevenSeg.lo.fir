FIRRTL version 1.1.0
circuit CountSevenSeg :
  module SevenSegDecoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<4>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    node _T = eq(UInt<1>("h0"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_1 = eq(UInt<1>("h1"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_2 = eq(UInt<2>("h2"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_3 = eq(UInt<2>("h3"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_4 = eq(UInt<3>("h4"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_5 = eq(UInt<3>("h5"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_6 = eq(UInt<3>("h6"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_7 = eq(UInt<3>("h7"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_8 = eq(UInt<4>("h8"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_9 = eq(UInt<4>("h9"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_10 = eq(UInt<4>("ha"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_11 = eq(UInt<4>("hb"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_12 = eq(UInt<4>("hc"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_13 = eq(UInt<4>("hd"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_14 = eq(UInt<4>("he"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _T_15 = eq(UInt<4>("hf"), io_sw) @[SevenSegDecoder.scala 14:17]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<7>("h0")) @[SevenSegDecoder.scala 14:17 61:14 11:27]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[SevenSegDecoder.scala 14:17 58:14]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[SevenSegDecoder.scala 14:17 55:14]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[SevenSegDecoder.scala 14:17 52:14]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[SevenSegDecoder.scala 14:17 49:14]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[SevenSegDecoder.scala 14:17 46:14]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[SevenSegDecoder.scala 14:17 43:14]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[SevenSegDecoder.scala 14:17 40:14]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[SevenSegDecoder.scala 14:17 37:14]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[SevenSegDecoder.scala 14:17 34:14]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[SevenSegDecoder.scala 14:17 31:14]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[SevenSegDecoder.scala 14:17 28:14]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[SevenSegDecoder.scala 14:17 25:14]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[SevenSegDecoder.scala 14:17 22:14]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[SevenSegDecoder.scala 14:17 19:14]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[SevenSegDecoder.scala 14:17 16:14]
    node sevSeg = _GEN_15 @[SevenSegDecoder.scala 11:27]
    node _io_seg_T = not(sevSeg) @[SevenSegDecoder.scala 66:13]
    io_seg <= _io_seg_T @[SevenSegDecoder.scala 66:10]
    io_an <= UInt<4>("he") @[SevenSegDecoder.scala 67:9]

  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst converter of SevenSegDecoder @[CountSevenSeg.scala 25:25]
    reg counter2hz : UInt<26>, clock with :
      reset => (UInt<1>("h0"), counter2hz) @[CountSevenSeg.scala 14:27]
    reg counter4bit : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter4bit) @[CountSevenSeg.scala 15:28]
    node _T = eq(counter2hz, UInt<4>("ha")) @[CountSevenSeg.scala 17:19]
    node _counter4bit_T = add(counter4bit, UInt<1>("h1")) @[CountSevenSeg.scala 19:32]
    node _counter4bit_T_1 = tail(_counter4bit_T, 1) @[CountSevenSeg.scala 19:32]
    node _counter2hz_T = add(counter2hz, UInt<1>("h1")) @[CountSevenSeg.scala 21:30]
    node _counter2hz_T_1 = tail(_counter2hz_T, 1) @[CountSevenSeg.scala 21:30]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _counter2hz_T_1) @[CountSevenSeg.scala 17:29 18:16 21:16]
    node _GEN_1 = mux(_T, _counter4bit_T_1, counter4bit) @[CountSevenSeg.scala 17:29 19:17 15:28]
    node sevSeg = converter.io_seg @[CountSevenSeg.scala 10:27 27:10]
    node _io_seg_T = not(sevSeg) @[CountSevenSeg.scala 84:13]
    io_seg <= _io_seg_T @[CountSevenSeg.scala 84:10]
    io_an <= UInt<4>("he") @[CountSevenSeg.scala 85:9]
    counter2hz <= mux(reset, UInt<26>("h0"), _GEN_0) @[CountSevenSeg.scala 14:{27,27}]
    counter4bit <= mux(reset, UInt<4>("h0"), _GEN_1) @[CountSevenSeg.scala 15:{28,28}]
    converter.clock <= clock
    converter.reset <= reset
    converter.io_sw <= counter4bit @[CountSevenSeg.scala 26:19]
