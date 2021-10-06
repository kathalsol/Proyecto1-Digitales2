`timescale 1ns/1ps
`include "cmos_cells.v"
`include "clk_generator_c.v"
`include "clk_generator_e.v"
`include "word32_8bits_c.v"
`include "word32_8bits_e.v"
`include "bits8_32word_c.v"
`include "bits8_32word_e.v"
`include "probador.v"

module testbench ();
	wire clk_32f;
	wire clk_4f_c;
	wire clk_2f_c;
	wire clk_f_c;
	wire clk_4f_e;
	wire clk_2f_e;
	wire clk_f_e;
	wire valid_in;
	wire [31:0] Data_in;
	wire valid_out_c;
	wire [31:0] Data_out_c;
	wire valid_out_e;
	wire [31:0] Data_out_e;
	wire valid_c;
	wire [7:0] data_c;
	wire valid_e;
	wire [7:0] data_e;

	clk_generator_c		generator_c(.clk_32f(clk_32f),
									.reset(reset),
									.clk_4f_c(clk_4f_c),
									.clk_2f_c(clk_2f_c),
									.clk_f_c(clk_f_c)
									);

	clk_generator_e		generator_e(.clk_32f(clk_32f),
									.reset(reset),
									.clk_4f_e(clk_4f_e),
									.clk_2f_e(clk_2f_e),
									.clk_f_e(clk_f_e)
									);

	word32_8bits_c		word32_8bits_1(	.clk_4f_c(clk_4f_c),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_c(valid_c),
										.Data_out_c(data_c)
										);
	
	bits8_32word_c		bits8_32word_1(	.clk_4f_c(clk_4f_c),
										.reset(reset),
										.valid_in(valid_c),
										.Data_in(data_c),
										.valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c)
										);

	word32_8bits_e		word32_8bits_2(	.clk_4f_c(clk_4f_c),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_e(valid_e),
										.Data_out_e(data_e)
										);

	bits8_32word_e		bits8_32word_2(	.clk_4f_c(clk_4f_c),
										.reset(reset),
										.valid_in(valid_e),
										.Data_in(data_e),
										.valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)
										);

	probador			probador_1(	.clk_32f(clk_32f),
									.reset(reset),
									.valid_in(valid_in),
									.Data_in(Data_in),
									.clk_4f_c(clk_4f_c),
									.clk_2f_c(clk_2f_c),
									.clk_f_c(clk_f_c),
									.valid_out_c(valid_out_c),
									.Data_out_c(Data_out_c),
									.valid_out_e(valid_out_e),
									.Data_out_e(Data_out_e)
									);
endmodule