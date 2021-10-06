module bits8_32word_c (
	input clk_4f_c,
	input reset,
	input valid_in,
	input [7:0] Data_in,
	output reg valid_out_c,
	output reg [31:0] Data_out_c
);
	reg [31:0] memoria;
	reg valid;
	reg [1:0] contador;
	reg [1:0] cuenta;
	

	always @(posedge clk_4f_c) begin
		if (reset == 0) begin
			memoria <= 32'b0;
			valid <= 0;
			contador <= 2'b0;
			cuenta <= 2'b00;
			valid_out_c <= 0;
			Data_out_c <= 32'b0;
		end
		else if (valid_in) contador <= contador + 1;
	end
	always @(posedge clk_4f_c) begin
		if (valid_in) begin
			case (contador)
				2'b00:
				begin
					memoria <= {Data_in, 24'b0};
					valid <= 0;
				end 
				2'b01: memoria <= {memoria[31:24], Data_in, 16'b0}; 
				2'b10: memoria <= {memoria[31:16], Data_in, 8'b0}; 
				2'b11:
				begin
					memoria <= {memoria[31:8], Data_in};
					contador <= 2'b0;
					cuenta <= 2'b11;
					valid <= 1;
				end
			endcase
		end
		else begin
			memoria <= 32'b0;
			valid <= 0;
		end
	end

	always @(posedge clk_4f_c) begin
		case (cuenta)
			2'b00: cuenta <= cuenta + 3;
			2'b01: cuenta <= cuenta - 1;
			2'b10: cuenta <= cuenta - 1;
			2'b11:
			begin
				Data_out_c <= memoria;
				valid_out_c <= valid;
				cuenta <= cuenta - 1;
			end
		endcase
	end
endmodule