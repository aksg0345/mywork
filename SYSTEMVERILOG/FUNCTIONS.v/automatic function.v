module automaticfunction;
  
  int out1, out2;
  
  // Static function for recursion
  function int static_func(int a);
    if(a >= 2)
      static_func = static_func(a - 1)+3;
    else
      static_func = 0;
  endfunction
  
  // Automatic function for recursion
  function automatic int automatic_func(int b);
    if(b >= 2)
      automatic_func = automatic_func(b - 1)+3 ;
    else
      automatic_func = 0;
  endfunction
  
  initial begin
    out1 = static_func(5);
    out2 = automatic_func(2);
              
    $display("static: %0d", out1);
    $display("automatic: %0d", out2);
  end
endmodule


OUTPUT:
# KERNEL: static: 12
# KERNEL: automatic: 3
