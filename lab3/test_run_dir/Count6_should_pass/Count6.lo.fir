FIRRTL version 1.1.0
circuit Count6 :
  module Count6 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg newReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), newReg) @[Count6.scala 12:23]
    node _T = eq(newReg, UInt<3>("h6")) @[Count6.scala 14:15]
    node _newReg_T = add(newReg, UInt<1>("h1")) @[Count6.scala 17:22]
    node _newReg_T_1 = tail(_newReg_T, 1) @[Count6.scala 17:22]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _newReg_T_1) @[Count6.scala 14:24 15:12 17:12]
    node res = newReg @[Count6.scala 8:17 20:7]
    io_dout <= res @[Count6.scala 24:11]
    newReg <= mux(reset, UInt<8>("h0"), _GEN_0) @[Count6.scala 12:{23,23}]
