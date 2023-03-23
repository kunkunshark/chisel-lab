module SevenSegDec(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_0 = 4'hf == io_in ? 7'h71 : 7'h0; // @[SevenSegDec.scala 13:17 60:14 10:27]
  wire [6:0] _GEN_1 = 4'he == io_in ? 7'h79 : _GEN_0; // @[SevenSegDec.scala 13:17 57:14]
  wire [6:0] _GEN_2 = 4'hd == io_in ? 7'h5e : _GEN_1; // @[SevenSegDec.scala 13:17 54:14]
  wire [6:0] _GEN_3 = 4'hc == io_in ? 7'h39 : _GEN_2; // @[SevenSegDec.scala 13:17 51:14]
  wire [6:0] _GEN_4 = 4'hb == io_in ? 7'h7c : _GEN_3; // @[SevenSegDec.scala 13:17 48:14]
  wire [6:0] _GEN_5 = 4'ha == io_in ? 7'h77 : _GEN_4; // @[SevenSegDec.scala 13:17 45:14]
  wire [6:0] _GEN_6 = 4'h9 == io_in ? 7'h6f : _GEN_5; // @[SevenSegDec.scala 13:17 42:14]
  wire [6:0] _GEN_7 = 4'h8 == io_in ? 7'h7f : _GEN_6; // @[SevenSegDec.scala 13:17 39:14]
  wire [6:0] _GEN_8 = 4'h7 == io_in ? 7'h7 : _GEN_7; // @[SevenSegDec.scala 13:17 36:14]
  wire [6:0] _GEN_9 = 4'h6 == io_in ? 7'h7d : _GEN_8; // @[SevenSegDec.scala 13:17 33:14]
  wire [6:0] _GEN_10 = 4'h5 == io_in ? 7'h6d : _GEN_9; // @[SevenSegDec.scala 13:17 30:14]
  wire [6:0] _GEN_11 = 4'h4 == io_in ? 7'h66 : _GEN_10; // @[SevenSegDec.scala 13:17 27:14]
  wire [6:0] _GEN_12 = 4'h3 == io_in ? 7'h4f : _GEN_11; // @[SevenSegDec.scala 13:17 24:14]
  wire [6:0] _GEN_13 = 4'h2 == io_in ? 7'h5b : _GEN_12; // @[SevenSegDec.scala 13:17 21:14]
  wire [6:0] _GEN_14 = 4'h1 == io_in ? 7'h6 : _GEN_13; // @[SevenSegDec.scala 13:17 18:14]
  assign io_out = 4'h0 == io_in ? 7'h3f : _GEN_14; // @[SevenSegDec.scala 13:17 15:14]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum,
  input  [7:0] io_price,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] converter_io_in; // @[DisplayMultiplexer.scala 52:25]
  wire [6:0] converter_io_out; // @[DisplayMultiplexer.scala 52:25]
  reg [16:0] counterClock; // @[DisplayMultiplexer.scala 17:29]
  reg [1:0] counterAn; // @[DisplayMultiplexer.scala 18:27]
  wire [3:0] a = io_price[3:0]; // @[DisplayMultiplexer.scala 20:19]
  wire [3:0] b = io_price[7:4]; // @[DisplayMultiplexer.scala 21:19]
  wire [3:0] c = io_sum[3:0]; // @[DisplayMultiplexer.scala 22:19]
  wire [3:0] d = io_sum[7:4]; // @[DisplayMultiplexer.scala 23:19]
  wire [1:0] _counterAn_T_1 = counterAn + 2'h1; // @[DisplayMultiplexer.scala 27:28]
  wire [16:0] _counterClock_T_1 = counterClock + 17'h1; // @[DisplayMultiplexer.scala 30:34]
  wire [3:0] _GEN_2 = 2'h3 == counterAn ? 4'h8 : 4'h1; // @[DisplayMultiplexer.scala 33:21 37:26 13:27]
  wire [3:0] _GEN_3 = 2'h2 == counterAn ? 4'h4 : _GEN_2; // @[DisplayMultiplexer.scala 33:21 36:26]
  wire [3:0] _GEN_4 = 2'h1 == counterAn ? 4'h2 : _GEN_3; // @[DisplayMultiplexer.scala 33:21 35:26]
  wire [3:0] select = 2'h0 == counterAn ? 4'h1 : _GEN_4; // @[DisplayMultiplexer.scala 33:21 34:26]
  wire [3:0] _GEN_6 = counterAn == 2'h2 ? c : d; // @[DisplayMultiplexer.scala 46:38 47:12 49:12]
  wire [3:0] _GEN_7 = counterAn == 2'h1 ? b : _GEN_6; // @[DisplayMultiplexer.scala 44:38 45:12]
  wire [6:0] sevSeg = converter_io_out; // @[DisplayMultiplexer.scala 12:27 54:10]
  SevenSegDec converter ( // @[DisplayMultiplexer.scala 52:25]
    .io_in(converter_io_in),
    .io_out(converter_io_out)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 58:13]
  assign io_an = ~select; // @[DisplayMultiplexer.scala 59:12]
  assign converter_io_in = counterAn == 2'h0 ? a : _GEN_7; // @[DisplayMultiplexer.scala 42:31 43:12]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 17:29]
      counterClock <= 17'h0; // @[DisplayMultiplexer.scala 17:29]
    end else if (counterClock == 17'h186a0) begin // @[DisplayMultiplexer.scala 25:36]
      counterClock <= 17'h0; // @[DisplayMultiplexer.scala 26:18]
    end else begin
      counterClock <= _counterClock_T_1; // @[DisplayMultiplexer.scala 30:18]
    end
    if (reset) begin // @[DisplayMultiplexer.scala 18:27]
      counterAn <= 2'h0; // @[DisplayMultiplexer.scala 18:27]
    end else if (counterClock == 17'h186a0) begin // @[DisplayMultiplexer.scala 25:36]
      counterAn <= _counterAn_T_1; // @[DisplayMultiplexer.scala 27:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  counterClock = _RAND_0[16:0];
  _RAND_1 = {1{`RANDOM}};
  counterAn = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Display(
  input         clock,
  input         reset,
  input  [15:0] io_sw,
  output [6:0]  io_seg,
  output [3:0]  io_an
);
  wire  dispMux_clock; // @[Display.scala 15:23]
  wire  dispMux_reset; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_sum; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_price; // @[Display.scala 15:23]
  wire [6:0] dispMux_io_seg; // @[Display.scala 15:23]
  wire [3:0] dispMux_io_an; // @[Display.scala 15:23]
  DisplayMultiplexer dispMux ( // @[Display.scala 15:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[Display.scala 22:10]
  assign io_an = dispMux_io_an; // @[Display.scala 23:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[Display.scala 19:26]
  assign dispMux_io_price = io_sw[7:0]; // @[Display.scala 18:28]
endmodule
