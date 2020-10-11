`include "gen_clk.v"
`include "contador.v"
`include "contador_tb.v"
`include "cmos_cells.v"
`include "contador_synt.v"
module tb_top;

gen_clk clk1 (.clock (clock));


wire  load_tb, rco_tb;
wire [3:0] Q_tb;

wire enable , reset;
wire [1:0] mode;
wire [3:0] D;
wire  load, rco;
wire [3:0] Q;
wire  load_synth, rco_synth;
wire [3:0] Q_synth;

contador_tb tb(
	.reset (reset), 
	.enable (enable),
	.D (D),
	.mode (mode),
	.load (load_tb),
	.rco (rco_tb),
	.Q (Q_tb),
	.clk (clock)
);

contador dut (
	.reset (reset), 
	.enable (enable),
	.D (D),
	.mode (mode),
	.load (load),
	.rco (rco),
	.Q (Q),
	.clk (clock)
);
contador_synth synth( 
	.reset (reset), 
	.enable (enable),
	.D (D),
	.mode (mode),
	.load (load_synth),
	.rco (rco_synth),
	.Q (Q_synth),
	.clk (clock)
);


endmodule
