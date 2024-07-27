---->.FORLOOP  HAS WHILE:

module loopfor;
  
  int count;
  initial begin
    for(;;)begin
      $display("value of count=[%0d]",count);
      if(count==15)break;
        count++;
        end
        end
        endmodule

OUTPUT:

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
# KERNEL: value of count=[10]
# KERNEL: value of count=[11]
# KERNEL: value of count=[12]
# KERNEL: value of count=[13]
# KERNEL: value of count=[14]
# KERNEL: value of count=[15]
