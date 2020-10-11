CC = iverilog
library_input: tb_top.v 
	yosys -s yosys.ys
	sed -i 's/contador/contador_synth/' contador_synt.v
	#$(CC) - o top.o - gspecify tb_top.v	#Con retardos
	$(CC)  -o top.o tb_top.v	
	vvp top.o
	gtkwave test.vcd

