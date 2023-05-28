import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec


class VendingTest1 extends AnyFlatSpec with ChiselScalatestTester {
  "Vending machine test" should "pass" in {
    test(new VendingMachine(20)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      println("This test block expects the machine to successfully output \"releaseCan\" (sum >= price)")
      dut.io.price.poke(8.U) // set price to 8
      dut.clock.step(2)

      for (add10 <- 0 to 1) { // add to 10 from coin5
        dut.io.coin5.poke(true.B)
        dut.clock.step(2)
        dut.io.coin5.poke(false.B)
        dut.clock.step(2)
      }

      dut.io.buy.poke(true.B) // sum = 10 and price = 8
      dut.clock.step(2)
      dut.io.buy.poke(false.B) // buy success (sum = 2)
      dut.clock.step(3)

      dut.io.price.poke(10.U) // set price to 8
      dut.clock.step(2)

      for (add10 <- 0 to 3) { // add to 8 from coin2
        dut.io.coin2.poke(true.B)
        dut.clock.step(2)
        dut.io.coin2.poke(false.B)
        dut.clock.step(2)
      }

      dut.io.buy.poke(true.B) // sum = 10 and price = 10
      dut.clock.step(2)
      dut.io.buy.poke(false.B) // buy success (sum = 0)
      dut.clock.step(3)
    }
  }
}