`timescale 1ns/1ps
`include "cmos_cells.v"
`include "clk_generator_c.v"
`include "clk_generator_e.v"
`include "probador_clk.v"

module testbench_clk ();
	wire clk_32f;
	wire clk_4f_c;
	wire clk_2f_c;
	wire clk_f_c;
	wire clk_4f_e;
	wire clk_2f_e;
	wire clk_f_e;
	wire reset;

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

	probador_clk		probador_1(	.clk_32f(clk_32f),
									.reset(reset),
									.clk_4f_c(clk_4f_c),
									.clk_2f_c(clk_2f_c),
									.clk_f_c(clk_f_c),
									.clk_4f_e(clk_4f_e),
									.clk_2f_e(clk_2f_e),
									.clk_f_e(clk_f_e)
									);
endmodule