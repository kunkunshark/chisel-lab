circuit SerialPort :
  module Tx :
    input clock : Clock
    input reset : Reset
    output io : { txd : UInt<1>, flip channel : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}}

    reg shiftReg : UInt, clock with :
      reset => (reset, UInt<11>("h7ff")) @[Uart.scala 30:25]
    reg cntReg : UInt<20>, clock with :
      reset => (reset, UInt<20>("h0")) @[Uart.scala 31:23]
    reg bitsReg : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Uart.scala 32:24]
    node _io_channel_ready_T = eq(cntReg, UInt<1>("h0")) @[Uart.scala 34:31]
    node _io_channel_ready_T_1 = eq(bitsReg, UInt<1>("h0")) @[Uart.scala 34:52]
    node _io_channel_ready_T_2 = and(_io_channel_ready_T, _io_channel_ready_T_1) @[Uart.scala 34:40]
    io.channel.ready <= _io_channel_ready_T_2 @[Uart.scala 34:20]
    node _io_txd_T = bits(shiftReg, 0, 0) @[Uart.scala 35:21]
    io.txd <= _io_txd_T @[Uart.scala 35:10]
    node _T = eq(cntReg, UInt<1>("h0")) @[Uart.scala 37:15]
    when _T : @[Uart.scala 37:24]
      cntReg <= UInt<10>("h363") @[Uart.scala 39:12]
      node _T_1 = neq(bitsReg, UInt<1>("h0")) @[Uart.scala 40:18]
      when _T_1 : @[Uart.scala 40:27]
        node shift = shr(shiftReg, 1) @[Uart.scala 41:28]
        node _shiftReg_T = bits(shift, 9, 0) @[Uart.scala 42:33]
        node _shiftReg_T_1 = cat(UInt<1>("h1"), _shiftReg_T) @[Cat.scala 33:92]
        shiftReg <= _shiftReg_T_1 @[Uart.scala 42:16]
        node _bitsReg_T = sub(bitsReg, UInt<1>("h1")) @[Uart.scala 43:26]
        node _bitsReg_T_1 = tail(_bitsReg_T, 1) @[Uart.scala 43:26]
        bitsReg <= _bitsReg_T_1 @[Uart.scala 43:15]
      else :
        when io.channel.valid : @[Uart.scala 45:30]
          node _shiftReg_T_2 = cat(UInt<2>("h3"), io.channel.bits) @[Cat.scala 33:92]
          node _shiftReg_T_3 = cat(_shiftReg_T_2, UInt<1>("h0")) @[Cat.scala 33:92]
          shiftReg <= _shiftReg_T_3 @[Uart.scala 46:18]
          bitsReg <= UInt<4>("hb") @[Uart.scala 47:17]
        else :
          shiftReg <= UInt<11>("h7ff") @[Uart.scala 49:18]
    else :
      node _cntReg_T = sub(cntReg, UInt<1>("h1")) @[Uart.scala 54:22]
      node _cntReg_T_1 = tail(_cntReg_T, 1) @[Uart.scala 54:22]
      cntReg <= _cntReg_T_1 @[Uart.scala 54:12]


  module Buffer :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}, out : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}}

    reg stateReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Uart.scala 116:25]
    reg dataReg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[Uart.scala 117:24]
    node _io_in_ready_T = eq(stateReg, UInt<1>("h0")) @[Uart.scala 119:27]
    io.in.ready <= _io_in_ready_T @[Uart.scala 119:15]
    node _io_out_valid_T = eq(stateReg, UInt<1>("h1")) @[Uart.scala 120:28]
    io.out.valid <= _io_out_valid_T @[Uart.scala 120:16]
    node _T = eq(stateReg, UInt<1>("h0")) @[Uart.scala 122:17]
    when _T : @[Uart.scala 122:28]
      when io.in.valid : @[Uart.scala 123:23]
        dataReg <= io.in.bits @[Uart.scala 124:15]
        stateReg <= UInt<1>("h1") @[Uart.scala 125:16]
    else :
      when io.out.ready : @[Uart.scala 128:24]
        stateReg <= UInt<1>("h0") @[Uart.scala 129:16]
    io.out.bits <= dataReg @[Uart.scala 132:15]

  module BufferedTx :
    input clock : Clock
    input reset : Reset
    output io : { txd : UInt<1>, flip channel : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}}

    inst tx of Tx @[Uart.scala 143:18]
    tx.clock <= clock
    tx.reset <= reset
    inst buf of Buffer @[Uart.scala 144:19]
    buf.clock <= clock
    buf.reset <= reset
    buf.io.in <= io.channel @[Uart.scala 146:13]
    tx.io.channel <= buf.io.out @[Uart.scala 147:17]
    io.txd <= tx.io.txd @[Uart.scala 148:10]

  module SerialPort :
    input clock : Clock
    input reset : UInt<1>
    output io : { tx : UInt<1>, led : UInt<1>}

    io.led <= UInt<1>("h1") @[SerialPort.scala 14:10]
    inst uart of BufferedTx @[SerialPort.scala 16:20]
    uart.clock <= clock
    uart.reset <= reset
    uart.io.channel.valid <= UInt<1>("h1") @[SerialPort.scala 17:25]
    uart.io.channel.bits <= UInt<6>("h30") @[SerialPort.scala 18:25]
    io.tx <= uart.io.txd @[SerialPort.scala 19:9]

