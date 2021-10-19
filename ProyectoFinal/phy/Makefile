phy_test:
	iverilog -o test_phy testbench_phy.v
	vvp test_phy
	gtkwave prueba_phy.vcd

autoinst:
	emacs --batch phy_c.v -f verilog-batch-auto
	
	sed -i '43 s/valid_out_c/valid/2' phy_c.v
	sed -i '44 s/Data_out_c/Data/2' phy_c.v
	sed -i '50 s/Data_in_0/Data_out_1bit_0_c/2' phy_c.v
	sed -i '51 s/Data_in_1/Data_out_1bit_1_c/2' phy_c.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_phy.v

sintesis_phy:
	yosys -s phy.ys
	sed -i 's/phy_c/phy_e/' phy_e.v
	sed -i 's/clk_2f_c/clk_2f_e/g' phy_e.v
	sed -i 's/clk_4f_c/clk_4f_e/g' phy_e.v
	sed -i 's/valid_out_c/valid_out_e/g' phy_e.v
	sed -i 's/Data_out_c/Data_out_e/g' phy_e.v

estructural:
	sed -i 's/phy_rx_c/phy_rx_e/' phy_e.v
	sed -i 's/phy_tx_c/phy_tx_e/' phy_e.v
	sed -i 's/clk_generator_c/clk_generator_e/' phy_e.v
	sed -i 's/byte_striping_c/byte_striping_e/g' phy_e.v
	sed -i 's/word32_8bits_c/word32_8bits_e/g' phy_e.v
	sed -i 's/parallel_serial_c/parallel_serial_e/g' phy_e.v
	sed -i 's/byte_un_striping_c/byte_un_striping_e/g' phy_e.v
	sed -i 's/bits8_32word_c/bits8_32word_e/g' phy_e.v
	sed -i 's/serial_parallel_c/serial_parallel_e/g' phy_e.v