module byte_striping_c (
	input clk_2f_c,
	input reset,
	input valid_in,
	input [31:0] Data_in,
	output reg valid_0_c,
	output reg [31:0] lane_0_c,
	output reg valid_1_c,
	output reg [31:0] lane_1_c
);
	reg contador;

	always @(*) begin
		if (reset == 0) begin
			valid_0_c <= 0;
			lane_0_c <= 0;
			valid_1_c <= 0;
			lane_1_c <= 0;
			contador <= 0;
		end
	end

	always @(posedge clk_2f_c) begin
		if (valid_in) begin
			case (contador)
				1'b0:
				begin
					contador <= 1'b1;
					lane_0_c <= Data_in;
					valid_0_c <= 1;
				end
				1'b1:
				begin
					contador <= 1'b0;
					lane_1_c <= Data_in;
					valid_1_c <= 1;
				end
			endcase
		end
		else begin
			valid_0_c <= 0;
			lane_0_c <= 0;
			if (valid_0_c == 0) begin
				lane_1_c <= 0;
				valid_1_c <= 0;
			end
		end
	end
endmodule