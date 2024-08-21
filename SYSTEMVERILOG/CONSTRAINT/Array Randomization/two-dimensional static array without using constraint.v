    class class_1;  
      rand bit [3:0]a[4][4];  
      endclass

      module mod;  
      class_1 pack;  
      initial begin  
      pack = new;  
      $display ("The value elements of array before randomization = %0p",pack.a); 
        
      for (int i =0;i<=5;i++)begin  
      void'(pack.randomize());  
        $display ("ittertion=%0d and The value of elements of array after randomization = %0p",i,pack.a);  
      end
      end   
      endmodule
------------------------------------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: The value elements of array before randomization = {0 0 0 0} {0 0 0 0} {0 0 0 0} {0 0 0 0}
# KERNEL: ittertion=0 and The value of elements of array after randomization = {10 3 11 6} {4 3 11 1} {4 9 14 6} {3 13 7 10}
# KERNEL: ittertion=1 and The value of elements of array after randomization = {6 2 8 7} {0 7 3 11} {7 15 15 6} {10 3 15 5}
# KERNEL: ittertion=2 and The value of elements of array after randomization = {1 6 15 9} {6 10 1 13} {3 3 8 6} {13 9 4 11}
# KERNEL: ittertion=3 and The value of elements of array after randomization = {0 2 14 7} {11 0 4 14} {14 6 7 13} {2 1 3 5}
# KERNEL: ittertion=4 and The value of elements of array after randomization = {8 6 0 10} {5 7 8 7} {13 10 9 5} {13 12 11 13}
# KERNEL: ittertion=5 and The value of elements of array after randomization = {14 2 4 10} {8 1 10 3} {4 15 10 8} {4 10 8 10}
