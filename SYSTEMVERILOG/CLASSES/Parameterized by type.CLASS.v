--------------------------------------------------------------------------

class  eg #(parameter age, skill,type team=string); // parameter
  
  team c1;
  bit[age-2:0]c2;
  bit[skill-2:0]c3;
  
  function new();
    c1="rla";
    c2=53;
    c3=21;
  endfunction
  
  function void display();
    $display("name=%0s and age=%0d ,skill=%0d", c1,c2,c3);
  endfunction
  
endclass


module numclass;
  eg#(10,5) n1;           //initialize the (eg) class parameter
  initial begin
    n1=new();
    n1.display();
  end
endmodule
-------------------------------------------------------------------------- 


OUTPUT:
# KERNEL: name=rla and age=53 ,skill=5

