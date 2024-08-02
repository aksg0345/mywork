1-> USING SUPER KEYWORD IN CLASS
------------------------------------------------------------------------------------------
class eg;
  
  int age1; //-------> PROPERITIES
  string name1;
  
   function new(); //-------> METHOD
   this.age1=21;
   this.name1="RU";
  endfunction

   function void display(); //----- USING VOID FUNCTION TO DISPLAY 
    $display("-------------");
     $display("age1=%0d", age1);
     $display("name1=%0s", name1);
    $display("-------------");
  endfunction
  
endclass


class act extends eg;  //------> using baseclass keyword(extends)
  
  int age2; //-------> PROPERITIES
  string name2;
   
  function new();
    this.age2=31;
    this.name2="ae";
  endfunction
  
    function void display();
    super.display();      //------> keyword(super.display)
    $display("-------------");
      $display("age2=%0d", age2);
      $display("name2=%0s", name2);
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
# KERNEL: age1=21
# KERNEL: name1=RU
# KERNEL: -------------
# KERNEL: -------------
# KERNEL: age2=31
# KERNEL: name2=ae
# KERNEL: -------------

------------------------------------------------------------------------------------------------


2.-> WITHOUT USING SUPER KEYWORD IN CLASS
------------------------------------------------------------------------------------------------
 class eg;
  
  int age1; //-------> PROPERITIES
  string name1;
  
   function new(); //-------> METHOD
   this.age1=21;
   this.name1="RU";
  endfunction

   function void display(); //----- USING VOID FUNCTION TO DISPLAY 
    $display("-------------");
     $display("age1=%0d", age1);
     $display("name1=%0s", name1);
    $display("-------------");
  endfunction
  
endclass


class act extends eg;  //------> using baseclass keyword(extends)
  
  int age2; //-------> PROPERITIES
  string name2;
   
  function new();
    this.age2=31;
    this.name2="ae";
  endfunction
  
    function void display();
    super.display();      //------> keyword(super.display)
    $display("-------------");
      $display("age2=%0d", age2);
      $display("name2=%0s", name2);
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
