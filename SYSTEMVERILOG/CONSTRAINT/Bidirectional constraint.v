class name;
  
  rand bit [3:0] value1;
  randc bit [8:0] value2;
  
  constraint n1 { value1>6; value1>12; }
  
  constraint n2 {value1<20;}
  
  constraint n3 {value2>10; value2<30;}
  
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
------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: value1=15 and value2=22 
# KERNEL: value1=13 and value2=27 
# KERNEL: value1=14 and value2=17 
# KERNEL: value1=15 and value2=28 
# KERNEL: value1=13 and value2=16 
# KERNEL: value1=14 and value2=18 
# KERNEL: value1=13 and value2=14 
# KERNEL: value1=14 and value2=15 
# KERNEL: value1=15 and value2=23 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
