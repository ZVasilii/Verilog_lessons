`timescale 1 ns / 100 ps
module test();

reg clk = 1'b1;
wire clk2;


always begin
	#(1)
	clk = ~clk;
end

clock clock1(.clk1(clk), .clk2(clk2));

initial begin
	$dumpvars;
	$display("test started");
  #(100)
	$finish;
end

endmodule
