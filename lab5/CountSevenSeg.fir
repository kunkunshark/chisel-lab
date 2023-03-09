circuit CountSevenSeg :
  module SevenSegDecoder :
    input clock : Clock
    input reset : Reset
    output io : { flip sw : UInt<4>, seg : UInt<7>, an : UInt<4>}

    wire sevSeg : UInt<7> @[SevenSegDecoder.scala 11:27]
    sevSeg <= UInt<7>("h0") @[SevenSegDecoder.scala 11:27]
    node _T = eq(UInt<1>("h0"), io.sw) @[SevenSegDecoder.scala 14:17]
    when _T : @[SevenSegDecoder.scala 14:17]
      sevSeg <= UInt<6>("h3f") @[SevenSegDecoder.scala 16:14]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.sw) @[SevenSegDecoder.scala 14:17]
      when _T_1 : @[SevenSegDecoder.scala 14:17]
        sevSeg <= UInt<3>("h6") @[SevenSegDecoder.scala 19:14]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.sw) @[SevenSegDecoder.scala 14:17]
        when _T_2 : @[SevenSegDecoder.scala 14:17]
          sevSeg <= UInt<7>("h5b") @[SevenSegDecoder.scala 22:14]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.sw) @[SevenSegDecoder.scala 14:17]
          when _T_3 : @[SevenSegDecoder.scala 14:17]
            sevSeg <= UInt<7>("h4f") @[SevenSegDecoder.scala 25:14]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.sw) @[SevenSegDecoder.scala 14:17]
            when _T_4 : @[SevenSegDecoder.scala 14:17]
              sevSeg <= UInt<7>("h66") @[SevenSegDecoder.scala 28:14]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.sw) @[SevenSegDecoder.scala 14:17]
              when _T_5 : @[SevenSegDecoder.scala 14:17]
                sevSeg <= UInt<7>("h6d") @[SevenSegDecoder.scala 31:14]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.sw) @[SevenSegDecoder.scala 14:17]
                when _T_6 : @[SevenSegDecoder.scala 14:17]
                  sevSeg <= UInt<7>("h7d") @[SevenSegDecoder.scala 34:14]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.sw) @[SevenSegDecoder.scala 14:17]
                  when _T_7 : @[SevenSegDecoder.scala 14:17]
                    sevSeg <= UInt<3>("h7") @[SevenSegDecoder.scala 37:14]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.sw) @[SevenSegDecoder.scala 14:17]
                    when _T_8 : @[SevenSegDecoder.scala 14:17]
                      sevSeg <= UInt<7>("h7f") @[SevenSegDecoder.scala 40:14]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.sw) @[SevenSegDecoder.scala 14:17]
                      when _T_9 : @[SevenSegDecoder.scala 14:17]
                        sevSeg <= UInt<7>("h6f") @[SevenSegDecoder.scala 43:14]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.sw) @[SevenSegDecoder.scala 14:17]
                        when _T_10 : @[SevenSegDecoder.scala 14:17]
                          sevSeg <= UInt<7>("h77") @[SevenSegDecoder.scala 46:14]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.sw) @[SevenSegDecoder.scala 14:17]
                          when _T_11 : @[SevenSegDecoder.scala 14:17]
                            sevSeg <= UInt<7>("h7c") @[SevenSegDecoder.scala 49:14]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.sw) @[SevenSegDecoder.scala 14:17]
                            when _T_12 : @[SevenSegDecoder.scala 14:17]
                              sevSeg <= UInt<6>("h39") @[SevenSegDecoder.scala 52:14]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.sw) @[SevenSegDecoder.scala 14:17]
                              when _T_13 : @[SevenSegDecoder.scala 14:17]
                                sevSeg <= UInt<7>("h5e") @[SevenSegDecoder.scala 55:14]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.sw) @[SevenSegDecoder.scala 14:17]
                                when _T_14 : @[SevenSegDecoder.scala 14:17]
                                  sevSeg <= UInt<7>("h79") @[SevenSegDecoder.scala 58:14]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.sw) @[SevenSegDecoder.scala 14:17]
                                  when _T_15 : @[SevenSegDecoder.scala 14:17]
                                    sevSeg <= UInt<7>("h71") @[SevenSegDecoder.scala 61:14]
    node _io_seg_T = not(sevSeg) @[SevenSegDecoder.scala 66:13]
    io.seg <= _io_seg_T @[SevenSegDecoder.scala 66:10]
    io.an <= UInt<4>("he") @[SevenSegDecoder.scala 67:9]

  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io : { seg : UInt<7>, an : UInt<4>}

    wire sevSeg : UInt<7> @[CountSevenSeg.scala 10:27]
    sevSeg <= UInt<7>("h7f") @[CountSevenSeg.scala 10:27]
    reg counter2hz : UInt<26>, clock with :
      reset => (reset, UInt<26>("h0")) @[CountSevenSeg.scala 14:27]
    reg counter4bit : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[CountSevenSeg.scala 15:28]
    node _T = eq(counter2hz, UInt<26>("h2faf080")) @[CountSevenSeg.scala 17:19]
    when _T : @[CountSevenSeg.scala 17:35]
      counter2hz <= UInt<1>("h0") @[CountSevenSeg.scala 18:16]
      node _counter4bit_T = add(counter4bit, UInt<1>("h1")) @[CountSevenSeg.scala 19:32]
      node _counter4bit_T_1 = tail(_counter4bit_T, 1) @[CountSevenSeg.scala 19:32]
      counter4bit <= _counter4bit_T_1 @[CountSevenSeg.scala 19:17]
    else :
      node _counter2hz_T = add(counter2hz, UInt<1>("h1")) @[CountSevenSeg.scala 21:30]
      node _counter2hz_T_1 = tail(_counter2hz_T, 1) @[CountSevenSeg.scala 21:30]
      counter2hz <= _counter2hz_T_1 @[CountSevenSeg.scala 21:16]
    inst converter of SevenSegDecoder @[CountSevenSeg.scala 25:25]
    converter.clock <= clock
    converter.reset <= reset
    converter.io.sw <= counter4bit @[CountSevenSeg.scala 26:19]
    sevSeg <= converter.io.seg @[CountSevenSeg.scala 27:10]
    io.seg <= sevSeg @[CountSevenSeg.scala 84:10]
    io.an <= UInt<4>("he") @[CountSevenSeg.scala 85:9]

