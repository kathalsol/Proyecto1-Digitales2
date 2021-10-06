`include "byte_un_striping.v"
`include "probador_byte_un_striping.v"
`include "byte_unstriping_sintetizado.v"

module testbench_byte_striping();

    wire clk_2f;
    wire clk;
    wire valid_0;
    wire [31:0]lane_0;
    wire valid_1;
    wire [31:0]lane_1;
    wire [31:0]data_out;
    wire valid_out;
    wire [31:0]data_out_sint;
    wire valid_out_sint;

    byte_un_striping byte_unstriping_cond(clk_2f, clk, valid_0, lane_0, valid_1, lane_1, data_out, valid_out);
    probador_byte_un_striping probador_conductual(clk_2f, clk, valid_0, lane_0, valid_1, lane_1, data_out, valid_out);
    byte_unstriping_sintetizado byte_unstriping_sint(/*AUTOINST*/
						     // Outputs
						     .data_out_sint	(data_out_sint[31:0]),
						     .valid_out_sint	(valid_out_sint),
						     // Inputs
						     .clk		(clk),
						     .clk_2f		(clk_2f),
						     .lane_0		(lane_0[31:0]),
						     .lane_1		(lane_1[31:0]),
						     .valid_0		(valid_0),
						     .valid_1		(valid_1));
    probador_byte_un_striping probador_sintetizado(clk_2f, clk, valid_0, lane_0, valid_1, 
                                                   lane_1, data_out_sint, valid_out_sint);
endmodule
