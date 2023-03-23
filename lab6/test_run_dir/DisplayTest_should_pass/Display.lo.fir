FIRRTL version 1.1.0
circuit Display :
  module SevenSegDec :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out : UInt<7>

    node _T = eq(UInt<1>("h0"), io_in) @[SevenSegDec.scala 13:17]
    node _T_1 = eq(UInt<1>("h1"), io_in) @[SevenSegDec.scala 13:17]
    node _T_2 = eq(UInt<2>("h2"), io_in) @[SevenSegDec.scala 13:17]
    node _T_3 = eq(UInt<2>("h3"), io_in) @[SevenSegDec.scala 13:17]
    node _T_4 = eq(UInt<3>("h4"), io_in) @[SevenSegDec.scala 13:17]
    node _T_5 = eq(UInt<3>("h5"), io_in) @[SevenSegDec.scala 13:17]
    node _T_6 = eq(UInt<3>("h6"), io_in) @[SevenSegDec.scala 13:17]
    node _T_7 = eq(UInt<3>("h7"), io_in) @[SevenSegDec.scala 13:17]
    node _T_8 = eq(UInt<4>("h8"), io_in) @[SevenSegDec.scala 13:17]
    node _T_9 = eq(UInt<4>("h9"), io_in) @[SevenSegDec.scala 13:17]
    node _T_10 = eq(UInt<4>("ha"), io_in) @[SevenSegDec.scala 13:17]
    node _T_11 = eq(UInt<4>("hb"), io_in) @[SevenSegDec.scala 13:17]
    node _T_12 = eq(UInt<4>("hc"), io_in) @[SevenSegDec.scala 13:17]
    node _T_13 = eq(UInt<4>("hd"), io_in) @[SevenSegDec.scala 13:17]
    node _T_14 = eq(UInt<4>("he"), io_in) @[SevenSegDec.scala 13:17]
    node _T_15 = eq(UInt<4>("hf"), io_in) @[SevenSegDec.scala 13:17]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<1>("h0")) @[SevenSegDec.scala 13:17 60:14 10:27]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[SevenSegDec.scala 13:17 57:14]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[SevenSegDec.scala 13:17 54:14]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[SevenSegDec.scala 13:17 51:14]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[SevenSegDec.scala 13:17 48:14]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[SevenSegDec.scala 13:17 45:14]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[SevenSegDec.scala 13:17 42:14]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[SevenSegDec.scala 13:17 39:14]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[SevenSegDec.scala 13:17 36:14]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[SevenSegDec.scala 13:17 33:14]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[SevenSegDec.scala 13:17 30:14]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[SevenSegDec.scala 13:17 27:14]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[SevenSegDec.scala 13:17 24:14]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[SevenSegDec.scala 13:17 21:14]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[SevenSegDec.scala 13:17 18:14]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[SevenSegDec.scala 13:17 15:14]
    node sevSeg = _GEN_15 @[SevenSegDec.scala 10:27]
    node _io_out_T = not(sevSeg) @[SevenSegDec.scala 66:13]
    io_out <= _io_out_T @[SevenSegDec.scala 66:10]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : UInt<1>
    input io_sum : UInt<8>
    input io_price : UInt<8>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst converter of SevenSegDec @[DisplayMultiplexer.scala 57:25]
    reg counterClock : UInt<17>, clock with :
      reset => (UInt<1>("h0"), counterClock) @[DisplayMultiplexer.scala 17:29]
    reg counterAn : UInt<2>, clock with :
      reset => (UInt<1>("h0"), counterAn) @[DisplayMultiplexer.scala 18:27]
    node a = bits(io_sum, 7, 4) @[DisplayMultiplexer.scala 20:19]
    node b = bits(io_sum, 3, 0) @[DisplayMultiplexer.scala 21:19]
    node c = bits(io_price, 7, 4) @[DisplayMultiplexer.scala 22:19]
    node d = bits(io_price, 3, 0) @[DisplayMultiplexer.scala 23:19]
    node _T = eq(counterClock, UInt<4>("ha")) @[DisplayMultiplexer.scala 25:22]
    node _T_1 = eq(counterAn, UInt<2>("h3")) @[DisplayMultiplexer.scala 28:20]
    node _counterAn_T = add(counterAn, UInt<1>("h1")) @[DisplayMultiplexer.scala 31:30]
    node _counterAn_T_1 = tail(_counterAn_T, 1) @[DisplayMultiplexer.scala 31:30]
    node _GEN_0 = mux(_T_1, UInt<1>("h0"), _counterAn_T_1) @[DisplayMultiplexer.scala 28:29 29:17 31:17]
    node _counterClock_T = add(counterClock, UInt<1>("h1")) @[DisplayMultiplexer.scala 35:34]
    node _counterClock_T_1 = tail(_counterClock_T, 1) @[DisplayMultiplexer.scala 35:34]
    node _GEN_1 = mux(_T, UInt<1>("h0"), _counterClock_T_1) @[DisplayMultiplexer.scala 25:32 26:18 35:18]
    node _GEN_2 = mux(_T, _GEN_0, counterAn) @[DisplayMultiplexer.scala 18:27 25:32]
    node _T_2 = eq(UInt<1>("h0"), counterAn) @[DisplayMultiplexer.scala 38:21]
    node _T_3 = eq(UInt<1>("h1"), counterAn) @[DisplayMultiplexer.scala 38:21]
    node _T_4 = eq(UInt<2>("h2"), counterAn) @[DisplayMultiplexer.scala 38:21]
    node _T_5 = eq(UInt<2>("h3"), counterAn) @[DisplayMultiplexer.scala 38:21]
    node _GEN_3 = mux(_T_5, UInt<4>("h8"), UInt<4>("h1")) @[DisplayMultiplexer.scala 38:21 42:26 13:27]
    node _GEN_4 = mux(_T_4, UInt<3>("h4"), _GEN_3) @[DisplayMultiplexer.scala 38:21 41:26]
    node _GEN_5 = mux(_T_3, UInt<2>("h2"), _GEN_4) @[DisplayMultiplexer.scala 38:21 40:26]
    node _GEN_6 = mux(_T_2, UInt<1>("h1"), _GEN_5) @[DisplayMultiplexer.scala 38:21 39:26]
    node select = _GEN_6 @[DisplayMultiplexer.scala 13:27]
    node _T_6 = eq(select, UInt<1>("h1")) @[DisplayMultiplexer.scala 47:15]
    node _T_7 = eq(select, UInt<2>("h2")) @[DisplayMultiplexer.scala 49:22]
    node _T_8 = eq(select, UInt<3>("h4")) @[DisplayMultiplexer.scala 51:22]
    node _T_9 = eq(select, UInt<4>("h8")) @[DisplayMultiplexer.scala 53:22]
    node _GEN_7 = mux(_T_9, d, UInt<4>("h0")) @[DisplayMultiplexer.scala 53:37 54:12 45:27]
    node _GEN_8 = mux(_T_8, c, _GEN_7) @[DisplayMultiplexer.scala 51:37 52:12]
    node _GEN_9 = mux(_T_7, b, _GEN_8) @[DisplayMultiplexer.scala 49:37 50:12]
    node _GEN_10 = mux(_T_6, a, _GEN_9) @[DisplayMultiplexer.scala 47:30 48:12]
    node sevSeg = converter.io_out @[DisplayMultiplexer.scala 12:27 59:10]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 63:13]
    node _io_an_T = not(select) @[DisplayMultiplexer.scala 64:12]
    node MuxOut = _GEN_10 @[DisplayMultiplexer.scala 45:27]
    io_seg <= _io_seg_T @[DisplayMultiplexer.scala 63:10]
    io_an <= _io_an_T @[DisplayMultiplexer.scala 64:9]
    counterClock <= mux(reset, UInt<17>("h0"), _GEN_1) @[DisplayMultiplexer.scala 17:{29,29}]
    counterAn <= mux(reset, UInt<2>("h0"), _GEN_2) @[DisplayMultiplexer.scala 18:{27,27}]
    converter.clock <= clock
    converter.reset <= reset
    converter.io_in <= MuxOut @[DisplayMultiplexer.scala 58:19]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<16>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst dispMux of DisplayMultiplexer @[Display.scala 15:23]
    node _dispMux_io_price_T = bits(io_sw, 7, 0) @[Display.scala 18:28]
    node _dispMux_io_sum_T = bits(io_sw, 15, 8) @[Display.scala 19:26]
    io_seg <= dispMux.io_seg @[Display.scala 22:10]
    io_an <= dispMux.io_an @[Display.scala 23:9]
    dispMux.clock <= clock
    dispMux.reset <= reset
    dispMux.io_sum <= _dispMux_io_sum_T @[Display.scala 19:18]
    dispMux.io_price <= _dispMux_io_price_T @[Display.scala 18:20]
