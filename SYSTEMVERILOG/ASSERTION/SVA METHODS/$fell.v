module SVAfell;
  
  bit a, b, clk;
  
  // Clock generation with a period of 10 time units
  always #5 clk = ~clk;
  
  initial begin
    clk = 0; // Initialize the clock
    #10 a = 0; b = 1; 
    #10 a = 1; b = 0; 
    #10 a = 1; b = 1; 
    #10 a = 0; b = 0; 
    #10 a = 1; b = 1; 
    #70;
    $finish;
  end
  
  // Define the property
  
  property pe;
    @(posedge clk) a |-> $fell(b); // --- ($fell)
  endproperty
  
  // Assert the property
  
  assertion: assert property (pe)
    
  begin
    $info("Success");
    $display("Current simulation time: %0t", $time);
  end else begin
    $info("Fail");
    $display("Current simulation time: %0t", $time);
  end
  
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end

endmodule
-----------------------------------------------------------------------------------------------------------------------------------------
    
    OUTPUT:

# KERNEL: Info: testbench.sv (30): Success
# KERNEL: Current simulation time: 5
# KERNEL: Info: testbench.sv (30): Success
# KERNEL: Current simulation time: 15
# KERNEL: Info: testbench.sv (30): Success
# KERNEL: Current simulation time: 25
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 35
# KERNEL: Info: testbench.sv (30): Success
# KERNEL: Current simulation time: 45
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 55
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 65
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 75
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 85
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 95
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 105
# KERNEL: Info: testbench.sv (33): Fail
# KERNEL: Current simulation time: 115
