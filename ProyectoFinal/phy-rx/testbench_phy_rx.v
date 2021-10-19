`timescale 1ns/1ps
`include "cmos_cells.v"
`include "probador_phy_rx.v"
`include "phy_rx_c.v"
`include "phy_rx_e.v"

module testbench_phy_rx (
);
	wire clk_32f;
	wire clk_2f;
	wire clk_4f;
	wire reset;
	wire Data_in_0;
	wire Data_in_1;
	wire valid_out_c;
	wire [31:0] Data_out_c;
    wire valid_out_e;
	wire [31:0] Data_out_e;

	probador_phy_rx probador_phy_rx1 (
										.clk_32f(clk_32f),
										.clk_2f(clk_2f),
										.clk_4f(clk_4f),
										.reset(reset),
										.Data_in_0(Data_in_0),
                                        .Data_in_1(Data_in_1),
                                        .valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c),
										.valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)
	);

	phy_rx_c phy_rx_c1 (
 										.clk_32f(clk_32f),
										.clk_2f_c(clk_2f),
										.clk_4f_c(clk_4f),
										.reset(reset),
										.Data_in_0(Data_in_0),
                                        .Data_in_1(Data_in_1),
                                        .valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c)
                        );

    phy_rx_e phy_rx_e1 (
 										.clk_32f(clk_32f),
										.clk_2f_e(clk_2f),
										.clk_4f_e(clk_4f),
										.reset(reset),
										.Data_in_0(Data_in_0),
                                        .Data_in_1(Data_in_1),
                                        .valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)

	);

endmodule