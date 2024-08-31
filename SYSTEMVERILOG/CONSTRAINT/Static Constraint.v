class name; 
            rand bit value1;  
            rand bit [3:0] value2;
  
 static constraint valu {value1==1;}
  
  
          endclass 

class name2; 
            rand bit value1;  
            rand bit [3:0] value2;
  

  static constraint valu2 {value2==5;}
  
          endclass 


module static_constraint();
   
  name object_1 = new();
  name object_2 = new();
  name2 object_3 = new();
  name2 object_4 = new();
 
  initial
  begin
    object_1.valu.constraint_mode(0);
   $display("\t%c[1;31m-----Non-static constraint turned off only in object 1 -----%c[0m",27,27);
   $display("\tConstraint : value must be 1");
    for(int i=1;i<=3;i++)
    begin
      void'(object_1.randomize());
      void'(object_2.randomize());
       #1 $display("\t[%0t] @ iteration: %0d -----> value in object_1: %0d  value in object_2: %0d",$time,i,object_1.value1,object_2.value2);
    end

    
    object_3.valu2.constraint_mode(1);
   $display("\n\t%c[1;34m-----static constraint turned off only in object 3-----%c[0m\n",27,27);
   $display("\tConstraint : value must be 1");
    for(int i=1;i<=3;i++)
    begin
      void'(object_3.randomize());
      void'(object_4.randomize());
       #1 $display("\t[%0t] @ iteration: %0d -----> value in object_3: %0d  value in object_4: %0d",$time,i,object_3.value1,object_4.value2);
    end
  end

endmodule  
-------------------------------------------------------------------------------------------------------------------------------------------------
OUTPUT:

[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[0m
# KERNEL: 	Constraint : value must be 1
# KERNEL: 	[1] @ iteration: 1 -----> value in object_1: 0  value in object_2: 2
# KERNEL: 	[2] @ iteration: 2 -----> value in object_1: 1  value in object_2: 15
# KERNEL: 	[3] @ iteration: 3 -----> value in object_1: 0  value in object_2: 1
# KERNEL: 
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[0m
# KERNEL: 
# KERNEL: 	Constraint : value must be 1
# KERNEL: 	[4] @ iteration: 1 -----> value in object_3: 1  value in object_4: 5
# KERNEL: 	[5] @ iteration: 2 -----> value in object_3: 1  value in object_4: 5
# KERNEL: 	[6] @ iteration: 3 -----> value in object_3: 1  value in object_4: 5
