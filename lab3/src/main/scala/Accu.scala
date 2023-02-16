import chisel3._

class Accu extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val setZero = Input(Bool())
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****

  val Reg = RegInit(0.U(8.W))

  when(io.setZero === 1.U) {
    Reg := 0.U
  } . otherwise {
    Reg := Reg + io.din
  }

  res := Reg

  // ***** your code ends here *****

  io.dout := res
}