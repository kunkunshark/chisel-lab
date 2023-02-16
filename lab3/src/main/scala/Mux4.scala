import Chisel.switch
import chisel3._
import chisel3.util.is

/**
  * Use Mux2 components to build a 4:1 multiplexer
  */

class Mux4 extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val c = Input(UInt(1.W))
    val d = Input(UInt(1.W))
    val sel = Input(UInt(2.W))
    val y = Output(UInt(1.W))
  })

  // ***** your code starts here *****

  /*
  // first attempt using switch

  switch(io.sel) {
    is( 0.U ) { io.y := io.a }
    is( 1.U ) { io.y := io.b }
    is( 2.U ) { io.y := io.c }
    is( 3.U ) { io.y := io.d }
  }
  */

  io.y := io.a
  when(io.sel === 1.U) {
    io.y := io.b
  }
  when(io.sel === 2.U) {
    io.y := io.c
  }
  when(io.sel === 3.U) {
    io.y := io.d
  }

  // create a Mux4 component out of Mux2 components
  // and connect the input and output ports.

  // ***** your code ends here *****
}