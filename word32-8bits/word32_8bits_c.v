module word32_8bits_c (
	input clk_4f_c,
	input reset,
	input valid_in,
	input [31:0] Data_in,
	output reg valid_out_c,
	output reg [7:0] Data_out_c
);
	reg [1:0] contador;

	always @(*) begin
		if (reset == 0) begin
			contador <= 2'b0;
			valid_out_c <= 0;
			Data_out_c <= 32'b0;
		end
	end

	always @(posedge clk_4f_c) begin
		if (valid_in) begin
			case (contador)
				2'b00: 
				begin
					Data_out_c <= Data_in[31:24];
					contador <= 2'b01;
					valid_out_c <= 1;
				end  
				2'b01: 
				begin
					Data_out_c <= Data_in[23:16];
					contador <= 2'b10;
					valid_out_c <= 1;
				end  
				2'b10:
				begin
					Data_out_c <= Data_in[15:8];
					contador <= 2'b11;
					valid_out_c <= 1;
				end  
				2'b11:
				begin
					Data_out_c <= Data_in[7:0];
					contador <= 'd0;
					valid_out_c <= 1;
				end 
			endcase
		end
		else begin
			contador <= 2'b0;
			valid_out_c <= 0;
			Data_out_c <= 32'b0;
		end
	end
endmodule