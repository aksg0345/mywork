 class exam1;
   local string name1, name2;
    local int marks1, marks2;

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
  string name3;
  int marks3;
  
  
    // Implement the pure virtual function `display`
    virtual function void display();
        // You can implement display functionality if needed
        // Here it is left as a simple display for illustration
        $display("display function in exam3, but no operation defined");
    endfunction

   // Implement the pure virtual function `sum`
     function void sum();
        name3 = "COW";
        marks3 = 65;
        $display("----------------");
        $display("name3 = %0s and marks3 = %0d", name3, marks3);
        $display("----------------");
     endfunction
endclass

module examdata;
    exam1 e1;  // Use the base class type for polymorphism
    exam2 obj2;
  
  
    initial begin
        obj2 = new();
        e1 = obj2; 


        e1.display();  // Calls exam2's display method
         obj2.sum();      // Calls exam3's sum method
    end
endmodule
------------------------------------------------------------------------------------------------------

OUTPUT:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: ----------------
# KERNEL: name1 = DOG and marks2 = 95
# KERNEL: ----------------
# KERNEL: ----------------
# KERNEL: name3 = COW and marks3 = 65
# KERNEL: ----------------
