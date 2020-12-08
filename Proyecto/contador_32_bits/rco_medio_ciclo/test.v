task test00;

input integer iteration;
  repeat (iteration) begin  
    @(negedge clk) begin
	enable = 1; 
	mode = 2'b00;
    	D = 0;
    end
  end
endtask

task test01;

input integer iteration;
  repeat (iteration) begin  
    @(negedge clk) begin
	enable = 1; 
	mode = 2'b01;
    	D = 0;
    end
  end
endtask
task test10;
input integer iteration;
  repeat (iteration) begin  
    @(negedge clk) begin
	enable = 1; 
	mode = 2'b10;
	D = 0;
    end
  end
endtask
task test11;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
	D = {$random} % 32;
	enable = 1; 
	mode = 2'b11;
    end
  end
endtask
