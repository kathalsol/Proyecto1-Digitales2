`include "byte_un_striping_c.v"
`include "bits8_32word_c.v" 
`include "serial_parallel_c.v"

module phy_rx_c (
	input clk_32f,
	input clk_2f_c,
	input clk_4f_c,
	input reset,
	input Data_in_0,
	input Data_in_1,
	output reg valid_out_c,
	output reg [31:0] Data_out_c
);
	wire clk_32f;
	wire clk_2f_c;
	wire clk_4f_c;
	wire reset;
	wire valid_0_c;
	wire [31:0] lane_0_c;
	wire valid_1_c;
	wire [31:0] lane_1_c;
	wire valid_out_0_c;
	wire [7:0] Data_out_0_c;
	wire valid_out_1_c;
	wire [7:0] Data_out_1_c;
	wire valid_c;
	wire [31:0] Data_c;

	always @(*) begin
		valid_out_c <= valid_c;
		Data_out_c <= Data_c;
	end

	serial_parallel_c serial_parallel_1 (/*AUTOINST*/
					     // Outputs
					     .valid_out_c	(valid_out_0_c),
					     .Data_out_c	(Data_out_0_c[7:0]),
					     // Inputs
					     .clk_32f		(clk_32f),
					     .reset		(reset),
					     .Data_in		(Data_in_0));

	serial_parallel_c serial_parallel_2 (/*AUTOINST*/
					     // Outputs
					     .valid_out_c	(valid_out_1_c),
					     .Data_out_c	(Data_out_1_c[7:0]),
					     // Inputs
					     .clk_32f		(clk_32f),
					     .reset		(reset),
					     .Data_in		(Data_in_1));

	bits8_32word_c bits8_32word_1 (/*AUTOINST*/
				       // Outputs
				       .valid_out_c	(valid_0_c),
				       .Data_out_c	(lane_0_c[31:0]),
				       // Inputs
				       .clk_4f_c	(clk_4f_c),
				       .reset		(reset),
				       .valid_in	(valid_out_0_c),
				       .Data_in		(Data_out_0_c[7:0]));

	bits8_32word_c bits8_32word_2 (/*AUTOINST*/
				       // Outputs
				       .valid_out_c	(valid_1_c),
				       .Data_out_c	(lane_1_c[31:0]),
				       // Inputs
				       .clk_4f_c	(clk_4f_c),
				       .reset		(reset),
				       .valid_in	(valid_out_1_c),
				       .Data_in		(Data_out_1_c[7:0]));

	byte_un_striping_c byte_un_striping_1 (/*AUTOINST*/
					       // Outputs
					       .valid_out_c	(valid_c),
					       .Data_out_c	(Data_c[31:0]),
					       // Inputs
					       .clk_2f_c	(clk_2f_c),
					       .reset		(reset),
					       .valid_0		(valid_0_c),
					       .lane_0		(lane_0_c[31:0]),
					       .valid_1		(valid_1_c),
					       .lane_1		(lane_1_c[31:0]));

endmodule
