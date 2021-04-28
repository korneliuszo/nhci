`include "top.v"

module sim(
		input wire clk_26,
		input [7:0] D_in,
		output [7:0] D_out,
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