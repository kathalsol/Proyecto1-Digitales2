`timescale 1ns/1ps
`include "cmos_cells.v"
`include "byte_striping_c.v"
`include "byte_striping_e.v"
`include "probador_byte_striping.v"

module testbench_byte_striping ();
	wire clk_2f;
	wire reset;
	wire valid_in;
	wire [31:0] Data_in;
	wire valid_0_c;
	wire [31:0] lane_0_c;
	wire valid_1_c;
	wire [31:0] lane_1_c;
	wire valid_0_e;
	wire [31:0] lane_0_e;
	wire valid_1_e;
	wire [31:0] lane_1_e;

	byte_striping_c		byte_striping_1(.clk_2f_c(clk_2f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_0_c(valid_0_c),
										.lane_0_c(lane_0_c),
										.valid_1_c(valid_1_c),
										.lane_1_c(lane_1_c)
									);
	
	byte_striping_e		byte_striping_2(.clk_2f_e(clk_2f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_0_e(valid_0_e),
										.lane_0_e(lane_0_e),
										.valid_1_e(valid_1_e),
										.lane_1_e(lane_1_e)
									);
	
	probador_byte_striping	probador_1(	.clk_2f(clk_2f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.valid_0_c(valid_0_c),
										.lane_0_c(lane_0_c),
										.valid_1_c(valid_1_c),
										.lane_1_c(lane_1_c),
										.valid_0_e(valid_0_e),
										.lane_0_e(lane_0_e),
										.valid_1_e(valid_1_e),
										.lane_1_e(lane_1_e)
									);
endmodule