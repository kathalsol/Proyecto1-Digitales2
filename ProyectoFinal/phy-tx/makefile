phy_tx_test:
	iverilog -o test_phy_tx testbench_phy_tx.v
	vvp test_phy_tx
	gtkwave prueba_phy_tx.vcd

autoinst:
	emacs --batch phy_tx_c.v -f verilog-batch-auto
	sed -i '51 s/valid_out_c/valid_out_0_c/2' phy_tx_c.v
	sed -i '52 s/Data_out_c/Data_out_0_c/2' phy_tx_c.v
	sed -i '56 s/valid_in/valid_0_c/2' phy_tx_c.v
	sed -i '57 s/Data_in/lane_0_c/2' phy_tx_c.v
	
	sed -i '62 s/valid_out_c/valid_out_1_c/2' phy_tx_c.v
	sed -i '63 s/Data_out_c/Data_out_1_c/2' phy_tx_c.v
	sed -i '67 s/valid_in/valid_1_c/2' phy_tx_c.v
	sed -i '68 s/Data_in/lane_1_c/2' phy_tx_c.v
	
	sed -i '73 s/Data_out_c/Out_0_c/2' phy_tx_c.v
	sed -i '77 s/valid_in/valid_out_0_c/2' phy_tx_c.v
	sed -i '78 s/Data_in/Data_out_0_c/2' phy_tx_c.v
	
	sed -i '83 s/Data_out_c/Out_1_c/2' phy_tx_c.v
	sed -i '87 s/valid_in/valid_out_1_c/2' phy_tx_c.v
	sed -i '88 s/Data_in/Data_out_1_c/2' phy_tx_c.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_phy_tx.v

sintesis_tx:
	yosys -s phy_tx.ys
	sed -i 's/phy_tx_c/phy_tx_e/' phy_tx_e.v
	sed -i 's/clk_2f_c/clk_2f_e/g' phy_tx_e.v
	sed -i 's/clk_4f_c/clk_4f_e/g' phy_tx_e.v
	sed -i 's/Data_out_1bit_0_c/Data_out_1bit_0_e/g' phy_tx_e.v
	sed -i 's/Data_out_1bit_1_c/Data_out_1bit_1_e/g' phy_tx_e.v

estructural:
	sed -i 's/byte_striping_c/byte_striping_e/g' phy_tx_e.v
	sed -i 's/word32_8bits_c/word32_8bits_e/g' phy_tx_e.v
	sed -i 's/parallel_serial_c/parallel_serial_e/g' phy_tx_e.v