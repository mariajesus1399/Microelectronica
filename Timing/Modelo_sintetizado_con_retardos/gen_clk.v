`timescale 1ns / 1ps
module gen_clk (clock);

output clock;
reg clock;

initial begin
clock = 2;
end

always begin
 #200 clock = !clock;
end

endmodule
