// -----------------------------------------------
// Contador 4 bits 
// -----------------------------------------------
// Entradas: enable,clk,reset,mode,D
// Salida: load,rco,Q

module contador(
	input enable, 
	input clk, 
	input reset, 
	input [1:0] mode,
	input [3:0] D,
	output reg load,
	output reg rco,
 	output reg [3:0] Q
);		
initial Q = 0;
always @ (negedge clk) begin
	if (rco == 0 && Q  == 4'b1111  && mode == 0) begin
		rco = 1;
	end else if (rco == 0 && Q  == 4'b0000  && mode == 1) begin
		rco = 1;
	end else if (rco == 0 && Q  == 4'b1111  && mode == 2) begin
		rco = 1;
	end else begin
		rco = 0;
		load = 1;
	end
end
always @ (posedge clk) begin
	case(mode)
      		2'b00    : begin
				if(reset == 1) begin
					load = 0;
					rco  = 0;
					Q    = 0;
				end else begin 
					if(enable == 1) begin
						Q = Q + 1'b1;
						load = 0;
						if (Q == 4'b1111)
							rco = 0;
						else 
							rco = 0;
					end 
				end
			end
		
      		2'b01    : begin 

				if(reset == 1) begin
					load = 0;
					rco  = 0;
					Q    = 0;
				end else begin 
					if(enable == 1) begin
						Q = Q - 1'b1;
						load = 0;
						if (Q == 0)
							rco = 0;
						else 
							rco = 0;
					end
				end 
			end
			2'b10 	: begin
				if(reset == 1) begin
					load = 0;
					rco  = 0;
					Q    = 0;
				end else begin 
					if(enable == 1) begin
						Q = Q + 2'b11;
						load = 0;
						if (Q == 4'b1111)
							rco = 0;
						else 
							rco = 0;
					end
				end 
			end
			2'b11 	: begin
				if(reset == 1) begin
						load = 0;
						rco  = 0;
						Q    = 0;
					end else begin 
						if(enable == 1) begin
							Q = D;
							load = 1;
							rco = 0;
					end 
				end
			end

    	endcase
end
endmodule