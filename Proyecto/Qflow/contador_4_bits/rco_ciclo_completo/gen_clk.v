module gen_clk (clock);

output clock;
reg clock;

initial begin
clock = 2;
end

always begin
 #20 clock = !clock;
end

endmodule