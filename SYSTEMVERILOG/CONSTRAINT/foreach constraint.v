class name;
  
  rand bit [3:0] value1[4];
  rand bit [8:0] value2[10];
  
  constraint n1 {
    foreach (value1[i])
      value1[i]==i;
    foreach (value2[i])
      value2[i]==i;
                }
endclass
                    
                    

module na2;
  
  initial begin
    
    int i;
    
    name we;
    
    we=new();
 
      void'(we.randomize());
    $display(" value1=%0p" , we.value1);
    $display(" value2=%0p" , we.value2);
  end
endmodule
--------------------------------------------------------------------

OUTPUT:

# Allocation: Simulator allocated 4749 kB (elbread=455 elab2=4151 kernel=142 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:  value1=0 1 2 3
# KERNEL:  value2=0 1 2 3 4 5 6 7 8 9
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
