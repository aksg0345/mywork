module automaticfunction;
  
   int out1, out2;
  
  // Static function for recursion
   function  int static_func( int a);
    if(a >= 2)
      static_func = (a - 1)+(3);
    else
      static_func = 0;
  endfunction
  
  // Automatic function for recursion
  function automatic int automatic_func(int b);
    if(b >= 2)
      out2 = (b - 1)*b ;
    else
      automatic_func = 1;
  endfunction
  
  initial begin
    out1 = static_func(5);
    out2 = automatic_func(5);
              
    $display("static: %0d", out1);
    $display("automatic: %0d", out2);
  end
endmodule



OUTPUT:
# KERNEL: static: 7
# KERNEL: automatic: 20
