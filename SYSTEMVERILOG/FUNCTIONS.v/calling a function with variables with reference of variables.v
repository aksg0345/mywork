module examplefunction;
  
  int out1,out2;
  int result;
  
  function automatic  int multiply( ref int a,b);
    int temp;
     temp=a;
     a=b;
     b=temp;
  endfunction
  
  
  //Calling a function with values as arguments
  
  initial begin
    out1=5;
    out2=24;
    result= multiply(out1,out2);
    $display("the value of out1=%0d,and out2=%0d",out1,out2);
  end
endmodule


OUTPUT:

# KERNEL: the value of out1=24,and out2=5
