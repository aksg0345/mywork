 class exam1;
   protected string name1, name2;
    protected int marks1, marks2;
   

    function void display();
        name1 = "DOG";
        marks2 = 95;
        $display("----------------");
      $display("name1 = %0s and marks2 = %0d", name1, marks2);
        $display("----------------");
    endfunction
    
//     // Implement the pure virtual function `sum`
     function void sum();
        // You can implement the sum functionality if needed
        // Here it is left as a simple display for illustration
        $display("sum function in exam2, but no operation defined");
     endfunction
endclass

      
class exam2 extends exam1;
  int name3, marks3;
  
  
    // Implement the pure virtual function `display`
    virtual function void display();
        // You can implement display functionality if needed
        // Here it is left as a simple display for illustration
        $display("display function in exam3, but no operation defined");
    endfunction

   // Implement the pure virtual function `sum`
     function void sum();
        name3 = 34;
        marks3 = 65;
        $display("----------------");
       $display("name3 = %0d and marks3 = %0d", name3, marks3);
        $display("----------------");
     endfunction
endclass

module examdata;
    exam1 e1;  // Use the base class type for polymorphism
    exam2 e2;
 
  
    initial begin
        e2 = new();
        e1 = e2; 
        
        
        e1.display();  // Calls exam2's display method
         e2.sum();      // Calls exam3's sum method
///    e1.name1="RAT"; "Cannot access local/protected member ""e1.name1""
      // e1.display();
      e2.name3=23;
      e2.sum();
    
    end
endmodule
-------------------------------------------------------------------------------------------------

OUTPUT:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: ----------------
# KERNEL: name1 = DOG and marks2 = 95
# KERNEL: ----------------
# KERNEL: ----------------
# KERNEL: name3 = 34 and marks3 = 65
# KERNEL: ----------------
# KERNEL: ----------------
# KERNEL: name3 = 34 and marks3 = 65
# KERNEL: ----------------
