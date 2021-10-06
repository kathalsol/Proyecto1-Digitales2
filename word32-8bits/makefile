word32_test:
	iverilog -o test_word32_8bits testbench_word32_8bits.v
	vvp test_word32_8bits
	gtkwave prueba_word32_8bits.vcd

word32_8bits:
	yosys -s word32_8bits.ys
	sed -i 's/word32_8bits_c/word32_8bits_e/' word32_8bits_e.v
	sed -i 's/clk_4f_c/clk_4f_e/g' word32_8bits_e.v
	sed -i 's/valid_out_c/valid_out_e/g' word32_8bits_e.v
	sed -i 's/Data_out_c/Data_out_e/g' word32_8bits_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_word32_8bits.v
