module BUF(A, Y);
input A;
output Y;
assign #(1:2.4:3.5, 1:2.4:3.5) Y = A;
endmodule

module NOT(A, Y);
input A;
output Y;
assign #(0.7:2:3.3, 0.7:2:3.3) Y = ~A;
endmodule

module NAND(A, B, Y);
input A, B;
output Y;
assign #(1:2.4:3.5, 1:2.4:3.5) Y = ~(A & B);
endmodule

module NOR(A, B, Y);
input A, B;
output Y;
assign #(0.9:2.25:3.6, 0.9:2.25:3.6) Y = ~(A | B);
endmodule

module DFF(C, D, Q);
input C, D;
output reg Q;
always @(posedge C)
	Q <= D;
endmodule

module DFFSR(C, D, Q, S, R);
input C, D, S, R;
output reg Q;
always @(posedge C, posedge S, posedge R)
	if (S)
		Q <= 1'b1;
	else if (R)
		Q <= 1'b0;
	else
		Q <= D;
endmodule