----------------------------------------------------------------------
class  eg#(parameter skill,age,type call=string); // parameter
  
  call c1;
  bit[skill-2:0]c2;
  bit[age-2:0]c3;
  
  function new();
    c1="rla";
    c2="10%";
    c3=22;
  endfunction
  
  function void display();
   $display("name=%0s and skill=%0d, age=%0d",        c1,c2,c3);
  endfunction
  
endclass


module numclass;
  eg#(10,7) n1,n2;           //initialize the (eg) class parameter
  
  initial begin
    n1=new();
    n2=new n1;          // shallow copy 
    $display("----------------------------");
    n1.display();
    n2.display();
    $display("----------------------------");
    $display(" using shallow method ");
    $display("----------------------------");
    n2.c1="rae";
    n2.c2="31%";
    n2.c3=36;
    n1.display();
    n2.display();
    $display("----------------------------");
    $display("assining another data here using         n2");
    $display("----------------------------");
    
  end
endmodule

----------------------------------------------------------------------

OUTPUT:

# KERNEL: ----------------------------
# KERNEL: name=rla and skill=37, age=22
# KERNEL: name=rla and skill=37, age=22
# KERNEL: ----------------------------
# KERNEL:  share the n1 memory to n2
# KERNEL: ----------------------------
# KERNEL: name=rla and skill=37, age=22
# KERNEL: name=rae and skill=293, age=36
# KERNEL: ----------------------------
# KERNEL: assining another data here using n2
# KERNEL: ----------------------------
