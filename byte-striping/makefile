striping_test:
	iverilog -o test_byte_striping testbench_byte_striping.v
	vvp test_byte_striping
	gtkwave prueba_byte_striping.vcd

byte_striping:
	yosys -s byte_striping.ys
	sed -i 's/byte_striping_c/byte_striping_e/' byte_striping_e.v
	sed -i 's/clk_2f_c/clk_2f_e/g' byte_striping_e.v
	sed -i 's/valid_0_c/valid_0_e/g' byte_striping_e.v
	sed -i 's/lane_0_c/lane_0_e/g' byte_striping_e.v
	sed -i 's/valid_1_c/valid_1_e/g' byte_striping_e.v
	sed -i 's/lane_1_c/lane_1_e/g' byte_striping_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_byte_striping.v
