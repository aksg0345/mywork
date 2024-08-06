---------------------------------------------------------------------------
class exam1 ;
   
   string name1;
   int marks1;
  
 virtual task display();
    name1="DOG";
    marks1= 85;
   $display("name1=%0s and marks1=%0d",name1,marks1);
   
 endtask
  
  
endclass

class exam2 extends exam1;
   
   string name2;
   int marks2;
  
    
      
 virtual task display();
    name2="CAT";
    marks2= 95;
   $display("name2=%0s and marks2=%0d",name2,marks2);
   
 endtask
  
  
endclass


class exam3 extends exam1;
   
   string name3;
   int marks3;
  
          
 virtual task display();
    name3="COW";
    marks3= 55;
   $display("name3=%0s and marks3=%0d",name3,marks3);
   
 endtask
  
endclass


module examdata;
  
  exam1 e0,e1;
  exam2 e2;
  exam3 e3;
  
  initial begin
    e2=new();
    e3=new();
    e0=e2;
    e1=e3;
    e0.display();
    e1.display();
  end
endmodule
---------------------------------------------------------------------------
OUTPUT:
# KERNEL: name2=CAT and marks2=95
# KERNEL: name3=COW and marks3=55
