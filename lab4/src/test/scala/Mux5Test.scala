import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Mux5Test extends AnyFlatSpec with ChiselScalatestTester {
  "Mux5 " should "pass" in {
    test(new Mux5()) { dut =>
      // write your test here
      for (a <- 0 to 1) {
        for (b <- 0 to 1) {
          for(c <- 0 to 1) {
            for (d <- 0 to 1) {
              for (e <- 0 to 1) {
                for (sel <- 0 to 1) {
                  dut.io.a.poke(a.U)
                  dut.io.b.poke(b.U)
                  dut.io.c.poke(c.U)
                  dut.io.d.poke(d.U)
                  dut.io.e.poke(e.U)
                  dut.io.sel.poke(sel.U)
                  dut.clock.step(1)

                  val res = if (sel == 0) a
                  else if (sel === 1) b
                  else if (sel === 2) c
                  else if (sel === 3) d
                  else e

                  dut.io.y.expect(res.U)
                }
              }
            }
          }
        }
      }
    }
  }
}
