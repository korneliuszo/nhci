`include "rom.v"
`include "conf.v"
`include "spi.v"

module top(
	input wire clk_52,
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
	output wire U_RES,
	input wire INT
	);

	assign READY = ~CONFIGURED | INT;
	assign U_RES = ~RESET;
	wire DDIR_ROM, DDIR_CONF, DDIR_SPI;
	assign DDIR = DDIR_ROM | DDIR_CONF | DDIR_SPI | 0;
	wire WAIT_SPI;
	assign WAIT = 1 & WAIT_SPI;

	assign WP = 1; // #IOIS_16 - always 8 bit
	assign INPACK = CE1;
	
	wire REG_SELB;
	assign REG_SELB = REG | CE1;
	wire [7:0] D_ROM;
	wire [7:0] D_CONF;
	wire [7:0] D_SPI;

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

	wire IOWR_CONF, IORD_CONF;
	assign IOWR_CONF = IOWR | ~CONFIGURED;
	assign IORD_CONF = IORD | ~CONFIGURED;

	master_spi spi(
			.D_out(D_SPI),
			.D_in(D_in),
			.A(A),
			.DDIR(DDIR_SPI),
			.WAIT(WAIT_SPI),
			.IOWR(IOWR_CONF),
			.IORD(IORD_CONF),
			.SS(SS),
			.SCLK(SCLK),
			.MOSI(MOSI),
			.MISO(MISO),
			.CLK(clk_52),
		);
	
always @(*)
begin
	case({DDIR_SPI,DDIR_CONF,DDIR_ROM})
		3'b001	: D_out = D_ROM;
		3'b010	: D_out = D_CONF;
		3'b100	: D_out = D_SPI;
		default	: D_out = 8'b0;
	endcase
end
	
endmodule
