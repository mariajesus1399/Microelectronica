`include "gen_clk.v"
`include "contadorC.v"
`include "contadorC_tb.v"

module tb_top;

gen_clk clk1 (.clock (clock));


wire  load_tb, rco_tb;
wire [3:0] Q_tb;

wire enable , reset;
wire [1:0] mode;
wire [3:0] D;
wire  load, rco;
wire [3:0] Q;

contadorC_tb tb(
	.reset (reset), 
	.enable (enable),
	.D (D),
	.mode (mode),
	.load (load_tb),
	.rco (rco_tb),
	.Q (Q_tb),
	.clk (clock)
);

contadorC dut (
	.reset (reset), 
	.enable (enable),
	.D (D),
	.mode (mode),
	.load (load),
	.rco (rco),
	.Q (Q),
	.clk (clock)
);

endmodule





