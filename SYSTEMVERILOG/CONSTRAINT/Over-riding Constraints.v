// Code your testbench here
// or browse Examples
class parent;
  rand byte a;
  rand byte b;
  

  constraint consname{a==1;b==6;}
endclass

class child extends parent;
  constraint consname{a==23;b==10;}
endclass

class chld extends parent;
  constraint consname{a==34; b==24;}
endclass

module top;
  initial begin
  child t1;
  chld t2;
    
    t1= new();
    t2=new();
    
    for(int i=0;i<2;i++)
  begin
    if (!t1.randomize()) begin
            $display("Randomization failed");
          end
   else begin
     $display("Iteration = %0d value of the a=%0d value of b=%0d",i,t1.a,t1.b);
end
end
    $display("----------------------------------------------");  
    for(int i=0;i<3;i++)
  begin
    if (!t2.randomize()) begin
            $display("Randomization failed");
          end
   else begin
     $display("Iteration = %0d value of the a=%0d value of b=%0d",i,t2.a,t2.b);
end
end
    
end
endmodule


------------------------------------------------------------------------------------------

OUTPUT:
# KERNEL: Iteration = 0 value of the a=23 value of b=10
# KERNEL: Iteration = 1 value of the a=23 value of b=10
# KERNEL: ----------------------------------------------
# KERNEL: Iteration = 0 value of the a=34 value of b=24
# KERNEL: Iteration = 1 value of the a=34 value of b=24
# KERNEL: Iteration = 2 value of the a=34 value of b=24

----------------------------------------------------------------------------------------------

/// ----------------------------SOME CHANGES--------------------------------------------------

class parent;
  rand byte a;
  rand byte b;
  

  constraint consname{a==1;b==6;}
endclass

class child extends parent;
  constraint consname{a==23;b==10;}
endclass

class chld extends parent;
  constraint consname{a==34; b==24;}
endclass

module top;
  initial begin
    parent t0;
  child t1;
  chld t2;
    
    //t0=new();
    t1= new();
    t0=t1;
    t2=new();
    
    for(int i=0;i<2;i++)
  begin
    if (!t0.randomize()) begin
            $display("Randomization failed");
          end
   else begin
     $display("Iteration = %0d value of the a=%0d value of b=%0d",i,t0.a,t0.b);
end
end
    $display("----------------------------------------------");
    
    
    for(int i=0;i<3;i++)
  begin
    if (!t1.randomize()) begin
            $display("Randomization failed");
          end
   else begin
     $display("Iteration = %0d value of the a=%0d value of b=%0d",i,t1.a,t1.b);
end
end
    $display("----------------------------------------------");  
    for(int i=0;i<4;i++)
  begin
    if (!t2.randomize()) begin
            $display("Randomization failed");
          end
   else begin
     $display("Iteration = %0d value of the a=%0d value of b=%0d",i,t2.a,t2.b);
end
end
    
end
endmodule

-------------------------------------------------------------------------------------------------

OUTPUT:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Iteration = 0 value of the a=23 value of b=10
# KERNEL: Iteration = 1 value of the a=23 value of b=10
# KERNEL: ----------------------------------------------
# KERNEL: Iteration = 0 value of the a=23 value of b=10
# KERNEL: Iteration = 1 value of the a=23 value of b=10
# KERNEL: Iteration = 2 value of the a=23 value of b=10
# KERNEL: ----------------------------------------------
# KERNEL: Iteration = 0 value of the a=34 value of b=24
# KERNEL: Iteration = 1 value of the a=34 value of b=24
# KERNEL: Iteration = 2 value of the a=34 value of b=24
# KERNEL: Iteration = 3 value of the a=34 value of b=24
