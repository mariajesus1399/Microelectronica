CC = iverilog
library_input: tb_top.v 	
	$(CC)  -o top.o tb_top.v	
	vvp top.o
	gtkwave test.vcd

