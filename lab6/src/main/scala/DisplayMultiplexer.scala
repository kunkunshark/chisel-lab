import chisel3._
import chisel3.util._

class DisplayMultiplexer(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val sum = Input(UInt(8.W))
    val price = Input(UInt(8.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault("b1111111".U(7.W))
  val select = WireDefault("b0001".U(4.W))

  // *** your code starts here

  val counterClock = RegInit(0.U(17.W))
  val counterAn  = RegInit(0.U(2.W))

  val a = io.price(3, 0) // price is much smaller than sum
  val b = io.price(7, 4) // it goes from MSB to LSB (higher to lower, i.e. 7 to 0)
  val c = io.sum  (3, 0) // the MSB is 7 and LSB is 0
  val d = io.sum  (7, 4) // sum is larger than price (it's the MSB)

  when (counterClock === 100000.U) { // change to 100 000 after clock debugging (for the requested 1kHz output)
    counterClock := 0.U
    counterAn := counterAn + 1.U
  }.otherwise {
    counterClock := counterClock + 1.U
  }

  // switch between the 4 sev-seg displays (0001 being the right and 1000 being the left)
  switch(counterAn) {
    is ("b00".U) {select := "b0001".U} // the rightmost sev-seg display (LSB)
    is ("b01".U) {select := "b0010".U}
    is ("b10".U) {select := "b0100".U}
    is ("b11".U) {select := "b1000".U} // the leftmost  sev-seg display (MSB)
  }

  // 4-to-1 multiplexer for determining which output goes to which sev-seg display
  val MuxOut = WireDefault(0.U(4.W))

  when(counterAn === "b00".U) {         // the MSB goes to the very left part
    MuxOut := a
  }. elsewhen(counterAn === "b01".U) {
    MuxOut := b
  }. elsewhen(counterAn === "b10".U) {
    MuxOut := c
  }. otherwise {                        // the LSB goes to the very right part
    MuxOut := d
  }

  // convert the 4-bit output of the multiplexer for the 7-bit sev-seg display
  val converter = Module(new SevenSegDec)
  converter.io.in := MuxOut
  sevSeg := converter.io.out

  // *** your code ends here

  io.seg := ~sevSeg
  io.an := ~select
}
