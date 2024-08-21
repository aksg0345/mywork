
class abc;
              // random variable declared using the rand keyword
  randc bit [3:0] var1,var2;
              //constraint block
  constraint C1 {!(var2 inside {[4:8]});}  // inverted inside constraint
              endclass

              module top;
              initial begin
              int i;
              //Here, we need to create a handle
              //handle name is pkt
              abc pqr;
              //memory allocation to the handle
              pqr=new();
             
                for(int i =1; i<8;i++)begin
              // The .randomize() function is used to randomize properties of an object of a class
                  
              void'(pqr.randomize());
                  $display("  iteration: %0d -----> var1=%0d",i,pqr.var1);
               
                  
                  $display(" iteration: %0d -----> var2=%0d",i,pqr.var2);        
              end
              $display("-------------------------------------------");
              end
              endmodule

------------------------------------------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:   iteration: 1 -----> var1=13
# KERNEL:  iteration: 1 -----> var2=14
# KERNEL:   iteration: 2 -----> var1=2
# KERNEL:  iteration: 2 -----> var2=0
# KERNEL:   iteration: 3 -----> var1=11
# KERNEL:  iteration: 3 -----> var2=12
# KERNEL:   iteration: 4 -----> var1=5
# KERNEL:  iteration: 4 -----> var2=11
# KERNEL:   iteration: 5 -----> var1=12
# KERNEL:  iteration: 5 -----> var2=1
# KERNEL:   iteration: 6 -----> var1=4
# KERNEL:  iteration: 6 -----> var2=3
# KERNEL:   iteration: 7 -----> var1=8
# KERNEL:  iteration: 7 -----> var2=10
# KERNEL: -------------------------------------------
