   class myWorld;
            // random variable declared using the rand keyword
     rand bit [2:0] value1;
           
    
     constraint m_var { value1 dist { 1:=30, [2:5]:=100, 6:=70, 7:=20};} // (while in case we using randc means we can't use that here because of using dist)
            endclass
 
             module top;
             initial begin
             int i;
          
             myWorld world;

            world = new();
               
               for(int i =0; i<20; i++) begin
            void'( world.randomize());
       
            $display("[%0t] @ iteration %0d  -----> value1=%0d",$time,i,world.value1);
            end
            end
           endmodule
----------------------------------------------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: [0] @ iteration 0  -----> value1=3
# KERNEL: [0] @ iteration 1  -----> value1=6
# KERNEL: [0] @ iteration 2  -----> value1=4
# KERNEL: [0] @ iteration 3  -----> value1=5
# KERNEL: [0] @ iteration 4  -----> value1=4
# KERNEL: [0] @ iteration 5  -----> value1=4
# KERNEL: [0] @ iteration 6  -----> value1=4
# KERNEL: [0] @ iteration 7  -----> value1=3
# KERNEL: [0] @ iteration 8  -----> value1=2
# KERNEL: [0] @ iteration 9  -----> value1=3
# KERNEL: [0] @ iteration 10  -----> value1=4
# KERNEL: [0] @ iteration 11  -----> value1=3
# KERNEL: [0] @ iteration 12  -----> value1=3
# KERNEL: [0] @ iteration 13  -----> value1=7
# KERNEL: [0] @ iteration 14  -----> value1=2
# KERNEL: [0] @ iteration 15  -----> value1=5
# KERNEL: [0] @ iteration 16  -----> value1=5
# KERNEL: [0] @ iteration 17  -----> value1=3
# KERNEL: [0] @ iteration 18  -----> value1=2
# KERNEL: [0] @ iteration 19  -----> value1=5
