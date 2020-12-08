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
 	output [0:31] Q
);

wire [7:0]rco_bus; 
parameter N = 32; 
genvar i;
generate
    contador op (enable, clk, reset, mode, D, load, rco_bus[7], Q[28:31]);
    for (i = 24; i >= 0; i = i-4) begin
            contador op (rco_bus[i/4+1], clk, reset, mode, D, load, rco_bus[i/4], Q[i:i+3]);
			// rco = rco_bus[7];
        end
endgenerate

endmodule



