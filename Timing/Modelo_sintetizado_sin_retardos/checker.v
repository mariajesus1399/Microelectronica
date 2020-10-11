task checker;

input integer iteration;

repeat (iteration) @ (posedge clk) begin
	if ({sb_load, sb_rco, sb_Q} == {dut.load, dut.rco, dut.Q}) begin  ////// sb.sb_gnt0 ????????????????
          //$fdisplay(log, "PASS");
        end
        else begin
          $fdisplay(log, "Time=%.0f Error dut: load=%b, rco=%b, Q=%b, scoreboard: load=%b, rco=%b , Q=%b ", $time, dut.load, dut.rco, dut.Q, sb_load, sb_rco, sb_Q);
        end
end
endtask