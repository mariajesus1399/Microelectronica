
// -----------------------------------------------
// Contador 32 bits 
// -----------------------------------------------
// Entradas: enable,clk,reset,mode,D
// Salida: load,rco,Q

module scoreboard(
	input enable, 
	input clk, 
	input reset, 
	input [1:0] mode,
	input [3:0] D,
	output  load,
	output rco,
 	output [0:31] Q
);
parameter N = 32; 
genvar i;
generate
    contador op (enable, clk, reset, mode, D, load, rco, Q[0:3]);
    for (i = 4; i < N; i = i+4) begin
            contador op (rco, clk, reset, mode, D, load, rco, Q[i:i+3]);
        end
endgenerate

endmodule
