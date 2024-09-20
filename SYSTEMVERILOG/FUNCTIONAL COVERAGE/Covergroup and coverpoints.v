// Code your testbench here
// or browse Examples

module coverage;
  
  bit[1:0]a;
  bit[1:0]b;
  
  covergroup cg; //--> cover group
    
   coverpoint a;  //---> cover point
   coverpoint b;   
  
  endgroup 
  
  cg cgc = new();
  
  initial begin
    
    repeat(4) begin
      
      a=$random();
      b=$random();
      cgc.sample();  //---> must use sample  
      $display("a=%d ; b=%d ; coverage %%= %.2f",a,b,cgc.get_inst_coverage());
      
    end
    
    $display("overall functional coverage%% = %.2f%%",cgc.get_coverage());

  end
  
endmodule
-------------------------------------------------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a=0 ; b=1 ; coverage %= 25.00
# KERNEL: a=1 ; b=3 ; coverage %= 50.00
# KERNEL: a=1 ; b=1 ; coverage %= 50.00
# KERNEL: a=1 ; b=2 ; coverage %= 62.50
# KERNEL: overall functional coverage% = 62.50%
