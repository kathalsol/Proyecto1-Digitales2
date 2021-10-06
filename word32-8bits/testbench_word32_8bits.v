`timescale 1ns/1ps
`include "cmos_cells.v"
`include "word32_8bits_c.v"
`include "word32_8bits_e.v"
`include "probador_word32_8bits.v"

module testbench_word32_8bits ();
	wire clk_4f;
	wire reset;
	wire valid_in;
	wire [31:0] Data_in;
	wire valid_out_c;
	wire [7:0] Data_out_c;
	wire valid_out_e;
	wire [7:0] Data_out_e;

	word32_8bits_c		word32_8bits_1(	.clk_4f_c(clk_4f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c)
									);

	word32_8bits_e		word32_8bits_2(	.clk_4f_e(clk_4f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)
									);

	probador_word32_8bits	probador_1(	.clk_4f(clk_4f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c),
										.valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)
									);
endmodule