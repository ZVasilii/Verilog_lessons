`timescale 1 ns / 100 ps
module test();

reg data, enable;

wire q, not_q;

d_latch d_latch_1(.data(data), .enable(enable), .q(q), .not_q(not_q));

initial begin
	$dumpvars;
	$display("test started");

	enable = 1'b0;
	data = 1'b0;
	#(5)
	data = 1'b1;
	#(5)
	enable = 1'b1;
	#(5)
	enable = 1'b0;
	#(5)
	data = 1'b0;
  #(5)
  enable = 1'b1;
	#(5)
	$finish;
end

endmodule
