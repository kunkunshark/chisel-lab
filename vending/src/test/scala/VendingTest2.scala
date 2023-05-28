import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec


class VendingTest2 extends AnyFlatSpec with ChiselScalatestTester {
  "Vending machine test" should "pass" in {
    test(new VendingMachine(20)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      println("This test block expects the machine to successfully output \"alarm\" (sum < price)")
      dut.io.price.poke(7.U)
      dut.clock.step(3)
      dut.io.coin2.poke(true.B)
      dut.clock.step(3)
      dut.io.coin2.poke(false.B)
      dut.clock.step(6)
      dut.io.buy.poke(true.B)
      dut.clock.step(3)
      dut.io.buy.poke(false.B)
      dut.clock.step(10)
    }
  }
}