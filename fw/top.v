`include "rom.v"

module top(
	input wire clk_26,
	input wire [7:0] D_in,
	output reg [7:0] D_out,
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
	output wire INT,
	);

	assign READY = 1;
	
	wire DDIR_ROM;
	assign DDIR = DDIR_ROM | 0;
	assign WAIT = 1;

	wire REG_SELB;
	assign REG_SELB = REG | CE1;
	wire [7:0] D_ROM;
	
	rom rom(
			.D(D_ROM),
			.A(A),
			.DDIR(DDIR_ROM),
			.REGSELB(REG_SELB),
			.OE(OE)
		);

always @(*)
begin
	case({DDIR_ROM})
		1'b1	: D_out = D_ROM;
		default	: D_out = 8'b0;
	endcase
end
	
endmodule
