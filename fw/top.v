module top(
	input wire CLK,
	output [0:0] D
	);

	wire clk_26;
/* verilator lint_off PINMISSING */
	SB_PLL40_CORE #(
`include "pll.v"
	)  SB_PLL40_CORE_inst (
		.RESETB(1'b1),
		.BYPASS(1'b0),
		.PLLOUTGLOBAL(clk_26),
		.REFERENCECLK(CLK)
	);
/* verilator lint_on PINMISSING */

	initial begin
		D[0] = 0;
	end

	always @(posedge clk_26)
	begin
		D[0] <= ~D[0];
	end

endmodule
