 class eg;
  
  int age;
  string name;
  
  function new();
   this.age=21;
   this.name="RU";
  endfunction

  function void display();
    
    $display("age=%0d", age);
    $display("name=%0s", name);
  endfunction
  
endclass
  
  module exampleclass;
    
    eg data;
    
    initial begin
      data=new();
      data.display();
  
    end
  endmodule

OUTPUT:

# KERNEL: age=21
# KERNEL: name=RU
