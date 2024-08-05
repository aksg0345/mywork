-----------------------------------------------------------------
class  eg#(parameter skill,age,type name=string); // parameter
  
  name c1;
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
 
  function void deep(eg#(skill,age,name)copy);
  this.c1=copy.c1;
  this.c2=copy.c2;
  this.c3=copy.c3;
endfunction
  
endclass


module deep;
  eg#(10,7) n1,n2;           //initialize the (eg) class parameter
 
  
  initial begin
    n1=new();
    n2=new();
    n2.deep(n1);
    $display("----------------------------");
    n1.display();
    n2.display();
    $display("----------------------------");
    $display(" using shallow method ");
    $display("----------------------------");
    n1.c1="rae";
    n2.c2="31%";
    n2.c3=36;
    n1.display();
    n2.display();
    $display("----------------------------");
    $display("assining another data here using n2");
    $display("----------------------------");
    
  end
endmodule

---------------------------------------------------------

OUTPUT:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: ----------------------------
# KERNEL: name=rla and skill=37, age=22
# KERNEL: name=rla and skill=37, age=22
# KERNEL: ----------------------------
# KERNEL:  using shallow method 
# KERNEL: ----------------------------
# KERNEL: name=rae and skill=37, age=22
# KERNEL: name=rla and skill=293, age=36
# KERNEL: ----------------------------
# KERNEL: assining another data here using         n2
# KERNEL: ----------------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
