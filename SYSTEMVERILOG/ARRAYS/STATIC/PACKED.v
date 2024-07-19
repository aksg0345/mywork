1. //single
module  svpacked;
  
  logic [7:0] vlsi;
  
  initial begin

      
    foreach(vlsi[i])begin
      vlsi='hae;
      $display("vlsi[%0d]=%b",i,vlsi[i]);
      //  $display("vlsi=%p",vlsi);
      end
    end 
 
endmodule


-> OUTPUT:
# KERNEL: vlsi[7]=1
# KERNEL: vlsi[6]=0
# KERNEL: vlsi[5]=1
# KERNEL: vlsi[4]=0
# KERNEL: vlsi[3]=1
# KERNEL: vlsi[2]=1
# KERNEL: vlsi[1]=1
# KERNEL: vlsi[0]=0


2. // two dimensional

// Code your testbench here
// or browse Examples
module  svpacked;
  
  logic [3:0][7:0] vlsi;
  
  initial begin

      
    foreach(vlsi[i])begin
      vlsi='haefe;
      for(int i=0; i<5; i++)begin
        $display("[%0d]=%0b",i,vlsi[i]);
      end
      
      
      
      //$display("vlsi[%0d]=%b",i,vlsi[i]);
      //  $display("vlsi=%p",vlsi);
      end
    end 
 
endmodule


-> OUTPUT:
# KERNEL: [0]=11111110
# KERNEL: [1]=10101110
# KERNEL: [2]=0
# KERNEL: [3]=0
# KERNEL: [4]=xxxxxxxx
# KERNEL: [0]=11111110
# KERNEL: [1]=10101110
# KERNEL: [2]=0
# KERNEL: [3]=0
# KERNEL: [4]=xxxxxxxx
# KERNEL: [0]=11111110
# KERNEL: [1]=10101110
# KERNEL: [2]=0
# KERNEL: [3]=0
# KERNEL: [4]=xxxxxxxx
# KERNEL: [0]=11111110
# KERNEL: [1]=10101110
# KERNEL: [2]=0
# KERNEL: [3]=0
# KERNEL: [4]=xxxxxxxx



