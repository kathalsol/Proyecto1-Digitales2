`include "byte_striping.v"
`include "probador_byte_striping.v"

module testbench_byte_striping();

    wire clk_2f;
    wire valid_in;
    wire [31:0]data_in;
    wire valid_0;
    wire [31:0] lane_0;
    wire valid_1;
    wire [31:0] lane_1;

    byte_striping byte_striping_1(clk_2f, valid_in, data_in, valid_0, lane_0, valid_1, lane_1);
    probador_byte_striping probador1(clk_2f, valid_in, data_in, valid_0, lane_0, valid_1, lane_1);

endmodule