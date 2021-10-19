phy_rx_test:
	iverilog -o test_phy_rx testbench_phy_rx.v
	vvp test_phy_rx
	gtkwave prueba_phy_rx.vcd

autoinst:
	emacs --batch phy_rx_c.v -f verilog-batch-auto
	
	sed -i '37 s/valid_out_c/valid_out_0_c/2' phy_rx_c.v
	sed -i '38 s/Data_out_c/Data_out_0_c/2' phy_rx_c.v
	sed -i '42 s/Data_in/Data_in_0/2' phy_rx_c.v

	sed -i '46 s/valid_out_c/valid_out_1_c/2' phy_rx_c.v
	sed -i '47 s/Data_out_c/Data_out_1_c/2' phy_rx_c.v
	sed -i '51 s/Data_in/Data_in_1/2' phy_rx_c.v

	sed -i '55 s/valid_out_c/valid_0_c/2' phy_rx_c.v
	sed -i '56 s/Data_out_c/lane_0_c/2' phy_rx_c.v
	sed -i '60 s/valid_in/valid_out_0_c/2' phy_rx_c.v
	sed -i '61 s/Data_in/Data_out_0_c/2' phy_rx_c.v

	sed -i '65 s/valid_out_c/valid_1_c/2' phy_rx_c.v
	sed -i '66 s/Data_out_c/lane_1_c/2' phy_rx_c.v
	sed -i '70 s/valid_in/valid_out_1_c/2' phy_rx_c.v
	sed -i '71 s/Data_in/Data_out_1_c/2' phy_rx_c.v

	sed -i '75 s/valid_out_c/valid_c/2' phy_rx_c.v
	sed -i '76 s/Data_out_c/Data_c/2' phy_rx_c.v
	
	sed -i '80 s/valid_0/valid_0_c/2' phy_rx_c.v
	sed -i '81 s/lane_0/lane_0_c/2' phy_rx_c.v
	sed -i '82 s/valid_1/valid_1_c/2' phy_rx_c.v
	sed -i '83 s/lane_1/lane_1_c/2' phy_rx_c.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_phy_rx.v

sintesis_rx:
	yosys -s phy_rx.ys
	sed -i 's/phy_rx_c/phy_rx_e/' phy_rx_e.v
	sed -i 's/clk_2f_c/clk_2f_e/g' phy_rx_e.v
	sed -i 's/clk_4f_c/clk_4f_e/g' phy_rx_e.v
	sed -i 's/valid_out_c/valid_out_e/g' phy_rx_e.v
	sed -i 's/Data_out_c/Data_out_e/g' phy_rx_e.v

estructural:
	sed -i 's/byte_un_striping_c/byte_un_striping_e/g' phy_rx_e.v
	sed -i 's/bits8_32word_c/bits8_32word_e/g' phy_rx_e.v
	sed -i 's/serial_parallel_c/serial_parallel_e/g' phy_rx_e.v