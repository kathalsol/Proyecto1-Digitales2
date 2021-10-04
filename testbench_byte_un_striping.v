`include "byte_un_striping.v"
`include "probador_byte_un_striping.v"

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

endmodule