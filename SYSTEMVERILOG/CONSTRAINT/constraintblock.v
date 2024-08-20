      class class_a;  
      rand byte a;  
      rand byte x;  
      constraint const_name1{a<6;  
                   a>2;}  
      extern constraint cons_name2;   //-------------> externed constraint
      endclass 

      constraint class_a:: cons_name2{x>10;}  

      module mod;  
      class_a pack;  
      initial begin  
      pack = new;  
      for (int i =0;i<=5;i++)begin  
      pack.randomize();  
      $display ( "Iteration = %0d  Value of a = %0d Value of x = %0d  " , i,pack.a,pack.x);  
      end  
      end
        endmodule 

--------------------------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: Iteration = 0  Value of a = 3 Value of x = 88  
# KERNEL: Iteration = 1  Value of a = 3 Value of x = 81  
# KERNEL: Iteration = 2  Value of a = 5 Value of x = 61  
# KERNEL: Iteration = 3  Value of a = 4 Value of x = 107  
# KERNEL: Iteration = 4  Value of a = 3 Value of x = 15  
# KERNEL: Iteration = 5  Value of a = 4 Value of x = 126 
