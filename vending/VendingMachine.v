module BcdTable(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [7:0] _GEN_1 = 7'h1 == io_in[6:0] ? 8'h1 : 8'h0; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_2 = 7'h2 == io_in[6:0] ? 8'h2 : _GEN_1; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_3 = 7'h3 == io_in[6:0] ? 8'h3 : _GEN_2; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_4 = 7'h4 == io_in[6:0] ? 8'h4 : _GEN_3; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_5 = 7'h5 == io_in[6:0] ? 8'h5 : _GEN_4; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_6 = 7'h6 == io_in[6:0] ? 8'h6 : _GEN_5; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_7 = 7'h7 == io_in[6:0] ? 8'h7 : _GEN_6; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_8 = 7'h8 == io_in[6:0] ? 8'h8 : _GEN_7; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_9 = 7'h9 == io_in[6:0] ? 8'h9 : _GEN_8; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_10 = 7'ha == io_in[6:0] ? 8'h10 : _GEN_9; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_11 = 7'hb == io_in[6:0] ? 8'h11 : _GEN_10; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_12 = 7'hc == io_in[6:0] ? 8'h12 : _GEN_11; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_13 = 7'hd == io_in[6:0] ? 8'h13 : _GEN_12; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_14 = 7'he == io_in[6:0] ? 8'h14 : _GEN_13; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_15 = 7'hf == io_in[6:0] ? 8'h15 : _GEN_14; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_16 = 7'h10 == io_in[6:0] ? 8'h16 : _GEN_15; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_17 = 7'h11 == io_in[6:0] ? 8'h17 : _GEN_16; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_18 = 7'h12 == io_in[6:0] ? 8'h18 : _GEN_17; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_19 = 7'h13 == io_in[6:0] ? 8'h19 : _GEN_18; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_20 = 7'h14 == io_in[6:0] ? 8'h20 : _GEN_19; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_21 = 7'h15 == io_in[6:0] ? 8'h21 : _GEN_20; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_22 = 7'h16 == io_in[6:0] ? 8'h22 : _GEN_21; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_23 = 7'h17 == io_in[6:0] ? 8'h23 : _GEN_22; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_24 = 7'h18 == io_in[6:0] ? 8'h24 : _GEN_23; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_25 = 7'h19 == io_in[6:0] ? 8'h25 : _GEN_24; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_26 = 7'h1a == io_in[6:0] ? 8'h26 : _GEN_25; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_27 = 7'h1b == io_in[6:0] ? 8'h27 : _GEN_26; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_28 = 7'h1c == io_in[6:0] ? 8'h28 : _GEN_27; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_29 = 7'h1d == io_in[6:0] ? 8'h29 : _GEN_28; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_30 = 7'h1e == io_in[6:0] ? 8'h30 : _GEN_29; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_31 = 7'h1f == io_in[6:0] ? 8'h31 : _GEN_30; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_32 = 7'h20 == io_in[6:0] ? 8'h32 : _GEN_31; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_33 = 7'h21 == io_in[6:0] ? 8'h33 : _GEN_32; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_34 = 7'h22 == io_in[6:0] ? 8'h34 : _GEN_33; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_35 = 7'h23 == io_in[6:0] ? 8'h35 : _GEN_34; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_36 = 7'h24 == io_in[6:0] ? 8'h36 : _GEN_35; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_37 = 7'h25 == io_in[6:0] ? 8'h37 : _GEN_36; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_38 = 7'h26 == io_in[6:0] ? 8'h38 : _GEN_37; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_39 = 7'h27 == io_in[6:0] ? 8'h39 : _GEN_38; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_40 = 7'h28 == io_in[6:0] ? 8'h40 : _GEN_39; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_41 = 7'h29 == io_in[6:0] ? 8'h41 : _GEN_40; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_42 = 7'h2a == io_in[6:0] ? 8'h42 : _GEN_41; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_43 = 7'h2b == io_in[6:0] ? 8'h43 : _GEN_42; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_44 = 7'h2c == io_in[6:0] ? 8'h44 : _GEN_43; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_45 = 7'h2d == io_in[6:0] ? 8'h45 : _GEN_44; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_46 = 7'h2e == io_in[6:0] ? 8'h46 : _GEN_45; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_47 = 7'h2f == io_in[6:0] ? 8'h47 : _GEN_46; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_48 = 7'h30 == io_in[6:0] ? 8'h48 : _GEN_47; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_49 = 7'h31 == io_in[6:0] ? 8'h49 : _GEN_48; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_50 = 7'h32 == io_in[6:0] ? 8'h50 : _GEN_49; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_51 = 7'h33 == io_in[6:0] ? 8'h51 : _GEN_50; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_52 = 7'h34 == io_in[6:0] ? 8'h52 : _GEN_51; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_53 = 7'h35 == io_in[6:0] ? 8'h53 : _GEN_52; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_54 = 7'h36 == io_in[6:0] ? 8'h54 : _GEN_53; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_55 = 7'h37 == io_in[6:0] ? 8'h55 : _GEN_54; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_56 = 7'h38 == io_in[6:0] ? 8'h56 : _GEN_55; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_57 = 7'h39 == io_in[6:0] ? 8'h57 : _GEN_56; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_58 = 7'h3a == io_in[6:0] ? 8'h58 : _GEN_57; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_59 = 7'h3b == io_in[6:0] ? 8'h59 : _GEN_58; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_60 = 7'h3c == io_in[6:0] ? 8'h60 : _GEN_59; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_61 = 7'h3d == io_in[6:0] ? 8'h61 : _GEN_60; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_62 = 7'h3e == io_in[6:0] ? 8'h62 : _GEN_61; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_63 = 7'h3f == io_in[6:0] ? 8'h63 : _GEN_62; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_64 = 7'h40 == io_in[6:0] ? 8'h64 : _GEN_63; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_65 = 7'h41 == io_in[6:0] ? 8'h65 : _GEN_64; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_66 = 7'h42 == io_in[6:0] ? 8'h66 : _GEN_65; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_67 = 7'h43 == io_in[6:0] ? 8'h67 : _GEN_66; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_68 = 7'h44 == io_in[6:0] ? 8'h68 : _GEN_67; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_69 = 7'h45 == io_in[6:0] ? 8'h69 : _GEN_68; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_70 = 7'h46 == io_in[6:0] ? 8'h70 : _GEN_69; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_71 = 7'h47 == io_in[6:0] ? 8'h71 : _GEN_70; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_72 = 7'h48 == io_in[6:0] ? 8'h72 : _GEN_71; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_73 = 7'h49 == io_in[6:0] ? 8'h73 : _GEN_72; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_74 = 7'h4a == io_in[6:0] ? 8'h74 : _GEN_73; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_75 = 7'h4b == io_in[6:0] ? 8'h75 : _GEN_74; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_76 = 7'h4c == io_in[6:0] ? 8'h76 : _GEN_75; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_77 = 7'h4d == io_in[6:0] ? 8'h77 : _GEN_76; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_78 = 7'h4e == io_in[6:0] ? 8'h78 : _GEN_77; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_79 = 7'h4f == io_in[6:0] ? 8'h79 : _GEN_78; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_80 = 7'h50 == io_in[6:0] ? 8'h80 : _GEN_79; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_81 = 7'h51 == io_in[6:0] ? 8'h81 : _GEN_80; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_82 = 7'h52 == io_in[6:0] ? 8'h82 : _GEN_81; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_83 = 7'h53 == io_in[6:0] ? 8'h83 : _GEN_82; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_84 = 7'h54 == io_in[6:0] ? 8'h84 : _GEN_83; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_85 = 7'h55 == io_in[6:0] ? 8'h85 : _GEN_84; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_86 = 7'h56 == io_in[6:0] ? 8'h86 : _GEN_85; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_87 = 7'h57 == io_in[6:0] ? 8'h87 : _GEN_86; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_88 = 7'h58 == io_in[6:0] ? 8'h88 : _GEN_87; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_89 = 7'h59 == io_in[6:0] ? 8'h89 : _GEN_88; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_90 = 7'h5a == io_in[6:0] ? 8'h90 : _GEN_89; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_91 = 7'h5b == io_in[6:0] ? 8'h91 : _GEN_90; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_92 = 7'h5c == io_in[6:0] ? 8'h92 : _GEN_91; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_93 = 7'h5d == io_in[6:0] ? 8'h93 : _GEN_92; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_94 = 7'h5e == io_in[6:0] ? 8'h94 : _GEN_93; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_95 = 7'h5f == io_in[6:0] ? 8'h95 : _GEN_94; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_96 = 7'h60 == io_in[6:0] ? 8'h96 : _GEN_95; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_97 = 7'h61 == io_in[6:0] ? 8'h97 : _GEN_96; // @[Bcd.scala 15:{10,10}]
  wire [7:0] _GEN_98 = 7'h62 == io_in[6:0] ? 8'h98 : _GEN_97; // @[Bcd.scala 15:{10,10}]
  assign io_out = 7'h63 == io_in[6:0] ? 8'h99 : _GEN_98; // @[Bcd.scala 15:{10,10}]
endmodule
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
module VendingMachine(
  input        clock,
  input        reset,
  input  [4:0] io_price,
  input        io_coin2,
  input        io_coin5,
  input        io_buy,
  output       io_releaseCan,
  output       io_alarm,
  output [6:0] io_seg,
  output [3:0] io_an,
  output       io_coin2full,
  output       io_coin5full
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] bcdConv_io_in; // @[VendingMachine.scala 35:26]
  wire [7:0] bcdConv_io_out; // @[VendingMachine.scala 35:26]
  wire [3:0] SevSegConv_io_in; // @[VendingMachine.scala 36:26]
  wire [6:0] SevSegConv_io_out; // @[VendingMachine.scala 36:26]
  reg [7:0] sum; // @[VendingMachine.scala 25:25]
  reg [2:0] state; // @[VendingMachine.scala 26:25]
  reg [4:0] numberc2; // @[VendingMachine.scala 29:25]
  reg [4:0] numberc5; // @[VendingMachine.scala 30:25]
  reg [16:0] counterClock; // @[VendingMachine.scala 32:29]
  reg [1:0] counterAn; // @[VendingMachine.scala 33:29]
  reg  add2_REG; // @[VendingMachine.scala 38:33]
  wire  add2 = io_coin2 & ~add2_REG; // @[VendingMachine.scala 38:23]
  reg  add5_REG; // @[VendingMachine.scala 39:33]
  wire  add5 = io_coin5 & ~add5_REG; // @[VendingMachine.scala 39:23]
  wire [7:0] _GEN_50 = {{3'd0}, io_price}; // @[VendingMachine.scala 57:31]
  wire [2:0] _GEN_0 = io_buy & sum >= _GEN_50 ? 3'h4 : state; // @[VendingMachine.scala 59:44 60:15 26:25]
  wire [2:0] _GEN_1 = io_buy & sum < _GEN_50 ? 3'h3 : _GEN_0; // @[VendingMachine.scala 57:43 58:15]
  wire [2:0] _GEN_2 = add5 & sum < 8'h1b ? 3'h2 : _GEN_1; // @[VendingMachine.scala 55:37 56:15]
  wire [7:0] _sum_T_1 = sum + 8'h2; // @[VendingMachine.scala 64:18]
  wire [4:0] _numberc2_T_1 = numberc2 + 5'h1; // @[VendingMachine.scala 65:28]
  wire [7:0] _sum_T_3 = sum + 8'h5; // @[VendingMachine.scala 69:18]
  wire [4:0] _numberc5_T_1 = numberc5 + 5'h1; // @[VendingMachine.scala 70:28]
  wire [2:0] _GEN_5 = ~io_buy ? 3'h0 : state; // @[VendingMachine.scala 75:21 76:15 26:25]
  wire [7:0] _sum_T_5 = sum - _GEN_50; // @[VendingMachine.scala 80:18]
  wire [2:0] _GEN_9 = 3'h5 == state ? _GEN_5 : state; // @[VendingMachine.scala 47:18 26:25]
  wire  _GEN_10 = 3'h5 == state ? 1'h0 : 3'h6 == state; // @[VendingMachine.scala 41:17 47:18]
  wire [7:0] _GEN_11 = 3'h4 == state ? _sum_T_5 : sum; // @[VendingMachine.scala 47:18 80:11 25:25]
  wire [2:0] _GEN_12 = 3'h4 == state ? 3'h5 : _GEN_9; // @[VendingMachine.scala 47:18 81:13]
  wire  _GEN_13 = 3'h4 == state ? 1'h0 : 3'h5 == state; // @[VendingMachine.scala 42:17 47:18]
  wire  _GEN_14 = 3'h4 == state ? 1'h0 : _GEN_10; // @[VendingMachine.scala 41:17 47:18]
  wire  _GEN_15 = 3'h3 == state | _GEN_14; // @[VendingMachine.scala 47:18 74:16]
  wire [2:0] _GEN_16 = 3'h3 == state ? _GEN_5 : _GEN_12; // @[VendingMachine.scala 47:18]
  wire [7:0] _GEN_17 = 3'h3 == state ? sum : _GEN_11; // @[VendingMachine.scala 47:18 25:25]
  wire  _GEN_18 = 3'h3 == state ? 1'h0 : _GEN_13; // @[VendingMachine.scala 42:17 47:18]
  wire  _GEN_22 = 3'h2 == state ? 1'h0 : _GEN_15; // @[VendingMachine.scala 41:17 47:18]
  wire  _GEN_23 = 3'h2 == state ? 1'h0 : _GEN_18; // @[VendingMachine.scala 42:17 47:18]
  wire  _GEN_28 = 3'h1 == state ? 1'h0 : _GEN_22; // @[VendingMachine.scala 41:17 47:18]
  wire  _GEN_29 = 3'h1 == state ? 1'h0 : _GEN_23; // @[VendingMachine.scala 42:17 47:18]
  wire [1:0] _counterAn_T_1 = counterAn + 2'h1; // @[VendingMachine.scala 97:28]
  wire [16:0] _counterClock_T_1 = counterClock + 17'h1; // @[VendingMachine.scala 99:34]
  wire [3:0] _GEN_39 = 2'h3 == counterAn ? 4'h8 : 4'h1; // @[VendingMachine.scala 104:21 122:14 22:32]
  wire [3:0] _GEN_40 = 2'h3 == counterAn ? bcdConv_io_out[7:4] : 4'h0; // @[VendingMachine.scala 104:21 123:14 23:32]
  wire [3:0] _GEN_42 = 2'h2 == counterAn ? 4'h4 : _GEN_39; // @[VendingMachine.scala 104:21 117:14]
  wire [3:0] _GEN_43 = 2'h2 == counterAn ? bcdConv_io_out[3:0] : _GEN_40; // @[VendingMachine.scala 104:21 118:14]
  wire [7:0] _GEN_44 = 2'h1 == counterAn ? {{3'd0}, io_price} : sum; // @[VendingMachine.scala 104:21 111:21]
  wire [3:0] _GEN_45 = 2'h1 == counterAn ? 4'h2 : _GEN_42; // @[VendingMachine.scala 104:21 112:14]
  wire [3:0] _GEN_46 = 2'h1 == counterAn ? bcdConv_io_out[7:4] : _GEN_43; // @[VendingMachine.scala 104:21 113:14]
  wire [3:0] select = 2'h0 == counterAn ? 4'h1 : _GEN_45; // @[VendingMachine.scala 104:21 107:14]
  wire [6:0] sevSeg = SevSegConv_io_out; // @[VendingMachine.scala 128:10 21:32]
  BcdTable bcdConv ( // @[VendingMachine.scala 35:26]
    .io_in(bcdConv_io_in),
    .io_out(bcdConv_io_out)
  );
  SevenSegDec SevSegConv ( // @[VendingMachine.scala 36:26]
    .io_in(SevSegConv_io_in),
    .io_out(SevSegConv_io_out)
  );
  assign io_releaseCan = 3'h0 == state ? 1'h0 : _GEN_29; // @[VendingMachine.scala 47:18 50:21]
  assign io_alarm = 3'h0 == state ? 1'h0 : _GEN_28; // @[VendingMachine.scala 47:18 49:16]
  assign io_seg = ~sevSeg; // @[VendingMachine.scala 129:13]
  assign io_an = ~select; // @[VendingMachine.scala 130:13]
  assign io_coin2full = 1'h0; // @[VendingMachine.scala 43:17]
  assign io_coin5full = 1'h0; // @[VendingMachine.scala 44:17]
  assign bcdConv_io_in = 2'h0 == counterAn ? {{3'd0}, io_price} : _GEN_44; // @[VendingMachine.scala 104:21 106:21]
  assign SevSegConv_io_in = 2'h0 == counterAn ? bcdConv_io_out[3:0] : _GEN_46; // @[VendingMachine.scala 104:21 108:14]
  always @(posedge clock) begin
    if (reset) begin // @[VendingMachine.scala 25:25]
      sum <= 8'h0; // @[VendingMachine.scala 25:25]
    end else if (!(3'h0 == state)) begin // @[VendingMachine.scala 47:18]
      if (3'h1 == state) begin // @[VendingMachine.scala 47:18]
        sum <= _sum_T_1; // @[VendingMachine.scala 64:11]
      end else if (3'h2 == state) begin // @[VendingMachine.scala 47:18]
        sum <= _sum_T_3; // @[VendingMachine.scala 69:11]
      end else begin
        sum <= _GEN_17;
      end
    end
    if (reset) begin // @[VendingMachine.scala 26:25]
      state <= 3'h0; // @[VendingMachine.scala 26:25]
    end else if (3'h0 == state) begin // @[VendingMachine.scala 47:18]
      if (numberc2 > 5'h13 | numberc5 > 5'h13) begin // @[VendingMachine.scala 51:47]
        state <= 3'h6; // @[VendingMachine.scala 52:15]
      end else if (add2 & sum < 8'h1e) begin // @[VendingMachine.scala 53:37]
        state <= 3'h1; // @[VendingMachine.scala 54:15]
      end else begin
        state <= _GEN_2;
      end
    end else if (3'h1 == state) begin // @[VendingMachine.scala 47:18]
      state <= 3'h0; // @[VendingMachine.scala 66:13]
    end else if (3'h2 == state) begin // @[VendingMachine.scala 47:18]
      state <= 3'h0; // @[VendingMachine.scala 71:13]
    end else begin
      state <= _GEN_16;
    end
    if (reset) begin // @[VendingMachine.scala 29:25]
      numberc2 <= 5'h0; // @[VendingMachine.scala 29:25]
    end else if (!(3'h0 == state)) begin // @[VendingMachine.scala 47:18]
      if (3'h1 == state) begin // @[VendingMachine.scala 47:18]
        numberc2 <= _numberc2_T_1; // @[VendingMachine.scala 65:16]
      end
    end
    if (reset) begin // @[VendingMachine.scala 30:25]
      numberc5 <= 5'h0; // @[VendingMachine.scala 30:25]
    end else if (!(3'h0 == state)) begin // @[VendingMachine.scala 47:18]
      if (!(3'h1 == state)) begin // @[VendingMachine.scala 47:18]
        if (3'h2 == state) begin // @[VendingMachine.scala 47:18]
          numberc5 <= _numberc5_T_1; // @[VendingMachine.scala 70:16]
        end
      end
    end
    if (reset) begin // @[VendingMachine.scala 32:29]
      counterClock <= 17'h0; // @[VendingMachine.scala 32:29]
    end else if (counterClock == 17'h186a0) begin // @[VendingMachine.scala 95:35]
      counterClock <= 17'h0; // @[VendingMachine.scala 96:18]
    end else begin
      counterClock <= _counterClock_T_1; // @[VendingMachine.scala 99:18]
    end
    if (reset) begin // @[VendingMachine.scala 33:29]
      counterAn <= 2'h0; // @[VendingMachine.scala 33:29]
    end else if (counterClock == 17'h186a0) begin // @[VendingMachine.scala 95:35]
      counterAn <= _counterAn_T_1; // @[VendingMachine.scala 97:15]
    end
    add2_REG <= io_coin2; // @[VendingMachine.scala 38:33]
    add5_REG <= io_coin5; // @[VendingMachine.scala 39:33]
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
  sum = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  numberc2 = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  numberc5 = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  counterClock = _RAND_4[16:0];
  _RAND_5 = {1{`RANDOM}};
  counterAn = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  add2_REG = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  add5_REG = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
