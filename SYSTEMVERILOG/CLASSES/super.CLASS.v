1-> USING SUPER KEYWORD IN CLASS
------------------------------------------------------------------------------------------
class eg;
  
  int age; //-------> PROPERITIES
  string name;
  
   function new(); //-------> METHOD
   this.age=21;
   this.name="RU";
  endfunction

   function void display(); //----- USING VOID FUNCTION TO DISPLAY 
    $display("-------------");
    $display("age=%0d", age);
    $display("name=%0s", name);
    $display("-------------");
  endfunction
  
endclass


class act extends eg;  //------> using baseclass keyword(extends)
   
  function new();
    this.age=31;
    this.name="ae";
  endfunction
  
    function void display();
      super.display();      //------> keyword(super.display)
      $display("-------------");
    $display("age=%0d", age);
    $display("name=%0s", name);
     $display("-------------");
  endfunction
  
  
endclass

  
  module exampleclass;
    
    act data;   //---> using extend class (ACT) to display the O/P
    
    initial begin
      data=new();
      data.display();
  
    end
  endmodule

------------------------------------------------------------------------------------------------
OUTPUT:

# KERNEL: -------------
# KERNEL: age=31
# KERNEL: name=ae
# KERNEL: -------------
# KERNEL: -------------
# KERNEL: age=31
# KERNEL: name=ae
# KERNEL: -------------


------------------------------------------------------------------------------------------------


2.-> WITHOUT USING SUPER KEYWORD IN CLASS
------------------------------------------------------------------------------------------------
 class eg;
  
  int age; //-------> PROPERITIES
  string name;
  
   function new(); //-------> METHOD
   this.age=21;
   this.name="RU";
  endfunction

   function void display(); //----- USING VOID FUNCTION TO DISPLAY 
    $display("-------------");
    $display("age=%0d", age);
    $display("name=%0s", name);
    $display("-------------");
  endfunction
  
endclass


class act extends eg;  //------> using baseclass keyword(extends)
   
  function new();
    this.age=31;
    this.name="ae";
  endfunction
  
    function void display();
      // super.display();      //------> without using keyword(super.display)
      $display("-------------");
    $display("age=%0d", age);
    $display("name=%0s", name);
     $display("-------------");
  endfunction
  
  
endclass

  
  module exampleclass;
    
    act data;   //---> using extend class (ACT) to display the O/P
    
    initial begin
      data=new();
      data.display();
  
    end
  endmodule
------------------------------------------------------------------------------------------------
OUTPUT:

# KERNEL: -------------
# KERNEL: age=31
# KERNEL: name=ae
# KERNEL: -------------

------------------------------------------------------------------------------------------------
