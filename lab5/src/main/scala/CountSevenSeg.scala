import chisel3._

class CountSevenSeg extends Module {
  val io = IO(new Bundle {
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault("b1111111".U(7.W))

  // *** your code starts here

  val counter2hz = RegInit(0.U(26.W))
  val counter4bit = RegInit(0.U(4.W))

  when(counter2hz === 50000000.U) {
    counter2hz := 0.U
    counter4bit := counter4bit + 1.U
  }.otherwise {
    counter2hz := counter2hz + 1.U
  }

  val converter = Module(new SevenSegDecoder)
  converter.io.sw := counter4bit
  sevSeg := converter.io.seg

  // *** your code ends here

  io.seg := sevSeg
  io.an := "b1110".U
}

// generate Verilog
object CountSevenSeg extends App {
  emitVerilog(new CountSevenSeg())
}