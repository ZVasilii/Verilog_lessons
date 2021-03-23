module top(
	input CLK,
	output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
	output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G);

	wire CLK_DIV;
	wire CLK_DIV_10;

	clk_div    Clk_div (.clk(CLK), .clk_div(CLK_DIV));
	clk_div_10 Clk_div_10 (.clk(CLK), .clk_div(CLK_DIV_10));
	
	wire [3:0] ands;
	wire [6:0] segs_display;
	wire [15:0] data;
	
	reg [3:0]pc = 4'b0;

	
	always @(posedge CLK_DIV) begin
		pc <= (pc === 4'b1111) ? 4'b0 : pc + 4'b1;
	end
	
	rom Rom (.address(pc), .clock(CLK_DIV), .q(data));
	
	assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} =  segs_display;
	assign {DS_EN4, DS_EN3, DS_EN2, DS_EN1} = ~ands;
	
	data_display Data_display(.clk_main(CLK_DIV), .clk_10(CLK_DIV_10), .data(data), .anodes(ands), .segments(segs_display));
	


endmodule