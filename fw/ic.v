`include "top.v"

module ic(
	input wire CLK,
	inout [7:0] D,
	input wire [15:0] A,
	output wire DDIR,
	input wire RESET,
	input wire WE,
	input wire OE,
	input wire IOWR,
	input wire IORD,
	input wire CE1,
	input wire CE2,
	input wire REG,
	output wire WAIT,
	output wire INPACK,
	output wire READY,
	output wire WP,
	output wire SS,
	output wire SCLK,
	output wire MOSI,
	input wire MISO,
	input wire INT,
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

	wire [7:0] D_in;
	wire [7:0] D_out;
	assign D = DDIR ? D_out : 8'bZ;
	assign D_in = D;

	top top(
		clk_26,
		D_in,
		D_out,
		A,
		DDIR,
		RESET,
		WE,
		OE,
		IOWR,
		IORD,
		CE1,
		CE2,
		REG,
		WAIT,
		INPACK,
		READY,
		WP,
		SS,
		SCLK,
		MOSI,
		MISO,
		INT
	 	);

endmodule
