module top(
	input wire clk_26,
	output reg [0:0] D
	);

	initial begin
		D[0] = 0;
	end

	always @(posedge clk_26)
	begin
		D[0] <= ~D[0];
	end

endmodule
