// Code your testbench here
// or browse Examples
module unpacked;
  
  byte vlsi[8];
  
  initial begin
      foreach(vlsi[i])begin
      vlsi[i]=$urandom_range(10,50);
     // $display("vlsi=%p",vlsi);
      $display("vlsi[%0d]=%0d",i,vlsi[i]);
    end
  end
endmodule

OUTPUT:
# KERNEL: vlsi[0]=47
# KERNEL: vlsi[1]=35
# KERNEL: vlsi[2]=29
# KERNEL: vlsi[3]=33
# KERNEL: vlsi[4]=29
# KERNEL: vlsi[5]=14
# KERNEL: vlsi[6]=14
# KERNEL: vlsi[7]=39

