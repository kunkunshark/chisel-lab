FIRRTL version 1.1.0
circuit Display :
  module DisplayMultiplexer :
    input clock : Clock
    input reset : UInt<1>
    input io_sum : UInt<8>
    input io_price : UInt<8>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    reg counterClock : UInt<17>, clock with :
      reset => (UInt<1>("h0"), counterClock) @[DisplayMultiplexer.scala 17:29]
    reg counterAn : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counterAn) @[DisplayMultiplexer.scala 18:27]
    node _T = eq(counterClock, UInt<4>("ha")) @[DisplayMultiplexer.scala 20:22]
    node _T_1 = eq(counterAn, UInt<4>("h8")) @[DisplayMultiplexer.scala 23:20]
    node _counterAn_T = mul(counterAn, UInt<2>("h2")) @[DisplayMultiplexer.scala 26:30]
    node _GEN_0 = mux(_T_1, UInt<1>("h1"), _counterAn_T) @[DisplayMultiplexer.scala 23:29 24:17 26:17]
    node _counterClock_T = add(counterClock, UInt<1>("h1")) @[DisplayMultiplexer.scala 30:34]
    node _counterClock_T_1 = tail(_counterClock_T, 1) @[DisplayMultiplexer.scala 30:34]
    node _GEN_1 = mux(_T, UInt<1>("h0"), _counterClock_T_1) @[DisplayMultiplexer.scala 20:32 21:18 30:18]
    node _GEN_2 = mux(_T, _GEN_0, counterAn) @[DisplayMultiplexer.scala 18:27 20:32]
    node sevSeg = UInt<7>("h7f") @[DisplayMultiplexer.scala 12:{27,27}]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 37:13]
    node select = counterAn @[DisplayMultiplexer.scala 13:27 33:10]
    node _io_an_T = not(select) @[DisplayMultiplexer.scala 38:12]
    io_seg <= _io_seg_T @[DisplayMultiplexer.scala 37:10]
    io_an <= _io_an_T @[DisplayMultiplexer.scala 38:9]
    counterClock <= mux(reset, UInt<17>("h0"), _GEN_1) @[DisplayMultiplexer.scala 17:{29,29}]
    counterAn <= bits(mux(reset, UInt<4>("h1"), _GEN_2), 3, 0) @[DisplayMultiplexer.scala 18:{27,27}]

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
