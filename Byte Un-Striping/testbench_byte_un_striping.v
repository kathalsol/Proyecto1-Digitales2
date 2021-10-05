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

    byte_un_striping byte_un_striping_1(clk_2f, clk, valid_0, lane_0, valid_1, lane_1, data_out, valid_out);
    probador_byte_un_striping probador_un_1(clk_2f, clk, valid_0, lane_0, valid_1, lane_1, data_out, valid_out);
    byte_unstriping_sintetizado byte_unstriping_sint(/*AUTOINST*/
						     // Outputs
						     .data_out		(data_out[31:0]),
						     .valid_out		(valid_out),
						     // Inputs
						     .clk		(clk),
						     .clk_2f		(clk_2f),
						     .lane_0		(lane_0[31:0]),
						     .lane_1		(lane_1[31:0]),
						     .valid_0		(valid_0),
						     .valid_1		(valid_1));
endmodule
