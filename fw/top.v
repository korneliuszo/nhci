`include "rom.v"
`include "conf.v"

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
	input wire INT
	);

	assign READY = 1;
	
	wire DDIR_ROM, DDIR_CONF;
	assign DDIR = DDIR_ROM | DDIR_CONF | 0;
	assign WAIT = 1;

	assign WP = 1; // #IOIS_16 - always 8 bit
	assign INPACK = CE1;
	
	wire REG_SELB;
	assign REG_SELB = REG | CE1;
	wire [7:0] D_ROM;
	wire [7:0] D_CONF;
	
	rom rom(
			.D(D_ROM),
			.A(A),
			.DDIR(DDIR_ROM),
			.REGSELB(REG_SELB),
			.OE(OE)
		);

	wire CONFIGURED;
	
	conf conf(
			.D_out(D_CONF),
			.D_in(D_in),
			.A(A),
			.DDIR(DDIR_CONF),
			.REGSELB(REG_SELB),
			.OE(OE),
			.WE(WE),
			.RESET(RESET),
			.CONFIGURED(CONFIGURED)
		);
	
always @(*)
begin
	case({DDIR_CONF,DDIR_ROM})
		2'b01	: D_out = D_ROM;
		2'b10	: D_out = D_CONF;
		default	: D_out = 8'b0;
	endcase
end
	
endmodule
