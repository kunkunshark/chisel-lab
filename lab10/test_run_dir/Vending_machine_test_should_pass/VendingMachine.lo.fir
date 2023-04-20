FIRRTL version 1.1.0
circuit VendingMachine :
  extmodule BlackVendingA :
    input price : UInt<5>
    input coin2 : UInt<1>
    input coin5 : UInt<1>
    input buy : UInt<1>
    output releaseCan : UInt<1>
    output alarm : UInt<1>
    output seg : UInt<7>
    output an : UInt<4>
    defname = BlackVendingA

  module VendingMachine :
    input clock : Clock
    input reset : UInt<1>
    input io_price : UInt<5>
    input io_coin2 : UInt<1>
    input io_coin5 : UInt<1>
    input io_buy : UInt<1>
    output io_releaseCan : UInt<1>
    output io_alarm : UInt<1>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst vending of BlackVendingA @[VendingMachine.scala 46:23]
    io_releaseCan <= vending.releaseCan @[VendingMachine.scala 48:14]
    io_alarm <= vending.alarm @[VendingMachine.scala 48:14]
    io_seg <= vending.seg @[VendingMachine.scala 48:14]
    io_an <= vending.an @[VendingMachine.scala 48:14]
    vending.price <= io_price @[VendingMachine.scala 48:14]
    vending.coin2 <= io_coin2 @[VendingMachine.scala 48:14]
    vending.coin5 <= io_coin5 @[VendingMachine.scala 48:14]
    vending.buy <= io_buy @[VendingMachine.scala 48:14]
