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



-> 3. //three dimensional


// Code your testbench here
// or browse Examples
module  svpacked;
  
  logic [2:0][3:0][7:0] vlsi;
  
  initial begin
      
    foreach(vlsi[i,j])begin
    vlsi[0]='haefe_dcea;
    vlsi[1]='h345_9876;
    vlsi[2]='h6123_7054;
      
      $display("vlsi[%0d][%0d]=0x%0h",i,j,vlsi[i][j]);
      //  $display("vlsi=%p",vlsi);
      end
    end 
 
endmodule



-> OUTPUT:

# KERNEL: vlsi[2][3]=0x61
# KERNEL: vlsi[2][2]=0x23
# KERNEL: vlsi[2][1]=0x70
# KERNEL: vlsi[2][0]=0x54
# KERNEL: vlsi[1][3]=0x3
# KERNEL: vlsi[1][2]=0x45
# KERNEL: vlsi[1][1]=0x98
# KERNEL: vlsi[1][0]=0x76
# KERNEL: vlsi[0][3]=0xae
# KERNEL: vlsi[0][2]=0xfe
# KERNEL: vlsi[0][1]=0xdc
# KERNEL: vlsi[0][0]=0xea
