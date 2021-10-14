`timescale 1ns/1ps
`include "cmos_cells.v"
`include "parallel_serial_c.v"
`include "parallel_serial_e.v"
`include "probador_parallel_serial.v"

module testbench_parallel_serial ();
	wire clk_32f;
	wire reset;
	wire valid_in;
	wire [7:0] Data_in;
	wire Data_out_c;
	wire Data_out_e;

	parallel_serial_c			parallel_serial_1(	.clk_32f(clk_32f),
													.reset(reset),
													.valid_in(valid_in),
													.Data_in(Data_in),
													.Data_out_c(Data_out_c)
												);

	parallel_serial_e			parallel_serial_2(	.clk_32f(clk_32f),
													.reset(reset),
													.valid_in(valid_in),
													.Data_in(Data_in),
													.Data_out_e(Data_out_e)
												);
	
	probador_parallel_serial	probador_1(	.clk_32f(clk_32f),
											.reset(reset),
											.valid_in(valid_in),
											.Data_in(Data_in),
											.Data_out_c(Data_out_c),
											.Data_out_e(Data_out_e)
										);
endmodule