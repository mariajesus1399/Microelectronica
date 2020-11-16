task monitor;
reg mon_enable, mon_reset;
reg [1:0] mon_mode;
reg [3:0] mon_D;
reg mon_load, mon_rco;
reg [3:0] mon_Q;
forever always (posedge clk)begin
    mon_enable <= enable;
    mon_reset <= reset;
    mon_mode <= mode;
    mon_D <= D;
    mon_load <= load;
    mon_rco <= rco;
    mon_Q <= Q;
end
 
endtask
