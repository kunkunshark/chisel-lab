import chisel3._

class Count6 extends Module {
  val io = IO(new Bundle {
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****

  val newReg = RegInit(0.U(8.W))

  when(newReg === 6.U) {
    newReg := 0.U
  } . otherwise {
    newReg := newReg + 1.U
  }

  res := newReg

  // ***** your code ends here *****

  io.dout := res
}