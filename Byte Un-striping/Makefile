#-------------------------------
#-- Compilacion y simulacion
#-----------------------------
#-- Correr todas las herramientas

byte_unstriping:

	yosys -s sintesis_unstriping.ys
	sed -i 's/byte_un_striping/byte_unstriping_sintetizado/g' byte_unstriping_sintetizado.v
	sed -i 's/data_out/data_out_e/g' byte_unstriping_sintetizado.v
	sed -i 's/valid_out/valid_out_e/g' byte_unstriping_sintetizado.v
	emacs --batch testbench_byte_un_striping.v -f verilog-batch-auto
	iverilog -o prueba.vvp testbench_byte_un_striping.v cmos_cells.v
	vvp prueba.vvp
	gtkwave prueba_byte_unstriping.vcd

clean:
	rm byte_unstriping_sintetizado.v
	rm prueba.vvp

	

