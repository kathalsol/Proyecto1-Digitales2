`timescale 1ns/1ps
`include "cmos_cells.v"
`include "byte_un_striping_c.v"
`include "byte_un_striping_e.v"
`include "probador_byte_un_striping.v"

module testbench_byte_un_striping ();
	wire clk_2f;
	wire reset;
	wire valid_0;
	wire [31:0] lane_0;
	wire valid_1;
	wire [31:0] lane_1;
	wire valid_out_c;
	wire [31:0] Data_out_c;
	wire valid_out_e;
	wire [31:0] Data_out_e;

	byte_un_striping_c		byte_un_striping_1( .clk_2f_c(clk_2f),
												.reset(reset),
												.valid_0(valid_0),
												.lane_0(lane_0),
												.valid_1(valid_1),
												.lane_1(lane_1),
												.valid_out_c(valid_out_c),
												.Data_out_c(Data_out_c)
											);
	
	byte_un_striping_e		byte_un_striping_2( .clk_2f_e(clk_2f),
												.reset(reset),
												.valid_0(valid_0),
												.lane_0(lane_0),
												.valid_1(valid_1),
												.lane_1(lane_1),
												.valid_out_e(valid_out_e),
												.Data_out_e(Data_out_e)
											);
	
	probador_byte_un_striping		probador_1(	.clk_2f(clk_2f),
												.reset(reset),
												.valid_0(valid_0),
												.lane_0(lane_0),
												.valid_1(valid_1),
												.lane_1(lane_1),
												.valid_out_c(valid_out_c),
												.Data_out_c(Data_out_c),
												.valid_out_e(valid_out_e),
												.Data_out_e(Data_out_e)
											);
endmodule