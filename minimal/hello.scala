import chisel3._

class Hello extends Module {
  val io = IO(new Bundle{
    val truth = UInt(8.W)
  })

  io.truth := 42.U
}

object Hello extends App {
  println("Hello World!")
  emitVerilog(new Hello())
}