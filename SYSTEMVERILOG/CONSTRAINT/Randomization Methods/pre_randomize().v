module pre_randomize_module;

  // Define a class with a random variable and constraints
  class MyClass;
    rand int a;
    constraint c_a { a > 5; }

    // Method to perform pre-randomization setup
    function void pre_randomize_example();
      
      // Pre-randomization setup
      this.randomize() with { a < 10; };
      
      if(obj.c_a.constraint_mode==1)begin
      $display("Randomized value of 'a' after pre-randomization: %0d", a);
      end else begin
        $display("randomize is failed");
      end
      
    endfunction
  endclass

  
  // Declare an instance of the class
  MyClass obj;

  // Initial block to execute the pre-randomization example
  initial begin
    obj = new();
   
    obj.c_a.constraint_mode(1);
    obj.pre_randomize_example();
    
  end

endmodule

--------------------------------------------------------------------

OUTPUT:

# KERNEL: Randomized value of 'a' after pre-randomization: 8
