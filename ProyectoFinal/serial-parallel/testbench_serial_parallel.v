`timescale 1ns/1ps
`include "cmos_cells.v"
`include "serial_parallel_c.v"
`include "serial_parallel_e.v"
`include "probador_serial_parallel.v"

module testbench_serial_parallel ();
	wire clk_32f;
	wire reset;
	wire Data_in;
	wire valid_out_c;
	wire [7:0] Data_out_c;
	wire valid_out_e;
	wire [7:0] Data_out_e;

	serial_parallel_c			serial_parallel_1(	.clk_32f(clk_32f),
													.reset(reset),
													.Data_in(Data_in),
													.valid_out_c(valid_out_c),
													.Data_out_c(Data_out_c)
												);

	serial_parallel_e			serial_parallel_2(	.clk_32f(clk_32f),
													.reset(reset),
													.Data_in(Data_in),
													.valid_out_e(valid_out_e),
													.Data_out_e(Data_out_e)
												);
	
	probador_serial_parallel	probador_1(	.clk_32f(clk_32f),
											.reset(reset),
											.Data_in(Data_in),
											.valid_out_c(valid_out_c),
											.Data_out_c(Data_out_c),
											.valid_out_e(valid_out_e),
											.Data_out_e(Data_out_e)
										);
endmodule