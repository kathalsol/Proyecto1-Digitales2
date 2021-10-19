`timescale 1ns/1ps
`include "cmos_cells.v"
`include "phy_c.v"
`include "phy_e.v"
`include "probador_phy.v"


module testbench_phy ();

    wire clk_32f;
    wire [31:0] Data_in;
    wire valid_in;
    wire [31:0] Data_out_c;
    wire valid_out_c;
    wire [31:0] Data_out_e;
    wire valid_out_e;
    


    probador_phy  probador_phy (
										.clk_32f(clk_32f),
										.reset(reset),
										.valid_in(valid_in),
										.Data_in(Data_in),
                                        .valid_out_c(valid_out_c),
										.Data_out_c(Data_out_c),
                                        .valid_out_e(valid_out_e),
										.Data_out_e(Data_out_e)
	);

    phy_c phy_c1 (
                        .clk_32f(clk_32f),
	                    .reset(reset),
	                    .valid_in(valid_in),
	                    .Data_in(Data_in),
                        .valid_out_c(valid_out_c),
	                    .Data_out_c(Data_out_c)
                        );

    phy_e phy_e1 (
                        .clk_32f(clk_32f),
	                    .reset(reset),
	                    .valid_in(valid_in),
	                    .Data_in(Data_in),
                        .valid_out_e(valid_out_e),
						.Data_out_e(Data_out_e)
    
    );

endmodule