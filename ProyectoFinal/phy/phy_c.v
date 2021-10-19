`include "phy_tx_c.v"
`include "phy_rx_c.v"
`include "clk_generator_c.v"

module phy_c (
	input clk_32f,
	input reset, 
	input valid_in,
	input [31:0] Data_in,
	output reg valid_out_c,
	output reg [31:0] Data_out_c
);

	wire Data_out_1bit_0_c;
	wire Data_out_1bit_1_c;
	wire [31:0] Data;
	wire valid;

phy_tx_c phy_tx_c00 (
                    /*AUTOINST*/
		     // Outputs
		     .Data_out_1bit_0_c	(Data_out_1bit_0_c),
		     .Data_out_1bit_1_c	(Data_out_1bit_1_c),
		     // Inputs
		     .clk_32f		(clk_32f),
		     .clk_2f_c		(clk_2f_c),
		     .clk_4f_c		(clk_4f_c),
		     .reset		(reset),
		     .valid_in		(valid_in),
		     .Data_in		(Data_in[31:0]));

clk_generator_c clk_generador( /*AUTOINST*/
			      // Outputs
			      .clk_4f_c		(clk_4f_c),
			      .clk_2f_c		(clk_2f_c),
			      .clk_f_c		(clk_f_c),
			      // Inputs
			      .clk_32f		(clk_32f),
			      .reset		(reset));

phy_rx_c phy_rx_c00 ( /*AUTOINST*/
		     // Outputs
		     .valid_out_c	(valid),
		     .Data_out_c	(Data[31:0]),
		     // Inputs
		     .clk_32f		(clk_32f),
		     .clk_2f_c		(clk_2f_c),
		     .clk_4f_c		(clk_4f_c),
		     .reset		(reset),
		     .Data_in_0		(Data_out_1bit_0_c),
		     .Data_in_1		(Data_out_1bit_1_c));
	
	always @(*) begin
		valid_out_c <= valid;
		Data_out_c <= Data;
	end
endmodule
