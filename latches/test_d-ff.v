`timescale 1 ns / 100 ps
module test();

reg data;
reg clk;

wire q, not_q;

always begin
	#(1) clk = ~clk;
end 

d_ff d_ff_1(.data(data), .clk(clk), .q(q), .not_q(not_q));

initial begin
	$dumpvars;
	$display("Test started");
	clk = 1'b0;
	#(2)
	data = 1'b0;
	#(4)
	data = 1'b1;
	#(8)
	data = 1'b0;
  #(2)
  data = 1'b1;
  #(4)
	$finish;
end

endmodule
