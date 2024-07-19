// Code your testbench here
// or browse Examples

----> Syntax:- [data_type] [array_name] [dimension];

-> 1.//single dimension
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

-> OUTPUT:

# KERNEL: vlsi[0]=47
# KERNEL: vlsi[1]=35
# KERNEL: vlsi[2]=29
# KERNEL: vlsi[3]=33
# KERNEL: vlsi[4]=29
# KERNEL: vlsi[5]=14
# KERNEL: vlsi[6]=14
# KERNEL: vlsi[7]=39



-> 2.// two dimension

// Code your testbench here
// or browse Examples
module unpacked;
  
  int vlsi[2:0][3:0];
  
  initial begin
   foreach(vlsi[i]) begin
      
      foreach(vlsi[i][j])begin
        vlsi[i][j]=$urandom_range(10,50);
        $display("vlsi[%0d][%0d]=%0d",i,j,vlsi[i][j]);
        $display("vlsi=%p",vlsi);
      end
    end 
  end
endmodule


-> OUTPUT:

# KERNEL: vlsi[2][3]=47
# KERNEL: vlsi='{'{47, 0, 0, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}}
# KERNEL: vlsi[2][2]=35
# KERNEL: vlsi='{'{47, 35, 0, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}}
# KERNEL: vlsi[2][1]=29
# KERNEL: vlsi='{'{47, 35, 29, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}}
# KERNEL: vlsi[2][0]=33
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{0, 0, 0, 0}, '{0, 0, 0, 0}}
# KERNEL: vlsi[1][3]=29
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 0, 0, 0}, '{0, 0, 0, 0}}
# KERNEL: vlsi[1][2]=14
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 14, 0, 0}, '{0, 0, 0, 0}}
# KERNEL: vlsi[1][1]=14
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 14, 14, 0}, '{0, 0, 0, 0}}
# KERNEL: vlsi[1][0]=39
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 14, 14, 39}, '{0, 0, 0, 0}}
# KERNEL: vlsi[0][3]=50
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 14, 14, 39}, '{50, 0, 0, 0}}
# KERNEL: vlsi[0][2]=26
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 14, 14, 39}, '{50, 26, 0, 0}}
# KERNEL: vlsi[0][1]=42
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 14, 14, 39}, '{50, 26, 42, 0}}
# KERNEL: vlsi[0][0]=12
# KERNEL: vlsi='{'{47, 35, 29, 33}, '{29, 14, 14, 39}, '{50, 26, 42, 12}}


-> 3.//three dimension
// Code your testbench here
// or browse Examples
module unpacked;
  
  int vlsi[2][3][7];
  
  initial begin

      
    foreach(vlsi[i,j,k])begin
      vlsi[i][j][k]=$urandom_range(10,50);
      $display("vlsi[%0d][%0d][%0d]=%0d",i,j,k,vlsi[i][j][k]);
      //  $display("vlsi=%p",vlsi);
      end
    end 
 
endmodule

-> OUTPUT:

# KERNEL: vlsi[0][0][0]=47
# KERNEL: vlsi[0][0][1]=35
# KERNEL: vlsi[0][0][2]=29
# KERNEL: vlsi[0][0][3]=33
# KERNEL: vlsi[0][0][4]=29
# KERNEL: vlsi[0][0][5]=14
# KERNEL: vlsi[0][0][6]=14
# KERNEL: vlsi[0][1][0]=39
# KERNEL: vlsi[0][1][1]=50
# KERNEL: vlsi[0][1][2]=26
# KERNEL: vlsi[0][1][3]=42
# KERNEL: vlsi[0][1][4]=12
# KERNEL: vlsi[0][1][5]=25
# KERNEL: vlsi[0][1][6]=27
# KERNEL: vlsi[0][2][0]=46
# KERNEL: vlsi[0][2][1]=44
# KERNEL: vlsi[0][2][2]=40
# KERNEL: vlsi[0][2][3]=12
# KERNEL: vlsi[0][2][4]=20
# KERNEL: vlsi[0][2][5]=43
# KERNEL: vlsi[0][2][6]=50
# KERNEL: vlsi[1][0][0]=40
# KERNEL: vlsi[1][0][1]=41
# KERNEL: vlsi[1][0][2]=20
# KERNEL: vlsi[1][0][3]=20
# KERNEL: vlsi[1][0][4]=45
# KERNEL: vlsi[1][0][5]=12
# KERNEL: vlsi[1][0][6]=45
# KERNEL: vlsi[1][1][0]=25
# KERNEL: vlsi[1][1][1]=14
# KERNEL: vlsi[1][1][2]=20
# KERNEL: vlsi[1][1][3]=46
# KERNEL: vlsi[1][1][4]=38
# KERNEL: vlsi[1][1][5]=23
# KERNEL: vlsi[1][1][6]=44
# KERNEL: vlsi[1][2][0]=17
# KERNEL: vlsi[1][2][1]=27
# KERNEL: vlsi[1][2][2]=45
# KERNEL: vlsi[1][2][3]=50
# KERNEL: vlsi[1][2][4]=10
# KERNEL: vlsi[1][2][5]=38
# KERNEL: vlsi[1][2][6]=29



