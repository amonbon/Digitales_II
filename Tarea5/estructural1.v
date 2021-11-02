/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "muxmemoriaconductual.v:1" *)
module muxGenerico(clk, reset_L, selector, data_in0, data_in1, data_out);
  (* src = "muxmemoriaconductual.v:18" *)
  wire [1:0] _0_;
  (* src = "muxmemoriaconductual.v:3" *)
  input clk;
  (* src = "muxmemoriaconductual.v:6" *)
  input [1:0] data_in0;
  (* src = "muxmemoriaconductual.v:7" *)
  input [1:0] data_in1;
  (* src = "muxmemoriaconductual.v:8" *)
  output [1:0] data_out;
  reg [1:0] data_out;
  (* src = "muxmemoriaconductual.v:10" *)
  wire [1:0] mout;
  (* src = "muxmemoriaconductual.v:4" *)
  input reset_L;
  (* src = "muxmemoriaconductual.v:5" *)
  input selector;
  assign _0_[0] = reset_L ? (* src = "muxmemoriaconductual.v:20" *) mout[0] : 1'h0;
  assign _0_[1] = reset_L ? (* src = "muxmemoriaconductual.v:20" *) mout[1] : 1'h0;
  assign mout[0] = selector ? (* src = "muxmemoriaconductual.v:14" *) data_in1[0] : data_in0[0];
  assign mout[1] = selector ? (* src = "muxmemoriaconductual.v:14" *) data_in1[1] : data_in0[1];
  (* src = "muxmemoriaconductual.v:18" *)
  always @(posedge clk)
      data_out[0] <= _0_[0];
  (* src = "muxmemoriaconductual.v:18" *)
  always @(posedge clk)
      data_out[1] <= _0_[1];
endmodule
