// Testbench Code Goes here
`include "scoreboard.v"
module contadorA_tb( enable, clk, reset, mode, D, load, rco, Q);

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
`include "tests.v"
parameter ITERATIONS = 30;
integer log;




initial begin

  $dumpfile("test.vcd");
  $dumpvars(0);

  log = $fopen("tb.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time); ////////
  $fdisplay(log, "time=%5d, Starting Reset", $time); ///////

  drv_init();

  $fdisplay(log, "time=%5d, Reset Completed", $time); /////

  $fdisplay(log, "time=%5d, Starting Test mode 11 random entries", $time);
  fork
    test_modo11_random(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 11 random entries completed ", $time);
	/*************************************************************/
  drv_init();
  $fdisplay(log, "time=%5d, Starting Test mode 00 static entries", $time);
  fork
    test_modo00_static(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 00 static entries completed ", $time);
	/*************************************************************/
  drv_init();
  $fdisplay(log, "time=%5d, Starting Test mode 01 static entries", $time);
  fork
    test_modo01_static(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 01 static entries completed ", $time);
	/*************************************************************/
  drv_init();
  $fdisplay(log, "time=%5d, Starting Test mode 10 static entries", $time);
  fork
    test_modo10_static(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test mode 10 static entries completed ", $time);
  drv_init();
  $fdisplay(log, "time=%5d, Starting Test: High Impedance", $time);
  fork
    test_high_impedance(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test High Impedance completed ", $time);
  $fdisplay(log, "time=%5d, Simulation Completed", $time);
  drv_init();
  $fdisplay(log, "time=%5d, Starting Test: Reset", $time);
  fork
    test_reset(ITERATIONS);  
    checker(ITERATIONS);
  join
  $fdisplay(log, "time=%5d, Test Reset completed ", $time);
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
