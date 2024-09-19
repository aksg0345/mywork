module SVAonehot;
  
  bit a;
  bit [1:0] b; // b is now a 2-bit signal
  bit clk;
  
  // Clock generation with a period of 10 time units
  always #5 clk = ~clk;
  
  initial begin
    clk = 0; // Initialize the clock
    #10 a = 0; b = 2'b01; 
    #10 a = 1; b = 2'b10; 
    #10 a = 1; b = 2'b11; // Invalid one-hot condition
    #10 a = 0; b = 2'b11; 
    #10 a = 1; b = 2'b01; 
    #70;
    $finish;
  end
  
  // Define the property to check if b is one-hot
  property pe;
    @(posedge clk) a |-> $onehot(b); // Checks if b is one-hot when a is high
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
    -------------------------------------------------------------------------------------------------------------

    OUTPUT:
    
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Info: testbench.sv (29): Success
# KERNEL: Current simulation time: 5
# KERNEL: Info: testbench.sv (29): Success
# KERNEL: Current simulation time: 15
# KERNEL: Info: testbench.sv (29): Success
# KERNEL: Current simulation time: 25
# KERNEL: Info: testbench.sv (32): Fail
# KERNEL: Current simulation time: 35
# KERNEL: Info: testbench.sv (29): Success
# KERNEL: Current simulation time: 45
# KERNEL: Info: testbench.sv (29): Success
# KERNEL: Current simulation time: 55
