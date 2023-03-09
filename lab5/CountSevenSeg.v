module SevenSegDecoder(
  input  [3:0] io_sw,
  output [6:0] io_seg
);
  wire [6:0] _GEN_0 = 4'hf == io_sw ? 7'h71 : 7'h0; // @[SevenSegDecoder.scala 14:17 61:14 11:27]
  wire [6:0] _GEN_1 = 4'he == io_sw ? 7'h79 : _GEN_0; // @[SevenSegDecoder.scala 14:17 58:14]
  wire [6:0] _GEN_2 = 4'hd == io_sw ? 7'h5e : _GEN_1; // @[SevenSegDecoder.scala 14:17 55:14]
  wire [6:0] _GEN_3 = 4'hc == io_sw ? 7'h39 : _GEN_2; // @[SevenSegDecoder.scala 14:17 52:14]
  wire [6:0] _GEN_4 = 4'hb == io_sw ? 7'h7c : _GEN_3; // @[SevenSegDecoder.scala 14:17 49:14]
  wire [6:0] _GEN_5 = 4'ha == io_sw ? 7'h77 : _GEN_4; // @[SevenSegDecoder.scala 14:17 46:14]
  wire [6:0] _GEN_6 = 4'h9 == io_sw ? 7'h6f : _GEN_5; // @[SevenSegDecoder.scala 14:17 43:14]
  wire [6:0] _GEN_7 = 4'h8 == io_sw ? 7'h7f : _GEN_6; // @[SevenSegDecoder.scala 14:17 40:14]
  wire [6:0] _GEN_8 = 4'h7 == io_sw ? 7'h7 : _GEN_7; // @[SevenSegDecoder.scala 14:17 37:14]
  wire [6:0] _GEN_9 = 4'h6 == io_sw ? 7'h7d : _GEN_8; // @[SevenSegDecoder.scala 14:17 34:14]
  wire [6:0] _GEN_10 = 4'h5 == io_sw ? 7'h6d : _GEN_9; // @[SevenSegDecoder.scala 14:17 31:14]
  wire [6:0] _GEN_11 = 4'h4 == io_sw ? 7'h66 : _GEN_10; // @[SevenSegDecoder.scala 14:17 28:14]
  wire [6:0] _GEN_12 = 4'h3 == io_sw ? 7'h4f : _GEN_11; // @[SevenSegDecoder.scala 14:17 25:14]
  wire [6:0] _GEN_13 = 4'h2 == io_sw ? 7'h5b : _GEN_12; // @[SevenSegDecoder.scala 14:17 22:14]
  wire [6:0] _GEN_14 = 4'h1 == io_sw ? 7'h6 : _GEN_13; // @[SevenSegDecoder.scala 14:17 19:14]
  wire [6:0] sevSeg = 4'h0 == io_sw ? 7'h3f : _GEN_14; // @[SevenSegDecoder.scala 14:17 16:14]
  assign io_seg = ~sevSeg; // @[SevenSegDecoder.scala 66:13]
endmodule
module CountSevenSeg(
  input        clock,
  input        reset,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] converter_io_sw; // @[CountSevenSeg.scala 25:25]
  wire [6:0] converter_io_seg; // @[CountSevenSeg.scala 25:25]
  reg [25:0] counter2hz; // @[CountSevenSeg.scala 14:27]
  reg [3:0] counter4bit; // @[CountSevenSeg.scala 15:28]
  wire [3:0] _counter4bit_T_1 = counter4bit + 4'h1; // @[CountSevenSeg.scala 19:32]
  wire [25:0] _counter2hz_T_1 = counter2hz + 26'h1; // @[CountSevenSeg.scala 21:30]
  SevenSegDecoder converter ( // @[CountSevenSeg.scala 25:25]
    .io_sw(converter_io_sw),
    .io_seg(converter_io_seg)
  );
  assign io_seg = converter_io_seg; // @[CountSevenSeg.scala 10:27 27:10]
  assign io_an = 4'he; // @[CountSevenSeg.scala 85:9]
  assign converter_io_sw = counter4bit; // @[CountSevenSeg.scala 26:19]
  always @(posedge clock) begin
    if (reset) begin // @[CountSevenSeg.scala 14:27]
      counter2hz <= 26'h0; // @[CountSevenSeg.scala 14:27]
    end else if (counter2hz == 26'h2faf080) begin // @[CountSevenSeg.scala 17:35]
      counter2hz <= 26'h0; // @[CountSevenSeg.scala 18:16]
    end else begin
      counter2hz <= _counter2hz_T_1; // @[CountSevenSeg.scala 21:16]
    end
    if (reset) begin // @[CountSevenSeg.scala 15:28]
      counter4bit <= 4'h0; // @[CountSevenSeg.scala 15:28]
    end else if (counter2hz == 26'h2faf080) begin // @[CountSevenSeg.scala 17:35]
      counter4bit <= _counter4bit_T_1; // @[CountSevenSeg.scala 19:17]
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
  counter2hz = _RAND_0[25:0];
  _RAND_1 = {1{`RANDOM}};
  counter4bit = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
