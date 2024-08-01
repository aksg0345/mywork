------------------------------------------------------------------------
class eg;   //------> PARENT CLASS
  
  const int age1; //-------> using keyword.(CONST) PROPERITIES
  string name1;
  
  function new(); //-------> METHOD
   age1=21;
   name1="RU";
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
   
  const int age2; //-------> PROPERITIES
  string name2;
  
  function new();
    age2=31;
    name2="ae";
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
  //---> assigning (data) using CHILD CLASS (ACT) 
    act data;
        
    
    initial begin
      data=new();    //------> creating keyword.(NEW(OBJECT))
      data.name1="jk";//------> creating instance method;
      data.name2="ak";//------> creating instance method;
      data.display();  //----->to display the O/P
      
     
  
    end
  endmodule
------------------------------------------------------------------------
OUTPUT:

# KERNEL: -------------
# KERNEL: age1=21
# KERNEL: name1=jk
# KERNEL: -------------
# KERNEL: -------------
# KERNEL: age2=31
# KERNEL: name2=ak
# KERNEL: -------------
 ------------------------------------------------------------------------    
