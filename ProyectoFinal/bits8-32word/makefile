bits8_test:
	iverilog -o test_bits8_32word testbench_bits8_32word.v
	vvp test_bits8_32word
	gtkwave prueba_bits8_32word.vcd

bits8_32word:
	yosys -s bits8_32word.ys
	sed -i 's/bits8_32word_c/bits8_32word_e/' bits8_32word_e.v
	sed -i 's/clk_4f_c/clk_4f_e/g' bits8_32word_e.v
	sed -i 's/valid_out_c/valid_out_e/g' bits8_32word_e.v
	sed -i 's/Data_out_c/Data_out_e/g' bits8_32word_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_bits8_32word.v
