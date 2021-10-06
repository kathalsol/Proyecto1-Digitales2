`include "byte_un_striping.v"
`include "probador_byte_un_striping.v"
`include "byte_unstriping_sintetizado.v"

module testbench_byte_unstriping();

    wire clk_2f;
    wire clk;
    wire valid_0;
    wire [31:0]lane_0;
    wire valid_1;
    wire [31:0]lane_1;
    wire [31:0]data_out_c;
    wire valid_out_c;
    wire [31:0]data_out_e;
    wire valid_out_e;

    byte_un_striping byte_unstriping_cond(clk_2f, clk, valid_0, lane_0, valid_1, 
                                        lane_1, data_out_c, valid_out_c);
   
    probador_byte_un_striping probador_byte_unstriping(clk_2f, clk, valid_0, lane_0, 
                                                    valid_1, lane_1, data_out_c, valid_out_c,
                                                    data_out_e, valid_out_e);
   
   
    byte_unstriping_sintetizado byte_unstriping_sint(/*AUTOINST*/
						     // Outputs
						     .data_out_e	(data_out_e[31:0]),
						     .valid_out_e	(valid_out_e),
						     // Inputs
						     .clk		(clk),
						     .clk_2f		(clk_2f),
						     .lane_0		(lane_0[31:0]),
						     .lane_1		(lane_1[31:0]),
						     .valid_0		(valid_0),
						     .valid_1		(valid_1));
   
endmodule
