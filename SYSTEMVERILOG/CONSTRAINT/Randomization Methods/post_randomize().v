module pre_post_randomize_module;

  // Define a class with a random variable and constraints
  class MyClass;
    rand int a;
    constraint c_a { a > 8; }

     // Method to perform post-randomization actions
    function void post_randomize_example();
      this.randomize() with { a < 12; };
        $display("Randomized value of 'a' after pre-randomization: %0d", a);
      // Post-randomization adjustment: ensure 'a' is odd
      if (a % 2 == 0) begin
        a = a + 1;
        $display("Adjusted value of 'a' after post-randomization: %0d", a);
      end else begin
        $display("Value of 'a' after post-randomization: %0d", a);
      end
      
    endfunction
  endclass

  // Declare an instance of the class
  MyClass obj;

  // Initial block to execute the pre and post-randomization examples
  initial begin
    obj = new();
    
   
    // Perform post-randomization
    obj.post_randomize_example();
  end

endmodule

---------------------------------------------------------
OUTPUT:

# KERNEL: Randomized value of 'a' after pre-randomization: 9
# KERNEL: Value of 'a' after post-randomization: 9

