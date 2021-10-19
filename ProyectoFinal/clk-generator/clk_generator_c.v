module clk_generator_c (
	input clk_32f,
	input reset,
	output reg clk_4f_c,
	output reg clk_2f_c,
	output reg clk_f_c
);
	reg [1:0] conteo_4;
	reg [2:0] conteo_2;
	reg [3:0] conteo;

	always @(*) begin
		if(reset == 0) begin
			conteo_4 <= 'b11;
			conteo_2 <= 'b111;
			conteo <= 'b1111;
			clk_4f_c <= 0;
			clk_2f_c <= 0;
			clk_f_c <= 0;
		end
	end

	always @(posedge clk_32f) begin
		case (conteo_4)
			2'b00: conteo_4 <= 2'b01;
			2'b01: conteo_4 <= 2'b10;
			2'b10: conteo_4 <= 2'b11;
			2'b11:
			begin
				conteo_4 <= 2'b00;
				case (clk_4f_c)
					1'b0: clk_4f_c <= 1;
					1'b1: clk_4f_c <= 0;
				endcase
			end 
		endcase
		case (conteo_2)
			3'b000: conteo_2 <= 3'b001;
			3'b001: conteo_2 <= 3'b010;
			3'b010: conteo_2 <= 3'b011;
			3'b011: conteo_2 <= 3'b100;
			3'b100: conteo_2 <= 3'b101;
			3'b101: conteo_2 <= 3'b110;
			3'b110: conteo_2 <= 3'b111;
			3'b111:
			begin
				conteo_2 <= 3'b000;
				case (clk_2f_c)
					1'b0: clk_2f_c <= 1;
					1'b1: clk_2f_c <= 0;
				endcase
			end 
		endcase
		case (conteo)
			4'b0000: conteo <= 4'b0001;
			4'b0001: conteo <= 4'b0010;
			4'b0010: conteo <= 4'b0011;
			4'b0011: conteo <= 4'b0100;
			4'b0100: conteo <= 4'b0101;
			4'b0101: conteo <= 4'b0110;
			4'b0110: conteo <= 4'b0111;
			4'b0111: conteo <= 4'b1000;
			4'b1000: conteo <= 4'b1001;
			4'b1001: conteo <= 4'b1010;
			4'b1010: conteo <= 4'b1011;
			4'b1011: conteo <= 4'b1100;
			4'b1100: conteo <= 4'b1101;
			4'b1101: conteo <= 4'b1110;
			4'b1110: conteo <= 4'b1111;
			4'b1111:
			begin
				conteo <= 4'b0000;
				case (clk_f_c)
					1'b0: clk_f_c <= 1;
					1'b1: clk_f_c <= 0;
				endcase
			end 
		endcase
	end
endmodule