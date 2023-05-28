import chisel3._
import chisel3.util._

class VendingMachine(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val price = Input(UInt(5.W))
    val coin2 = Input(Bool())
    val coin5 = Input(Bool())
    val buy   = Input(Bool())
    val releaseCan = Output(Bool())
    val alarm      = Output(Bool())
    val seg = Output(UInt(7.W))
    val an  = Output(UInt(4.W))
  })

  // user-defined connecting wires
  val sevSeg      = WireDefault("b1111111".U(7.W))
  val select      = WireDefault("b0001".U(4.W))
  val MuxOut      = WireDefault(0.U(4.W))
  // user-defined supporting registers
  val sum      = RegInit(0.U(8.W))
  val state    = RegInit(0.U(3.W))
  val numberc2 = RegInit(0.U(5.W))
  val numberc5 = RegInit(0.U(5.W))
  // user-defined counters
  val counterClock = RegInit(0.U(17.W)) // 1kHz multiplex
  val counterAn    = RegInit(0.U(2.W))  // 4 digit display
  // user-defined components
  val bcdConv    = Module(new BcdTable)
  val SevSegConv = Module(new SevenSegDec)
  // rising-edge detectors
  val add2 = io.coin2 & !RegNext(io.coin2)
  val add5 = io.coin5 & !RegNext(io.coin5)
  // reference values for io(s)
  io.alarm      := false.B
  io.releaseCan := false.B

  // State machine
  switch (state) {
    is(0.U) { // idle state
      io.alarm := false.B
      io.releaseCan := false.B
      when(numberc2 > 19.U | numberc5 > 19.U) {
        state := 6.U
      }.elsewhen(add2 & sum < 30.U) {
        state := 1.U
      }.elsewhen(add5 & sum < 27.U) {
        state := 2.U
      }.elsewhen(io.buy & sum < io.price) {
        state := 3.U
      }.elsewhen(io.buy & sum >= io.price) {
        state := 4.U
      }
    }
    is(1.U) { // add 2 state
      sum := sum + 2.U
      numberc2 := numberc2 + 1.U
      state := 0.U
    }
    is(2.U) { // add 5 state
      sum := sum + 5.U
      numberc5 := numberc5 + 1.U
      state := 0.U
    }
    is(3.U) { // alarm state
      io.alarm := true.B
      when(!io.buy) {
        state := 0.U
      }
    }
    is(4.U) { // subtract price state
      sum := sum - io.price
      state := 5.U
    }
    is(5.U) { // release can state
      io.releaseCan := true.B
      when(!io.buy) {
        state := 0.U
      }
    }
    is(6.U) { // coin full state
      io.alarm := true.B
    }
  }

  // display clock
  when(counterClock === 100000.U) {
    counterClock := 0.U
    counterAn := counterAn + 1.U
  } . otherwise {
    counterClock := counterClock + 1.U
  }

  // display multiplex
  bcdConv.io.in := DontCare
  switch(counterAn) {
    is("b00".U) {
      bcdConv.io.in := io.price
      select := "b0001".U
      MuxOut := bcdConv.io.out(3, 0)
    }
    is("b01".U) {
      bcdConv.io.in := io.price
      select := "b0010".U
      MuxOut := bcdConv.io.out(7, 4)
    }
    is("b10".U) {
      bcdConv.io.in := sum
      select := "b0100".U
      MuxOut := bcdConv.io.out(3, 0)
    }
    is("b11".U) {
      bcdConv.io.in := sum
      select := "b1000".U
      MuxOut := bcdConv.io.out(7, 4)
    }
  }

  SevSegConv.io.in := MuxOut
  sevSeg := SevSegConv.io.out
  io.seg := ~sevSeg
  io.an  := ~select
}

// generate Verilog
object VendingMachine extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new VendingMachine(100000))
}