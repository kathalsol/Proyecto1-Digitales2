un_striping_test:
	iverilog -o test_byte_un_striping testbench_byte_un_striping.v
	vvp test_byte_un_striping
	gtkwave prueba_byte_un_striping.vcd

byte_un_striping:
	yosys -s byte_un_striping.ys
	sed -i 's/byte_un_striping_c/byte_un_striping_e/' byte_un_striping_e.v
	sed -i 's/clk_2f_c/clk_2f_e/g' byte_un_striping_e.v
	sed -i 's/valid_out_c/valid_out_e/g' byte_un_striping_e.v
	sed -i 's/Data_out_c/Data_out_e/g' byte_un_striping_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_byte_un_striping.v
