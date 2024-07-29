  int count;
  initial begin
    // break statement
    for(count=0;count<10;count++)begin
      $display("value of count=[%0d]",count);
      if(count==3)break;
        end

    // continue statement
    for(count=0;count<10;count++)begin  
      $display("value of count=[%0d]",count);
    if(count==3)continue;   
        end
  end
endmodule


OUTPUT:

# KERNEL: value of count=[0]
# KERNEL: value of count=[1]
# KERNEL: value of count=[2]
# KERNEL: value of count=[3]

# KERNEL: value of count=[0]
# KERNEL: value of count=[1]
# KERNEL: value of count=[2]
# KERNEL: value of count=[3]
# KERNEL: value of count=[4]
# KERNEL: value of count=[5]
# KERNEL: value of count=[6]
# KERNEL: value of count=[7]
# KERNEL: value of count=[8]
# KERNEL: value of count=[9]
