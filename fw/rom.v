module rom(
	inout [7:0] D,
	input wire [15:0] A,
	output wire DDIR,
	input wire REGSELB,
	input wire OE,
	);
	
	reg [7:0] mem [0:255];
	
	assign DDIR = !(REGSELB | OE) & !(A[9]);
	assign D = DDIR ? mem[A[8:1]] : 8'bZ;
	
initial begin
	mem[0] = 8'hff;
end

endmodule