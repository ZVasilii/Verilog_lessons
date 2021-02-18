`timescale 1 ns / 100 ps

module d_latch(input wire data, input wire enable, output wire q, output wire not_q);

	wire set, reset;
	assign reset = (~data & enable);
	assign set = (data & enable);

	sr sr_1(.set(set), .reset(reset), .q(q), .not_q(not_q));
	
endmodule