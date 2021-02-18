`timescale 1 ns / 100 ps

module d_ff(input wire data, input wire clk, output wire q, output wire not_q);

	wire bridge;

	d_latch master(.data(data), .enable(~clk), .q(bridge));
	d_latch slave (.data(bridge), .enable(clk), .q(q), .not_q(not_q));

endmodule