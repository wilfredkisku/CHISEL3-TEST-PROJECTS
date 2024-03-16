module NormalizeClass(
  input         clock,
  input         reset,
  input  [22:0] io_mantissa,
  output [22:0] io_normMantissa,
  output [4:0]  io_shift
);
  wire [4:0] _number_T_1 = 5'h17 - 5'h1; // @[NormalizeClass.scala 13:19]
  wire [15:0] _GEN_0 = {{8'd0}, io_mantissa[15:8]}; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_6 = _GEN_0 & 16'hff; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_8 = {io_mantissa[7:0], 8'h0}; // @[Bitwise.scala 108:70]
  wire [15:0] _number_T_10 = _number_T_8 & 16'hff00; // @[Bitwise.scala 108:80]
  wire [15:0] _number_T_11 = _number_T_6 | _number_T_10; // @[Bitwise.scala 108:39]
  wire [15:0] _GEN_1 = {{4'd0}, _number_T_11[15:4]}; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_16 = _GEN_1 & 16'hf0f; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_18 = {_number_T_11[11:0], 4'h0}; // @[Bitwise.scala 108:70]
  wire [15:0] _number_T_20 = _number_T_18 & 16'hf0f0; // @[Bitwise.scala 108:80]
  wire [15:0] _number_T_21 = _number_T_16 | _number_T_20; // @[Bitwise.scala 108:39]
  wire [15:0] _GEN_2 = {{2'd0}, _number_T_21[15:2]}; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_26 = _GEN_2 & 16'h3333; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_28 = {_number_T_21[13:0], 2'h0}; // @[Bitwise.scala 108:70]
  wire [15:0] _number_T_30 = _number_T_28 & 16'hcccc; // @[Bitwise.scala 108:80]
  wire [15:0] _number_T_31 = _number_T_26 | _number_T_30; // @[Bitwise.scala 108:39]
  wire [15:0] _GEN_3 = {{1'd0}, _number_T_31[15:1]}; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_36 = _GEN_3 & 16'h5555; // @[Bitwise.scala 108:31]
  wire [15:0] _number_T_38 = {_number_T_31[14:0], 1'h0}; // @[Bitwise.scala 108:70]
  wire [15:0] _number_T_40 = _number_T_38 & 16'haaaa; // @[Bitwise.scala 108:80]
  wire [15:0] _number_T_41 = _number_T_36 | _number_T_40; // @[Bitwise.scala 108:39]
  wire [22:0] _number_T_61 = {_number_T_41,io_mantissa[16],io_mantissa[17],io_mantissa[18],io_mantissa[19],io_mantissa[
    20],io_mantissa[21],io_mantissa[22]}; // @[Cat.scala 33:92]
  wire [4:0] _number_T_85 = _number_T_61[21] ? 5'h15 : 5'h16; // @[Mux.scala 47:70]
  wire [4:0] _number_T_86 = _number_T_61[20] ? 5'h14 : _number_T_85; // @[Mux.scala 47:70]
  wire [4:0] _number_T_87 = _number_T_61[19] ? 5'h13 : _number_T_86; // @[Mux.scala 47:70]
  wire [4:0] _number_T_88 = _number_T_61[18] ? 5'h12 : _number_T_87; // @[Mux.scala 47:70]
  wire [4:0] _number_T_89 = _number_T_61[17] ? 5'h11 : _number_T_88; // @[Mux.scala 47:70]
  wire [4:0] _number_T_90 = _number_T_61[16] ? 5'h10 : _number_T_89; // @[Mux.scala 47:70]
  wire [4:0] _number_T_91 = _number_T_61[15] ? 5'hf : _number_T_90; // @[Mux.scala 47:70]
  wire [4:0] _number_T_92 = _number_T_61[14] ? 5'he : _number_T_91; // @[Mux.scala 47:70]
  wire [4:0] _number_T_93 = _number_T_61[13] ? 5'hd : _number_T_92; // @[Mux.scala 47:70]
  wire [4:0] _number_T_94 = _number_T_61[12] ? 5'hc : _number_T_93; // @[Mux.scala 47:70]
  wire [4:0] _number_T_95 = _number_T_61[11] ? 5'hb : _number_T_94; // @[Mux.scala 47:70]
  wire [4:0] _number_T_96 = _number_T_61[10] ? 5'ha : _number_T_95; // @[Mux.scala 47:70]
  wire [4:0] _number_T_97 = _number_T_61[9] ? 5'h9 : _number_T_96; // @[Mux.scala 47:70]
  wire [4:0] _number_T_98 = _number_T_61[8] ? 5'h8 : _number_T_97; // @[Mux.scala 47:70]
  wire [4:0] _number_T_99 = _number_T_61[7] ? 5'h7 : _number_T_98; // @[Mux.scala 47:70]
  wire [4:0] _number_T_100 = _number_T_61[6] ? 5'h6 : _number_T_99; // @[Mux.scala 47:70]
  wire [4:0] _number_T_101 = _number_T_61[5] ? 5'h5 : _number_T_100; // @[Mux.scala 47:70]
  wire [4:0] _number_T_102 = _number_T_61[4] ? 5'h4 : _number_T_101; // @[Mux.scala 47:70]
  wire [4:0] _number_T_103 = _number_T_61[3] ? 5'h3 : _number_T_102; // @[Mux.scala 47:70]
  wire [4:0] _number_T_104 = _number_T_61[2] ? 5'h2 : _number_T_103; // @[Mux.scala 47:70]
  wire [4:0] _number_T_105 = _number_T_61[1] ? 5'h1 : _number_T_104; // @[Mux.scala 47:70]
  wire [4:0] _number_T_106 = _number_T_61[0] ? 5'h0 : _number_T_105; // @[Mux.scala 47:70]
  wire [4:0] number = _number_T_1 - _number_T_106; // @[NormalizeClass.scala 13:26]
  wire [4:0] _io_normMantissa_T_1 = number + 5'h1; // @[NormalizeClass.scala 16:44]
  wire [53:0] _GEN_4 = {{31'd0}, io_mantissa}; // @[NormalizeClass.scala 16:34]
  wire [53:0] _io_normMantissa_T_2 = _GEN_4 << _io_normMantissa_T_1; // @[NormalizeClass.scala 16:34]
  assign io_normMantissa = _io_normMantissa_T_2[22:0]; // @[NormalizeClass.scala 16:19]
  assign io_shift = _number_T_1 - _number_T_106; // @[NormalizeClass.scala 13:26]
endmodule
