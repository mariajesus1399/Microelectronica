task test_modo00_static;

input integer iteration;
  repeat (iteration) begin  
    @(negedge clk) begin
	enable = 1; 
	mode = 2'b00;
      	D = 1;
    end
  end
endtask

task test_modo01_static;

input integer iteration;
  repeat (iteration) begin  
    @(negedge clk) begin
	enable = 1; 
	mode = 2'b01;
	D = 1;
    end
  end
endtask

task test_modo10_static;

input integer iteration;
  repeat (iteration) begin  
    @(negedge clk) begin
	enable = 1; 
	mode = 2'b10;
	D = 1;
    end
  end
endtask
task test_modo11_random;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
	D = {$random} % 4;
	enable = 1; 
	mode = 2'b11;
    end
  end
endtask

task test_high_impedance;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
	D = {$random} % 4;
	enable = 0; 
	mode = 2'b11;
    end
  end
endtask

task test_reset;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
	D = {$random} % 4;
	enable = 1; 
	mode = {$random} % 2;
	reset = 1;
    end
  end
endtask
