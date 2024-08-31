class name;
  
  
  
  rand bit [3:0] value1;
  randc bit [8:0] value2;
  
  constraint n1 {(value1 inside {[1:10]}) -> (value2 < 15);}
  

  
endclass

module na2;
  
  initial begin
    
    int i;
    
    name we;
    
    we=new();
    
    for(i=1; i<20; i++)begin
      void'(we.randomize());
      $display("value1=%0d and value2=%0d ", we.value1,we.value2);
    end
  end
endmodule

------------------------------------------------------------------------------

OUTPUT:
# KERNEL: value1=11 and value2=486 
# KERNEL: value1=13 and value2=237 
# KERNEL: value1=14 and value2=171 
# KERNEL: value1=3 and value2=6 
# KERNEL: value1=13 and value2=122 
# KERNEL: value1=9 and value2=9 
# KERNEL: value1=13 and value2=447 
# KERNEL: value1=7 and value2=1 
# KERNEL: value1=8 and value2=14 
# KERNEL: value1=11 and value2=225 
# KERNEL: value1=1 and value2=2 
# KERNEL: value1=6 and value2=10 
# KERNEL: value1=9 and value2=5 
# KERNEL: value1=11 and value2=425 
# KERNEL: value1=14 and value2=458 
# KERNEL: value1=12 and value2=219 
# KERNEL: value1=13 and value2=437 
# KERNEL: value1=13 and value2=112 
# KERNEL: value1=7 and value2=13 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
