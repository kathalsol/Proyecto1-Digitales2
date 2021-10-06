module clk_generator_c (
	input clk_32f,
	input reset,
	output reg clk_4f_c,
	output reg clk_2f_c,
	output reg clk_f_c
);
	reg clk_16f_c;
	reg clk_8f_c;

	always @(posedge clk_32f) begin
		if(reset == 0) begin
			clk_16f_c <= 0;
			clk_8f_c <= 0;
			clk_4f_c <= 0;
			clk_2f_c <= 0;
			clk_f_c <= 0;
		end
	end

	always @(posedge clk_32f) begin
		if (clk_16f_c) clk_16f_c <= 0;
		else if(~clk_16f_c) clk_16f_c <= 1;
	end

	always @(posedge clk_32f) begin
		if (~clk_16f_c & ~clk_8f_c) clk_8f_c <= 1;
		else if (~clk_16f_c & clk_8f_c) clk_8f_c <= 0;
	end

	always @(posedge clk_32f) begin
		if (~clk_16f_c & ~clk_8f_c & ~clk_4f_c) clk_4f_c <= 1;
		else if (~clk_16f_c & ~clk_8f_c & clk_4f_c) clk_4f_c <= 0;
	end

	always @(posedge clk_32f) begin
		if (~clk_16f_c & ~clk_8f_c & ~clk_4f_c & ~clk_2f_c) clk_2f_c <= 1;
		else if (~clk_16f_c & ~clk_8f_c & ~clk_4f_c & clk_2f_c) clk_2f_c <= 0;
	end

	always @(posedge clk_32f) begin
		if (~clk_16f_c & ~clk_8f_c & ~clk_4f_c & ~clk_2f_c & ~clk_f_c) clk_f_c <= 1;
		else if (~clk_16f_c & ~clk_8f_c & ~clk_4f_c & ~clk_2f_c & clk_f_c) clk_f_c <= 0;
	end
endmodule