module scoreboard(
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
always @ (posedge clk) begin
	if (mode == 2'b00) begin
				if(reset == 1) begin
					load = 0;
					rco  = 0;
					Q    = 0;
				end else begin 
					Q = Q + 1'b1;
					load = 0;
					if (Q == 4'b1111)
						rco = 1;
					else 
						rco = 0;
				end 
	end else if (mode == 2'b01)  begin
				if(reset == 1) begin
					load = 0;
					rco  = 0;
					Q    = 0;
				end else begin 
					Q = Q - 1'b1;
					load = 0;
					if (Q == 0)
						rco = 1;
					else 
						rco = 0;
				end 
	end else if (mode == 2'b10) begin
				if(reset == 1) begin
					load = 0;
					rco  = 0;
					Q    = 0;
				end else begin 
					Q = Q + 2'b11;
					load = 0;
					if (Q == 4'b1111)
						rco = 1;
					else 
						rco = 0;
				end 
	end else begin
				if(reset == 1) begin
					load = 0;
					rco  = 0;
					Q    = 0;
				end else begin 
					Q = D;
					load = 1;
					rco = 0;
				end 
	end 
end
endmodule
