module examplefunction;
  
  int out,a=7,b=8;
  

 
  function int sum(input int a,b);
    return a+b;

  endfunction
  
  
  //Calling a function with values as arguments
  
  initial begin
    out=sum(a,b);
    $display("the value of out=%0d",out);
  end
endmodule

OUTPUT:
# KERNEL: the value of out=15
