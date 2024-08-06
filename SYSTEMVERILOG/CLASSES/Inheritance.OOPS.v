
-----------------------------------------------------------
class exam ;
  
    int college;
   int marks=0; //------> 

  
   function void display(); //------>  Inheritance
     marks++;
    college=marks;
    $display("college=%0d",college);
  endfunction
  
endclass

class exam2 extends exam ;//------>  Functionality of extends keyword
  
   int college;  
   int marks=5; 

  
   function void display(); //------> 
     marks++;
    college=marks;
    $display("college=%0d",college);
  endfunction
  
endclass


module examdata;
  
  exam2 e[5]; //------------> ARRAY DECLARARTION
  
  
  initial begin
    
    foreach(e[i]) begin
      e[i]=new();
      e[i].marks=6;
      e[i].display();
    end
  end
 
endmodule
-----------------------------------------------------------

OUTPUT:
# KERNEL: college=7
# KERNEL: college=7
# KERNEL: college=7
# KERNEL: college=7
# KERNEL: college=7
