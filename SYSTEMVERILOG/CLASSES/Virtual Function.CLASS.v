---------------------------------------------------------------
class exam1 ;
   
   string name1;
   int marks1;
  
 function new();
    name1="CAT";
    marks1= 85;
 endfunction
  
  virtual function void display();
    $display("----------------");
    $display("name1=%0s and marks1=%0d",name1,marks1);
  endfunction
  
endclass

class exam2 extends exam1;
   
   string name2;
   int marks2;
  
    
       function new();
        name2="DOG";
        marks2= 95;
     endfunction
  
  function void display();
    $display("----------------");
    $display("name2=%0s and marks2=%0d",name2,marks2);
     $display("----------------");
  endfunction
  
endclass


class exam3 extends exam1;
   
   string name3;
   int marks3;
  
    
       function new();
        name3="COW";
        marks3= 65;
     endfunction
  
  function void display();
    $display("----------------");
    $display("name3=%0s and marks3=%0d",name3,marks3);
     $display("----------------");
  endfunction
  
endclass


module examdata;
  
  exam1 e0,e1;
  exam2 e2;
  exam3 e3;
  
  initial begin
    e2=new();
    e3=new();
    e0=e2;
    e1=new e3;
    e0.display();
    e1.display();
  end
endmodule
---------------------------------------------------------------

OUTPUT:

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: ----------------
# KERNEL: name2=DOG and marks2=95
# KERNEL: ----------------
# KERNEL: ----------------
# KERNEL: name3=COW and marks3=65
# KERNEL: ----------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
