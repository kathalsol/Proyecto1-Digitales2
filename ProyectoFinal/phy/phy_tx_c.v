`include "byte_striping_c.v"
`include "word32_8bits_c.v"
`include "parallel_serial_c.v"

module phy_tx_c (
	input clk_32f,
	input clk_2f_c,
	input clk_4f_c,
	input reset,
	input valid_in,
	input [31:0] Data_in,
	output reg Data_out_1bit_0_c,
	output reg Data_out_1bit_1_c
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
	wire Out_0_c;
	wire Out_1_c;

	always @(*) begin
		Data_out_1bit_0_c <= Out_0_c;
		Data_out_1bit_1_c <= Out_1_c;
	end

    byte_striping_c byte_striping_1(
                                    /*AUTOINST*/
				    // Outputs
				    .valid_0_c		(valid_0_c),
				    .lane_0_c		(lane_0_c[31:0]),
				    .valid_1_c		(valid_1_c),
				    .lane_1_c		(lane_1_c[31:0]),
				    // Inputs
				    .clk_2f_c		(clk_2f_c),
				    .reset		(reset),
				    .valid_in		(valid_in),
				    .Data_in		(Data_in[31:0]));
	
    word32_8bits_c word32_8bits_1(
                                /*AUTOINST*/
				  // Outputs
				  .valid_out_c		(valid_out_0_c),
				  .Data_out_c		(Data_out_0_c[7:0]),
				  // Inputs
				  .clk_4f_c		(clk_4f_c),
				  .reset		(reset),
				  .valid_in		(valid_0_c),
				  .Data_in		(lane_0_c[31:0])); 

    word32_8bits_c word32_8bits_2(
                                /*AUTOINST*/
				  // Outputs
				  .valid_out_c		(valid_out_1_c),
				  .Data_out_c		(Data_out_1_c[7:0]),
				  // Inputs
				  .clk_4f_c		(clk_4f_c),
				  .reset		(reset),
				  .valid_in		(valid_1_c),
				  .Data_in		(lane_1_c[31:0]));

    parallel_serial_c parallel_serial_c1 ( 
                                        /*AUTOINST*/
					  // Outputs
					  .Data_out_c		(Out_0_c),
					  // Inputs
					  .clk_32f		(clk_32f),
					  .reset		(reset),
					  .valid_in		(valid_out_0_c),
					  .Data_in		(Data_out_0_c[7:0]));

    parallel_serial_c parallel_serial_c2 (
                                        /*AUTOINST*/
					  // Outputs
					  .Data_out_c		(Out_1_c),
					  // Inputs
					  .clk_32f		(clk_32f),
					  .reset		(reset),
					  .valid_in		(valid_out_1_c),
					  .Data_in		(Data_out_1_c[7:0]));

	
endmodule
