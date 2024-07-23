module arr_reduction;
  
  int arr[2] = '{5,2};
   initial begin
     $display("sum for: arr = %0d ", arr.sum());
     $display("product for: arr = %0d ", arr.product());
     $display("and for: arr = %0d ", arr.and());
     $display("or for: arr = %0d ", arr.or());
     $display("xor for: arr = %0d ", arr.xor());
       end
endmodule

OUTPUT:

# KERNEL: sum for: arr = 7 
# KERNEL: product for: arr = 10 
# KERNEL: and for: arr = 0 
# KERNEL: or for: arr = 7 
# KERNEL: xor for: arr = 7 
