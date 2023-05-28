import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec


class VendingTest3 extends AnyFlatSpec with ChiselScalatestTester {
  "Vending machine test" should "pass" in {
    test(new VendingMachine(20)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      println("This test block expects the coin bank to be full and set to state \"alarm\" (coin > 20)")
      dut.io.price.poke(25.U)
      dut.clock.step(2)
      for (full <- 0 to 4) {
        for (addto30 <- 0 until 5) {
          dut.io.coin5.poke(true.B)
          dut.clock.step(2)
          dut.io.coin5.poke(false.B)
          dut.clock.step(2)
        }
        dut.io.buy.poke(true.B)
        dut.clock.step(2)
        dut.io.buy.poke(false.B)
        dut.clock.step(2)
      }
    }
  }
}