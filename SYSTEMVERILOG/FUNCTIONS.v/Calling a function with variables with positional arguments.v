module examplefunction;
  
 
  function int sum(input int a,b);
    return a+b;

  endfunction
  
//Calling a function with variables with positional arguments
  
  initial begin
    $display("the value of is %0d",sum(.a(12),.b(5)));
    $display("the value of is %0d",sum(.a(12),.b(41)));
  end
endmodule

OUTPUT:

# KERNEL: the value of is 17
# KERNEL: the value of is 53
