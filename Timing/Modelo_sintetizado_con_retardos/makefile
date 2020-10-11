CC = iverilog
library_input: tb_top.v 
	yosys -s yosys.ys
	sed -i 's/contador/contador_synth/' contador_synt.v
	$(CC) -o top.o -gspecify tb_top.v	#Con retardos
	vvp top.o
	gtkwave test.vcd

