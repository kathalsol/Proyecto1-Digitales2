serial_parallel_test:
	iverilog -o test_serial_parallel testbench_serial_parallel.v
	vvp test_serial_parallel
	gtkwave prueba_serial_parallel.vcd

serial_parallel:
	yosys -s serial_parallel.ys
	sed -i 's/serial_parallel_c/serial_parallel_e/' serial_parallel_e.v
	sed -i 's/valid_out_c/valid_out_e/g' serial_parallel_e.v
	sed -i 's/Data_out_c/Data_out_e/g' serial_parallel_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_serial_parallel.v
