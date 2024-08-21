 class class_1;
     rand bit [4:0]que[$];
     constraint que_const{que.size()==8;}
     endclass

     module mod;
     class_1 pack;
     initial begin
     pack=new;
     for (int i = 0;i<=pack.que.size();i++)begin
     void'(pack.randomize());
     $display (" Iteration = %0d The value of array =%0p",i,pack.que); 
     end
    end
    endmodule

------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:  Iteration = 0 The value of array =26 3 11 6 20 19 11 1
# KERNEL:  Iteration = 1 The value of array =4 9 14 22 3 29 23 26
# KERNEL:  Iteration = 2 The value of array =6 2 24 7 16 7 3 27
# KERNEL:  Iteration = 3 The value of array =7 31 31 6 10 3 31 5
# KERNEL:  Iteration = 4 The value of array =1 22 15 9 22 10 17 29
# KERNEL:  Iteration = 5 The value of array =3 3 8 6 13 25 20 11
# KERNEL:  Iteration = 6 The value of array =16 2 30 23 27 16 20 30
# KERNEL:  Iteration = 7 The value of array =30 22 23 29 2 17 19 5
# KERNEL:  Iteration = 8 The value of array =24 6 16 26 21 7 8 23
# KERNEL: Simulation has finished.
