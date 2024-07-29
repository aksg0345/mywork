module examplefunction;
  
 
  function int sum(input int a,b);
    return a+b;

  endfunction
  
 // Calling a function with values from an expression
  initial begin
    $display("the value of is %0d",sum(12,5));
    $display("the value of is %0d",sum(12,41));
  end
endmodule

OUTPUT:

# KERNEL: the value of is 17
# KERNEL: the value of is 53
