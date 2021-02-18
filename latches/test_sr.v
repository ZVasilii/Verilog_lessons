`timescale 1 ns / 100 ps
module test();

reg set, reset;

wire q, not_q;

sr sr_1(.set(set), .reset(reset), .q(q), .not_q(not_q));

initial begin
	$dumpvars;
	$display("test started");

	set = 0;
	reset = 0;
	#(5)

	set = 1;

	#(5)

	set = 0;
	reset = 1;

  #(10)
	$finish;
end

endmodule
