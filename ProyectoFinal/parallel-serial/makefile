parallel_serial_test:
	iverilog -o test_parallel_serial testbench_parallel_serial.v
	vvp test_parallel_serial
	gtkwave prueba_parallel_serial.vcd

parallel_serial:
	yosys -s parallel_serial.ys
	sed -i 's/parallel_serial_c/parallel_serial_e/' parallel_serial_e.v
	sed -i 's/Data_out_c/Data_out_e/g' parallel_serial_e.v

cmos_cells:
	sed -i '2i\`include "cmos_cells.v"\' testbench_parallel_serial.v
