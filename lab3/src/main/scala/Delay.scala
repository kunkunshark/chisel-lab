import chisel3._

class Delay extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****

  val Reg = RegNext(RegNext(io.din))
  res := Reg

  // the above example is the most simplified code
  // to make the two clock cycles delay

  /*
  refer to page 76 Chisel Book for more
  info regarding creation of registers

  // do both example twice to have two clock cycles delay
  val delayReg = Reg(UInt(4.W)) // this creates like a variable without initializing the value
  delayReg := io.din

  val valReg = RegInit(0.U(4.W)) // this creates variable and initializes the value to 0 every start
  valReg := io.din
  */

  // ***** your code ends here *****

  io.dout := res
}