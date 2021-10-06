module byte_un_striping_c (
	input clk_2f_c,
	input reset,
	input valid_0,
	input [31:0] lane_0,
	input valid_1,
	input [31:0] lane_1,
	output reg valid_out_c,
	output reg [31:0] Data_out_c
);
	reg contador;

	always @(*) begin
		if (reset == 0) begin
			valid_out_c <= 0;
			Data_out_c <= 32'b0;
			contador <= 1;
		end
	end

	always @(posedge clk_2f_c) begin
		case (contador)
			1'b0:
			begin
				if (valid_0) begin
					contador <= 1;
					valid_out_c <= 1;
					Data_out_c <= lane_0;
				end
				else begin
					contador <= 1;
					valid_out_c <= 0;
					Data_out_c <= 32'b0;
				end
			end
			1'b1:
			begin
				if (valid_1) begin
					contador <= 0;
					valid_out_c <= 1;
					Data_out_c <= lane_1;
				end
				else begin
					contador <= 0;
					valid_out_c <= 0;
					Data_out_c <= 32'b0;
				end
			end
		endcase
	end
endmodule