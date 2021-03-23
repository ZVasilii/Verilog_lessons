
module clk_div (input wire clk, output wire clk_div);

parameter DELAY = 25;

reg [24:0]cnt;

always@(posedge clk) begin
	cnt <= (cnt === {25{1'b1}}) ? 25'b0 : cnt + 25'b1;
end


assign clk_div = cnt[24];

endmodule