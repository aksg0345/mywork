------------------------------------------------------------------------------------------
class eg;   //------> PARENT CLASS
  
  int age1,age2; //-------> PROPERITIES
  string name1, name2;
  
  function new(); //-------> METHOD
   this.age1=21;
   this.name1="RU";
  endfunction

  extern function void display();//------>using keyword.(extern)
  
endclass:eg
    
    function void eg::display();//--> by using.(extern)display O/P
    $display("-------------");
    $display("age1=%0d", age1);
    $display("name1=%0s", name1);
    $display("-------------");
 endfunction


class act extends eg;  //------>  CHILD CLASS  keyword.(extends)
   
  function new();
    this.age2=31;
    this.name2="ae";
  endfunction
  
   extern  function void display();//------>using keyword.(extern)
   
endclass:act

  
   function void act::display();//--> by using.(extern)display O/P
      super.display();      //------> keyword.(super.display)
    $display("-------------");
      $display("age2=%0d", age2);
      $display("name2=%0s", name2);
    $display("-------------");
  endfunction
 

  
  module exampleclass;
    
    act data;  //---> assigning (data) using CHILD CLASS (ACT) 
   
    
    initial begin
      data=new();    //------> creating keyword.(NEW(OBJECT))
      data.display();  //----->to display the O/P
  
    end
  endmodule

------------------------------------------------------------------------------------------
 OUTPUT:
# KERNEL: -------------
# KERNEL: age=21
# KERNEL: name=RU
# KERNEL: -------------
# KERNEL: -------------
# KERNEL: age=31
# KERNEL: name=ae
# KERNEL: -------------
