class name; 
            rand bit value1;  
            rand bit [3:0] value2;  
  constraint valu {value1*2==2 -> value2==1;  
                            solve value1 before value2;}  
          endclass  

module solve_before();  
            
             name gen2 = new();  

            initial  
            begin  
             for(int i=1;i<=10;i++)  
              begin  
                  void'(gen2.randomize());  
                 $display("\t[%0t] @ iteration: %0d -----> value1: %0d \t value2: %0d",$time,i,gen2.value1,gen2.value2);  
              end  
          
            end  

          endmodule 
--------------------------------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 	[0] @ iteration: 1 -----> value1: 0 	 value2: 13
# KERNEL: 	[0] @ iteration: 2 -----> value1: 0 	 value2: 7
# KERNEL: 	[0] @ iteration: 3 -----> value1: 0 	 value2: 4
# KERNEL: 	[0] @ iteration: 4 -----> value1: 1 	 value2: 1
# KERNEL: 	[0] @ iteration: 5 -----> value1: 0 	 value2: 6
# KERNEL: 	[0] @ iteration: 6 -----> value1: 0 	 value2: 4
# KERNEL: 	[0] @ iteration: 7 -----> value1: 1 	 value2: 1
# KERNEL: 	[0] @ iteration: 8 -----> value1: 1 	 value2: 1
# KERNEL: 	[0] @ iteration: 9 -----> value1: 0 	 value2: 4
# KERNEL: 	[0] @ iteration: 10 ----> value1: 0 	 value2: 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
