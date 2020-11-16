//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk)
      reset = 1;	
    @(negedge clk)
      reset = 0;
    @(negedge clk)
      reset = 0;
  end
endtask



