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
