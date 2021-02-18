`timescale 1 ns / 100 ps
module clock(input wire clk1, output wire clk2);

assign clk2 = ~clk1;

endmodule
