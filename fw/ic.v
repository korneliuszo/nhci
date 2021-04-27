`include "top.v"

module ic(
	input wire CLK,
	output reg [0:0] D
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

	top top(ckl_26, D);

endmodule
