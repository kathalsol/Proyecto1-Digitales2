codigo:
	iverilog -o test testbench.v
	vvp test
	gtkwave pruebas.vcd

clk_generator:
	yosys -s clk_generator.ys
	sed -i 's/clk_generator_c/clk_generator_e/' clk_generator_e.v
	sed -i 's/clk_16f_c/clk_16f_e/g' clk_generator_e.v
	sed -i 's/clk_8f_c/clk_8f_e/g' clk_generator_e.v
	sed -i 's/clk_4f_c/clk_4f_e/g' clk_generator_e.v
	sed -i 's/clk_2f_c/clk_2f_e/g' clk_generator_e.v
	sed -i 's/clk_f_c/clk_f_e/g' clk_generator_e.v

word32_8bits:
	yosys -s word32_8bits.ys
	sed -i 's/word32_8bits_c/word32_8bits_e/' word32_8bits_e.v
	sed -i 's/valid_out_c/valid_out_e/g' word32_8bits_e.v
	sed -i 's/Data_out_c/Data_out_e/g' word32_8bits_e.v

bits8_32word:
	yosys -s bits8_32word.ys
	sed -i 's/bits8_32word_c/bits8_32word_e/' bits8_32word_e.v
	sed -i 's/valid_out_c/valid_out_e/g' bits8_32word_e.v
	sed -i 's/Data_out_c/Data_out_e/g' bits8_32word_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench.v
	
AUTOINST:
	emacs --batch testbench.v -f verilog-batch-auto