`timescale 1 ns / 100 ps
module sr(input wire set, input wire reset, output wire q, output wire not_q);

	wire a, b;
	assign b = q;
	assign a = not_q;
	assign  q = ~(reset | a);
	assign  not_q = ~(set | b);
	
endmodule