`include "top.v"

(* cxxrtl_blackbox *)
module spi(
		input wire SS,
		(* cxxrtl_edge = "a" *) input wire SCLK,
		input wire MOSI,
		output wire MISO,
		output wire INT
		);
endmodule

module sim(
		input wire clk_52,
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
		);

	wire SS;
	wire SCLK;
	wire MOSI;
	wire MISO;
	wire INT;	
	
	top top(
			clk_52,
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

	spi spi(
			SS,
			SCLK,
			MOSI,
			MISO,
			INT);
	
endmodule