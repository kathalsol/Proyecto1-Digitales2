test:
	iverilog -o test_clk testbench_clk.v
	vvp test_clk
	gtkwave prueba_clk.vcd

clk_generator:
	yosys -s clk_generator.ys
	sed -i 's/clk_generator_c/clk_generator_e/' clk_generator_e.v
	sed -i 's/clk_16f_c/clk_16f_e/g' clk_generator_e.v
	sed -i 's/clk_8f_c/clk_8f_e/g' clk_generator_e.v
	sed -i 's/clk_4f_c/clk_4f_e/g' clk_generator_e.v
	sed -i 's/clk_2f_c/clk_2f_e/g' clk_generator_e.v
	sed -i 's/clk_f_c/clk_f_e/g' clk_generator_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_clk.v