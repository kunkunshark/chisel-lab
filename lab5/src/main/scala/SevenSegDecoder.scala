import chisel3._
import chisel3.util._

class SevenSegDecoder extends Module {
  val io = IO(new Bundle {
    val sw = Input(UInt(4.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault(0.U(7.W))

  // ***** your code starts here *****

  switch(io.sw) {
    is(0.U) { // 0
      sevSeg := "b0111111".U
    }
    is(1.U) { // 1
      sevSeg := "b0000110".U
    }
    is(2.U) { // 2
      sevSeg := "b1011011".U
    }
    is(3.U) { // 3
      sevSeg := "b1001111".U
    }
    is(4.U) { // 4
      sevSeg := "b1100110".U
    }
    is(5.U) { // 5
      sevSeg := "b1101101".U
    }
    is(6.U) { // 6
      sevSeg := "b1111101".U
    }
    is(7.U) { // 7
      sevSeg := "b0000111".U
    }
    is(8.U) { // 8
      sevSeg := "b1111111".U
    }
    is(9.U) { // 9
      sevSeg := "b1101111".U
    }
    is(10.U) { // A
      sevSeg := "b1110111".U
    }
    is(11.U) { // b
      sevSeg := "b1111100".U
    }
    is(12.U) { // C
      sevSeg := "b0111001".U
    }
    is(13.U) { // d
      sevSeg := "b1011110".U
    }
    is(14.U) { // E
      sevSeg := "b1111001".U
    }
    is(15.U) { // F
      sevSeg := "b1110001".U
    }
  }

  // ***** your code ends here *****

  io.seg := ~sevSeg
  io.an := "b1110".U
}

// generate Verilog
object SevenSegDecoder extends App {
  emitVerilog(new SevenSegDecoder())
}


