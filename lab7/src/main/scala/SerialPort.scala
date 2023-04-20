import chisel3._
import chisel3.util._
import chisel.lib.uart._

/**
  * This is the top level to develop the display multiplexing circuit.
  * The multiplexing circuit is in the DisplayMultiplexer.
  */
class SerialPort(frequ: Int) extends Module {
  val io = IO(new Bundle {
    val tx = Output(Bool())
    val led = Output(Bool())
  })
  io.led := true.B


  val uart = Module(new BufferedTx(100000000, 115200))
  /*
  uart.io.channel.valid := true.B
  uart.io.channel.bits  := '0'.U
  io.tx := uart.io.txd
  */

  val counter1Hz = RegInit(0.U(26.W))
  val ledState   = RegInit(0.U(1.W))


  when(counter1Hz === 100000000.U) {
    counter1Hz := 0.U
    uart.io.channel.valid := true.B
    ledState := ~ledState
  }.otherwise{
    counter1Hz := counter1Hz + 1.U
  }

  io.led := ledState
  io.tx  := uart.io.txd
}

// generate Verilog
object SerialPort extends App {
  emitVerilog(new SerialPort(100000000))
}