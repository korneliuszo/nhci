`include "top.v"

module ic(
	input wire CLK,
	inout wire [7:0] D,
	input wire [15:0] A

	);

	wire clk_26;
	SB_PLL40_CORE #(
`include "pll.v"
	)  SB_PLL40_CORE_inst (
		.RESETB(1'b1),
		.BYPASS(1'b0),
		.PLLOUTGLOBAL(clk_26),
		.REFERENCECLK(CLK)
	);

	top top(clk_26, D[0]);

endmodule
