import chisel3._

class BcdTable extends Module {
  val io=IO(new Bundle{
    val in  = Input (UInt(8.W))
    val out = Output(UInt(8.W))
  })

  val table = Wire(Vec(100, UInt(8.W)))
  //Convert binary to BCD
  for (i <- 0 until 100) {
    table(i) := (((i/10)<<4) + i%10).U
  }

  io.out := table(io.in)
}