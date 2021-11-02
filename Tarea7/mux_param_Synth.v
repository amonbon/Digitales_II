/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* dynports =  1  *)
(* src = "mux_param_Synth.v:1" *)
module \$paramod\word\BUS_SIZE=16\WORD_SIZE=4 (clk, reset, data_in, data_out, salida_control);
  (* src = "mux_param_Synth.v:13" *)
  wire [3:0] _00_;
  (* src = "mux_param_Synth.v:13" *)
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  (* src = "mux_param_Synth.v:7" *)
  input clk;
  (* src = "mux_param_Synth.v:9" *)
  input [3:0] data_in;
  (* src = "mux_param_Synth.v:10" *)
  output [3:0] data_out;
  (* src = "mux_param_Synth.v:8" *)
  input reset;
  (* src = "mux_param_Synth.v:11" *)
  output salida_control;
  NAND _10_ (
    .A(data_in[0]),
    .B(reset),
    .Y(_02_)
  );
  NOT _11_ (
    .A(_02_),
    .Y(_00_[0])
  );
  NAND _12_ (
    .A(reset),
    .B(data_in[1]),
    .Y(_03_)
  );
  NOT _13_ (
    .A(_03_),
    .Y(_00_[1])
  );
  NAND _14_ (
    .A(reset),
    .B(data_in[2]),
    .Y(_04_)
  );
  NOT _15_ (
    .A(_04_),
    .Y(_00_[2])
  );
  NAND _16_ (
    .A(reset),
    .B(data_in[3]),
    .Y(_05_)
  );
  NOT _17_ (
    .A(_05_),
    .Y(_00_[3])
  );
  NOR _18_ (
    .A(data_in[2]),
    .B(data_in[3]),
    .Y(_06_)
  );
  NOR _19_ (
    .A(data_in[0]),
    .B(data_in[1]),
    .Y(_07_)
  );
  NAND _20_ (
    .A(_06_),
    .B(_07_),
    .Y(_08_)
  );
  NAND _21_ (
    .A(reset),
    .B(_08_),
    .Y(_09_)
  );
  NOT _22_ (
    .A(_09_),
    .Y(_01_)
  );
  (* src = "mux_param_Synth.v:13" *)
  DFF _23_ (
    .C(clk),
    .D(_00_[0]),
    .Q(data_out[0])
  );
  (* src = "mux_param_Synth.v:13" *)
  DFF _24_ (
    .C(clk),
    .D(_00_[1]),
    .Q(data_out[1])
  );
  (* src = "mux_param_Synth.v:13" *)
  DFF _25_ (
    .C(clk),
    .D(_00_[2]),
    .Q(data_out[2])
  );
  (* src = "mux_param_Synth.v:13" *)
  DFF _26_ (
    .C(clk),
    .D(_00_[3]),
    .Q(data_out[3])
  );
  (* src = "mux_param_Synth.v:13" *)
  DFF _27_ (
    .C(clk),
    .D(_01_),
    .Q(salida_control)
  );
endmodule

(* dynports =  1  *)
(* top =  1  *)
(* src = "mux_param_Synth.v:25" *)
module mux_param_Synth(clk, reset, data_in, data_out, salida_control);
  (* src = "mux_param_Synth.v:32" *)
  input clk;
  (* src = "mux_param_Synth.v:34" *)
  input [15:0] data_in;
  (* src = "mux_param_Synth.v:35" *)
  output [15:0] data_out;
  (* src = "mux_param_Synth.v:33" *)
  input reset;
  (* src = "mux_param_Synth.v:36" *)
  output [3:0] salida_control;
  (* src = "mux_param_Synth.v:41" *)
  \$paramod\word\BUS_SIZE=16\WORD_SIZE=4  \MEM[0].word1  (
    .clk(clk),
    .data_in(data_in[3:0]),
    .data_out(data_out[15:12]),
    .reset(reset),
    .salida_control(salida_control[3])
  );
  (* src = "mux_param_Synth.v:41" *)
  \$paramod\word\BUS_SIZE=16\WORD_SIZE=4  \MEM[1].word1  (
    .clk(clk),
    .data_in(data_in[7:4]),
    .data_out(data_out[11:8]),
    .reset(reset),
    .salida_control(salida_control[2])
  );
  (* src = "mux_param_Synth.v:41" *)
  \$paramod\word\BUS_SIZE=16\WORD_SIZE=4  \MEM[2].word1  (
    .clk(clk),
    .data_in(data_in[11:8]),
    .data_out(data_out[7:4]),
    .reset(reset),
    .salida_control(salida_control[1])
  );
  (* src = "mux_param_Synth.v:41" *)
  \$paramod\word\BUS_SIZE=16\WORD_SIZE=4  \MEM[3].word1  (
    .clk(clk),
    .data_in(data_in[15:12]),
    .data_out(data_out[3:0]),
    .reset(reset),
    .salida_control(salida_control[0])
  );
endmodule
