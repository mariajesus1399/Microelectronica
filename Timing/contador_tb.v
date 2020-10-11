// Testbench Code Goes here
`include "scoreboard.v"
module contador_tb( enable, clk, reset, mode, D, load, rco, Q);

output reg enable;
output reg reset;
output reg [1:0] mode;
output reg [3:0] D;
input clk;
input load;
input rco;
input [3:0] Q;
output sb_load;
output sb_rco;
output [3:0] sb_Q;
output dut_load;
output dut_rco;
output [3:0] dut_Q;
`include "driver.v"
`include "checker.v"
`include "test.v"
parameter ITERATIONS = 50;
integer log;
initial begin

  $dumpfile("test.vcd");
  $dumpvars(0);
  log = $fopen("tb.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time); ////////
  $fdisplay(log, "time=%5d, Starting Reset", $time); ///////
  drv_init();
  $fdisplay(log, "time=%5d, Reset Completed", $time); /////
  $fdisplay(log, "time=%5d, Starting Test mode 00", $time);
  fork
    test00(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 00 completed ", $time);
  drv_init();
  $fdisplay(log, "time=%5d, Starting Test mode 01", $time);
  fork
    test01(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 01 completed ", $time);
    drv_init();
  $fdisplay(log, "time=%5d, Starting Test mode 10", $time);
  fork
    test10(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 10 completed ", $time);
    drv_init();
  $fdisplay(log, "time=%5d, Starting Test mode 11", $time);
  fork
    test11(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 11 completed ", $time);
      drv_init();
  $fdisplay(log, "time=%5d, Starting Test mode 00", $time);
  fork
    test00(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 00 completed ", $time);
  $fdisplay(log, "time=%5d, Simulation Completed", $time);
  $fclose(log);
  #200 $finish;
end

scoreboard sb(
	.clk (clk),
	.enable (enable),
	.reset (reset),
	.mode (mode),
	.D (D),
	.load (sb_load),
	.rco (sb_rco),
	.Q (sb_Q)

);

endmodule
