module master_spi(
		output wire [7:0] D_out,
		input wire [7:0] D_in,
		input wire [15:0] A,
		output wire DDIR,
		output wire WAIT,
		input wire IOWR,
		input wire IORD,
		output reg SS,
		output wire SCLK,
		output wire MOSI,
		input wire MISO,
		input wire CLK
		);
	wire working;
	reg nextss = 1;
	reg [7:0] outreg;
	reg [7:0] inreg;
	reg [3:0] ctr = 0;
	initial begin
		SS = 1;
	end
	assign working = (ctr != 0);
	assign WAIT = !working | (IORD & IOWR);
	assign DDIR = !IORD;
	assign D_out = inreg;
	assign MOSI = outreg[7];
	reg [7:0] IOWR_data;
	reg IORD_ev = 1;
	reg IORD_ev2 = 1;
	reg IOWR_ev = 1;
	reg IOWR_ev2 = 1;

	always @(posedge IOWR)
	begin
			IOWR_data = D_in;
	end

	reg CLK2 = 1;
	assign SCLK = CLK2;

	always @(posedge CLK)
	begin
		if (working)
		begin
			if (!CLK2)
			begin
				ctr = ctr - 1;
				outreg <= {outreg[6:0],1'b0};
				if (ctr == 0)
					SS <= nextss;
			end
			else
			begin
				inreg <= {inreg[6:0],MISO};
			end
			CLK2<=!CLK2;
		end
		else if (!IOWR_ev2 & IOWR_ev)
		begin
			nextss = A[1];
			ctr = 9;
			outreg = IOWR_data;
			SS = 0;
		end
		else if (!IORD_ev2 & IORD_ev)
		begin
			if (!A[1])
			begin
				ctr = 8;
				nextss = 0;
			end
			else
				SS = 1;
		end
		IOWR_ev2 = IOWR_ev;
		IOWR_ev = IOWR;
		IORD_ev2 = IORD_ev;
		IORD_ev = IORD;
	end


endmodule