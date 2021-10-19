`timescale 1ns/1ps
`include "cmos_cells.v"
`include "probador_phy_tx.v"
`include "phy_tx_c.v"
`include "phy_tx_e.v"

module testbench_phy_tx (
);
	wire clk_32f;
	wire clk_2f;
	wire clk_4f;
	wire reset;
	wire valid_in;
	wire [31:0] Data_in;
	wire [7:0] Data_out_0_c;
	wire [7:0] Data_out_1_c;
	wire [7:0] Data_out_1_e;
	wire [7:0] Data_out_0_e;

	probador_phy_tx probador_phy_tx1 (
										.clk_32f(clk_32f),
										.clk_2f(clk_2f),
										.clk_4f(clk_4f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
										.Data_out_1bit_0_c(Data_out_1bit_0_c),
										.Data_out_1bit_1_c(Data_out_1bit_1_c),
										.Data_out_1bit_0_e(Data_out_1bit_0_e),
										.Data_out_1bit_1_e(Data_out_1bit_1_e)
	);

	phy_tx_c phy_tx_c1 (
                        .clk_32f(clk_32f),
	                    .clk_2f_c(clk_2f),
	                    .clk_4f_c(clk_4f),
	                    .reset(reset),
	                    .valid_in(valid_in),
	                    .Data_in(Data_in),
	                    .Data_out_1bit_0_c(Data_out_1bit_0_c),
	                    .Data_out_1bit_1_c(Data_out_1bit_1_c)
                        );

    phy_tx_e phy_tx_e1 (
                        .clk_32f(clk_32f),
	                    .clk_2f_e(clk_2f),
	                    .clk_4f_e(clk_4f),
	                    .reset(reset),
	                    .valid_in(valid_in),
	                    .Data_in(Data_in),
	                    .Data_out_1bit_0_e(Data_out_1bit_0_e),
	                    .Data_out_1bit_1_e(Data_out_1bit_1_e)

	);

endmodule