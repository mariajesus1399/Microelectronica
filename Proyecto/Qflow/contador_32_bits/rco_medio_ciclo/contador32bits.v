`include "contador.v"
// -----------------------------------------------
// Contador 32 bits 
// -----------------------------------------------
// Entradas: enable,clk,reset,mode,D
// Salida: load,rco,Q

module contador32bits(
	input enable, 
	input clk, 
	input reset, 
	input [1:0] mode,
	input [3:0] D,
	output  load,
	output rco,
 	output [31:0] Q
);
wire [7:0]rco_bus; 
parameter N = 32; 
genvar i;
generate
	contador op (enable, clk, reset, mode, D, load, rco_bus[0], Q[3:0]);
	    for (i = 4; i < N; i = i+4) begin
            contador op (rco_bus[i/4-1], clk, reset, mode, D, load, rco_bus[i/4], Q[i+3:i]);
        end
endgenerate

endmodule



















