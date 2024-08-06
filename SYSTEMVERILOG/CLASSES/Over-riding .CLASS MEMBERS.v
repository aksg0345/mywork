-----------------------------------------------------------------------------------------
class exam1 ;
   
   string college  ;
   string name;
   int marks;
  
  task display();
    college  ="sme";
    name="DOG";
    marks= 85;
    $display("name1=%0s and marks1=%0d and college=%0s",name,marks,college);
   
 endtask
  
  
endclass

class exam2 extends exam1;
   
   string marks;    // Over-riding Class Members
   int college;
   
      
   task display();
    college=95;
    marks= "CAT";
     $display("college2=%0d and marks2=%0s",college,marks);
   
 endtask
  
  
endclass


class exam3 extends exam1;
   
   string name;
   int marks;
  
          
  task display();
    name="COW";
    marks= 55;
   $display("name3=%0s and marks3=%0d",name,marks);
   
 endtask
  
endclass


module examdata;
  
   exam2 e2;
   exam1 e1;
  
  initial begin
    e2=new();
    e1=e2;
    e2.display();
    e1.display();
  end
endmodule
-----------------------------------------------------------------------------------------    
OUTPUT:

# KERNEL: college2=95 and marks2=CAT
# KERNEL: name1=DOG and marks1=85 and college=sme
  
