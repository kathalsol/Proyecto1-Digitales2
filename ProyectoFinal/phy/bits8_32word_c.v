module bits8_32word_c (
	input clk_4f_c,
	input reset,
	input valid_in,
	input [7:0] Data_in,
	output reg valid_out_c,
	output reg [31:0] Data_out_c
);
	reg [1:0] contador;
	reg [31:0] memoria;
	reg valid;
	reg down;

	always @(*) begin
		if (reset == 0) begin
			valid_out_c <= 0;
			Data_out_c <= 32'b0;
			contador <= 2'b11;
			memoria <= 32'b0;
			valid <= 0;
			down <= 0;
		end
	end

	always @(posedge clk_4f_c) begin
		if (valid_in) begin
			case (contador)
				2'b00:
				begin
					valid_out_c <= valid;
					Data_out_c <= memoria;
					memoria <= {Data_in, 24'b0};
					contador <= 2'b01;
				end
				2'b01:
				begin
					memoria <= {memoria[31:24], Data_in, 16'b0};
					contador <= 2'b10;
				end
				2'b10:
				begin
					memoria <= {memoria[31:16], Data_in, 8'b0};
					contador <= 2'b11;
				end
				2'b11:
				begin
					memoria <= {memoria[31:8], Data_in};
					valid <= 1;
					contador <= 2'b00;
					down <= 0;
				end
			endcase
		end
		else begin
			case (contador)
				2'b00:
				begin
					valid_out_c <= valid;
					Data_out_c <= memoria;
					if (down) contador <= 2'b00;
					else contador <= 2'b01;
				end
				2'b01: contador <= 2'b10;
				2'b10: contador <= 2'b11;
				2'b11:
				begin
					memoria <= 32'b0;
					valid <= 0;
					contador <= 2'b00;
					down <= 1;
				end
			endcase
		end
	end
endmodule