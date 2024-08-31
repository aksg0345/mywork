class name;
  
  
  
  rand bit [3:0] value1;
  randc bit [8:0] value2;
  
  constraint n1 {
                  if (value1 inside {[1:10]}) 
                      value2 == 1;
     
                  else {
                    value2 == 0;}
                }
endclass
                    
                    

module na2;
  
  initial begin
    
    int i;
    
    name we;
    
    we=new();
    
    for(i=1; i<10; i++)begin
      void'(we.randomize());
      $display("value1=%0d and value2=%0d ", we.value1,we.value2);
    end
  end
endmodule
-----------------------------------------------------------------------------------------

    OUTPUT:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value1=5 and value2=1 
# KERNEL: value1=11 and value2=0 
# KERNEL: value1=6 and value2=1 
# KERNEL: value1=0 and value2=0 
# KERNEL: value1=5 and value2=1 
# KERNEL: value1=11 and value2=0 
# KERNEL: value1=14 and value2=0 
# KERNEL: value1=3 and value2=1 
# KERNEL: value1=15 and value2=0 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
