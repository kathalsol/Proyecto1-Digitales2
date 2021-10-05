#-------------------------------
#-- Compilacion y simulacion
#-----------------------------
#-- Correr todas las herramientas

byte_unstriping:

	yosys -s sintesis_unstriping.ys
	sed -i 's/byte_un_striping/byte_unstriping_sintetizado/g' byte_unstriping_sintetizado.v
	#sed -i 's/data_out/data_out_sintetizado/g' byte_unstriping_sintetizado.v
	emacs --batch testbench_byte_un_striping.v -f verilog-batch-auto
	iverilog -o prueba.vvp testbench_byte_un_striping.v cmos_cells.v
	vvp prueba.vvp
	gtkwave prueba_unbyte.vcd
	rm prueba.vvp
	rm prueba_unbyte.vcd
	rm byte_unstriping_sintetizado.v

