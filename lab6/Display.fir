circuit Display :
  module SevenSegDec :
    input clock : Clock
    input reset : Reset
    output io : { flip in : UInt<4>, out : UInt<7>}

    wire sevSeg : UInt @[SevenSegDec.scala 10:27]
    sevSeg <= UInt<1>("h0") @[SevenSegDec.scala 10:27]
    node _T = eq(UInt<1>("h0"), io.in) @[SevenSegDec.scala 13:17]
    when _T : @[SevenSegDec.scala 13:17]
      sevSeg <= UInt<6>("h3f") @[SevenSegDec.scala 15:14]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.in) @[SevenSegDec.scala 13:17]
      when _T_1 : @[SevenSegDec.scala 13:17]
        sevSeg <= UInt<3>("h6") @[SevenSegDec.scala 18:14]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.in) @[SevenSegDec.scala 13:17]
        when _T_2 : @[SevenSegDec.scala 13:17]
          sevSeg <= UInt<7>("h5b") @[SevenSegDec.scala 21:14]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.in) @[SevenSegDec.scala 13:17]
          when _T_3 : @[SevenSegDec.scala 13:17]
            sevSeg <= UInt<7>("h4f") @[SevenSegDec.scala 24:14]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.in) @[SevenSegDec.scala 13:17]
            when _T_4 : @[SevenSegDec.scala 13:17]
              sevSeg <= UInt<7>("h66") @[SevenSegDec.scala 27:14]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.in) @[SevenSegDec.scala 13:17]
              when _T_5 : @[SevenSegDec.scala 13:17]
                sevSeg <= UInt<7>("h6d") @[SevenSegDec.scala 30:14]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.in) @[SevenSegDec.scala 13:17]
                when _T_6 : @[SevenSegDec.scala 13:17]
                  sevSeg <= UInt<7>("h7d") @[SevenSegDec.scala 33:14]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.in) @[SevenSegDec.scala 13:17]
                  when _T_7 : @[SevenSegDec.scala 13:17]
                    sevSeg <= UInt<3>("h7") @[SevenSegDec.scala 36:14]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.in) @[SevenSegDec.scala 13:17]
                    when _T_8 : @[SevenSegDec.scala 13:17]
                      sevSeg <= UInt<7>("h7f") @[SevenSegDec.scala 39:14]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.in) @[SevenSegDec.scala 13:17]
                      when _T_9 : @[SevenSegDec.scala 13:17]
                        sevSeg <= UInt<7>("h6f") @[SevenSegDec.scala 42:14]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.in) @[SevenSegDec.scala 13:17]
                        when _T_10 : @[SevenSegDec.scala 13:17]
                          sevSeg <= UInt<7>("h77") @[SevenSegDec.scala 45:14]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.in) @[SevenSegDec.scala 13:17]
                          when _T_11 : @[SevenSegDec.scala 13:17]
                            sevSeg <= UInt<7>("h7c") @[SevenSegDec.scala 48:14]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.in) @[SevenSegDec.scala 13:17]
                            when _T_12 : @[SevenSegDec.scala 13:17]
                              sevSeg <= UInt<6>("h39") @[SevenSegDec.scala 51:14]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.in) @[SevenSegDec.scala 13:17]
                              when _T_13 : @[SevenSegDec.scala 13:17]
                                sevSeg <= UInt<7>("h5e") @[SevenSegDec.scala 54:14]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.in) @[SevenSegDec.scala 13:17]
                                when _T_14 : @[SevenSegDec.scala 13:17]
                                  sevSeg <= UInt<7>("h79") @[SevenSegDec.scala 57:14]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.in) @[SevenSegDec.scala 13:17]
                                  when _T_15 : @[SevenSegDec.scala 13:17]
                                    sevSeg <= UInt<7>("h71") @[SevenSegDec.scala 60:14]
    io.out <= sevSeg @[SevenSegDec.scala 66:10]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : Reset
    output io : { flip sum : UInt<8>, flip price : UInt<8>, seg : UInt<7>, an : UInt<4>}

    wire sevSeg : UInt<7> @[DisplayMultiplexer.scala 12:27]
    sevSeg <= UInt<7>("h7f") @[DisplayMultiplexer.scala 12:27]
    wire select : UInt<4> @[DisplayMultiplexer.scala 13:27]
    select <= UInt<4>("h1") @[DisplayMultiplexer.scala 13:27]
    reg counterClock : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[DisplayMultiplexer.scala 17:29]
    reg counterAn : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[DisplayMultiplexer.scala 18:27]
    node a = bits(io.price, 3, 0) @[DisplayMultiplexer.scala 20:19]
    node b = bits(io.price, 7, 4) @[DisplayMultiplexer.scala 21:19]
    node c = bits(io.sum, 3, 0) @[DisplayMultiplexer.scala 22:19]
    node d = bits(io.sum, 7, 4) @[DisplayMultiplexer.scala 23:19]
    node _T = eq(counterClock, UInt<17>("h186a0")) @[DisplayMultiplexer.scala 25:22]
    when _T : @[DisplayMultiplexer.scala 25:36]
      counterClock <= UInt<1>("h0") @[DisplayMultiplexer.scala 26:18]
      node _counterAn_T = add(counterAn, UInt<1>("h1")) @[DisplayMultiplexer.scala 27:28]
      node _counterAn_T_1 = tail(_counterAn_T, 1) @[DisplayMultiplexer.scala 27:28]
      counterAn <= _counterAn_T_1 @[DisplayMultiplexer.scala 27:15]
    else :
      node _counterClock_T = add(counterClock, UInt<1>("h1")) @[DisplayMultiplexer.scala 30:34]
      node _counterClock_T_1 = tail(_counterClock_T, 1) @[DisplayMultiplexer.scala 30:34]
      counterClock <= _counterClock_T_1 @[DisplayMultiplexer.scala 30:18]
    node _T_1 = eq(UInt<1>("h0"), counterAn) @[DisplayMultiplexer.scala 33:21]
    when _T_1 : @[DisplayMultiplexer.scala 33:21]
      select <= UInt<1>("h1") @[DisplayMultiplexer.scala 34:26]
    else :
      node _T_2 = eq(UInt<1>("h1"), counterAn) @[DisplayMultiplexer.scala 33:21]
      when _T_2 : @[DisplayMultiplexer.scala 33:21]
        select <= UInt<2>("h2") @[DisplayMultiplexer.scala 35:26]
      else :
        node _T_3 = eq(UInt<2>("h2"), counterAn) @[DisplayMultiplexer.scala 33:21]
        when _T_3 : @[DisplayMultiplexer.scala 33:21]
          select <= UInt<3>("h4") @[DisplayMultiplexer.scala 36:26]
        else :
          node _T_4 = eq(UInt<2>("h3"), counterAn) @[DisplayMultiplexer.scala 33:21]
          when _T_4 : @[DisplayMultiplexer.scala 33:21]
            select <= UInt<4>("h8") @[DisplayMultiplexer.scala 37:26]
    wire MuxOut : UInt<4> @[DisplayMultiplexer.scala 40:27]
    MuxOut <= UInt<4>("h0") @[DisplayMultiplexer.scala 40:27]
    node _T_5 = eq(counterAn, UInt<1>("h0")) @[DisplayMultiplexer.scala 42:18]
    when _T_5 : @[DisplayMultiplexer.scala 42:31]
      MuxOut <= a @[DisplayMultiplexer.scala 43:12]
    else :
      node _T_6 = eq(counterAn, UInt<1>("h1")) @[DisplayMultiplexer.scala 44:25]
      when _T_6 : @[DisplayMultiplexer.scala 44:38]
        MuxOut <= b @[DisplayMultiplexer.scala 45:12]
      else :
        node _T_7 = eq(counterAn, UInt<2>("h2")) @[DisplayMultiplexer.scala 46:25]
        when _T_7 : @[DisplayMultiplexer.scala 46:38]
          MuxOut <= c @[DisplayMultiplexer.scala 47:12]
        else :
          MuxOut <= d @[DisplayMultiplexer.scala 49:12]
    inst converter of SevenSegDec @[DisplayMultiplexer.scala 52:25]
    converter.clock <= clock
    converter.reset <= reset
    converter.io.in <= MuxOut @[DisplayMultiplexer.scala 53:19]
    sevSeg <= converter.io.out @[DisplayMultiplexer.scala 54:10]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 58:13]
    io.seg <= _io_seg_T @[DisplayMultiplexer.scala 58:10]
    node _io_an_T = not(select) @[DisplayMultiplexer.scala 59:12]
    io.an <= _io_an_T @[DisplayMultiplexer.scala 59:9]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<16>, seg : UInt<7>, an : UInt<4>}

    inst dispMux of DisplayMultiplexer @[Display.scala 15:23]
    dispMux.clock <= clock
    dispMux.reset <= reset
    node _dispMux_io_price_T = bits(io.sw, 7, 0) @[Display.scala 18:28]
    dispMux.io.price <= _dispMux_io_price_T @[Display.scala 18:20]
    node _dispMux_io_sum_T = bits(io.sw, 15, 8) @[Display.scala 19:26]
    dispMux.io.sum <= _dispMux_io_sum_T @[Display.scala 19:18]
    io.seg <= dispMux.io.seg @[Display.scala 22:10]
    io.an <= dispMux.io.an @[Display.scala 23:9]

