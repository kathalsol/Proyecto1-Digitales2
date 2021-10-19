`timescale 1ns/1ps
`include "cmos_cells.v"
`include "bits8_32word_c.v"
`include "bits8_32word_e.v"
`include "probador_bits8_32word.v"

module testbench_bits8_32word ();
	wire clk_4f;
	wire reset;
	wire valid_in;
	wire [7:0] Data_in;
	wire valid_out_c;
	wire [31:0] Data_out_c;
	wire valid_out_e;
	wire [31:0] Data_out_e;

	bits8_32word_c		bits8_32word_1(	.clk_4f_c(clk_4f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c)
									);

	bits8_32word_e		bits8_32word_2(	.clk_4f_e(clk_4f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)
									);
	

	probador_bits8_32word	probador_1(	.clk_4f(clk_4f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c),
										.valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)
									);
endmodule