module conf(
		output reg [7:0] D_out,
		input wire [7:0] D_in,
		input wire [15:0] A,
		output wire DDIR,
		input wire REGSELB,
		input wire OE,
		input wire WE,
		input wire RESET,
		output wire CONFIGURED
		);
	
	reg [7:0] conf;
	
	assign DDIR = !REGSELB & !OE & A[9];
	
	assign CONFIGURED = conf[5:0] == 1;

initial
begin
	conf = 0;
end
	
always @(posedge WE, posedge RESET)
begin
	if (RESET)
		conf = 0;
	else if (!REGSELB & A[9])
		case(A[8:0])
			9'b0	: conf = D_in;
		endcase
end

always @(*)
begin
	case(A[8:0])
		9'b0	: D_out = conf;
		default : D_out = 0;
	endcase		
end


endmodule