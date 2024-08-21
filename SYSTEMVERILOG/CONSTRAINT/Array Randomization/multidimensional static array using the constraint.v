     
      class class_1;  
        rand bit [1:0]a[2:0][2:0];  
      constraint cons_name1{foreach (a[i,j])    // standard way to represent multidimensional array using  
                     a[i][j]<12;}           //foreach conditional statement  
       endclass 

       module mod;  
       class_1 pack;  
       initial begin  
         $display ("Randomization of multidimensional array");  
         $display ("----------------------------------------");  
        pack=new();  
        $display ("Before randomization");  
        $display (" Array = %0p",pack.a); // gives default value of data types .  
        $display ("After randomization");  
        void'(pack.randomize());  
        for (int i =0;i<=5;i++)begin  
        void'(pack.randomize());  
        $display (" Iteration = %0d, Array = %0p",i,pack.a);   
        end  
        end  
       endmodule

------------------------------------------------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Randomization of multidimensional array
# KERNEL: ----------------------------------------
# KERNEL: Before randomization
# KERNEL:  Array = {0 0 0} {0 0 0} {0 0 0}
# KERNEL: After randomization
# KERNEL:  Iteration = 0, Array = {0 3 3} {1 2 3} {1 3 1}
# KERNEL:  Iteration = 1, Array = {0 3 0} {3 1 1} {3 3 3}
# KERNEL:  Iteration = 2, Array = {3 1 1} {3 2 0} {3 3 0}
# KERNEL:  Iteration = 3, Array = {3 1 0} {2 1 1} {0 3 2}
# KERNEL:  Iteration = 4, Array = {0 2 1} {0 1 3} {3 1 0}
# KERNEL:  Iteration = 5, Array = {2 3 3} {3 3 2} {1 0 1}
