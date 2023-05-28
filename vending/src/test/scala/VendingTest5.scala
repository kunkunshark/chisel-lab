import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec


class VendingTest5 extends AnyFlatSpec with ChiselScalatestTester {
  "Vending machine test" should "pass" in {
    test(new VendingMachine(20)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      println("This test block expects the machine to successfully output \"alarm\" to avoid overflow (for add5, when sum < 27)")
      dut.io.price.poke(30.U) // set price to 30
      dut.clock.step(2)

      for (add30 <- 0 to 5) { // add to 30 from coin5
        dut.io.coin5.poke(true.B)
        dut.clock.step(2)
        dut.io.coin5.poke(false.B)
        dut.clock.step(2)
      }
      dut.clock.step(3)

      dut.io.coin5.poke(true.B) // overflow detected and set alarm to true
      dut.clock.step(5)
      dut.io.coin5.poke(false.B)
      dut.clock.step(2)

      dut.io.coin2.poke(true.B) // overflow detected and set alarm to true
      dut.clock.step(5)
      dut.io.coin2.poke(false.B)
      dut.clock.step(2)

      dut.io.buy.poke(true.B) // sum = 30 and price = 30
      dut.clock.step(2)
      dut.io.buy.poke(false.B) // buy success (sum = 0)
      dut.clock.step(2)
    }
  }
}