module examplefunction;
  
  int out1,out2;
  
  function int multiply(int a,b);
    return a*b;
  endfunction
  
  
  //Calling a function with values as arguments
  
  initial begin
    out1=multiply(5,6);
    out2=multiply(25,46);
    $display("the value of out1=%0d,and out2=%0d",out1,out2);
  end
endmodule

OUTPUT:
# KERNEL: the value of out1=30,and out2=1150
