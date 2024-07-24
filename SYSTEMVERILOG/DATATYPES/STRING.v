module str_datatype;
  
  
  string  str1 = "verilog";
  string str2 = "system verilog";

  
  initial begin
    
    if(str1==str2)
      $display("--->.condition is equal");
    else
      $display("--->.condition is not equal");
    
    
    if(str1!=str2)
      $display("--->.condition is not equal");
    else
      $display("--->.condition is  equal");
    
    
    if(str1 > str2)
      $display("--->.condition is true");
    else
      $display("--->.condition is  false");
     
    
        
    if(str1 < str2)
      $display("--->.condition is true");
    else
      $display("--->.condition is  false");
    
    
    
    $display("--->. str1 = %s",str1.tolower());
    
    $display("--->. str2 = %s",str1.toupper());
    
    $display("--->.%s", str1.getc(5));
    
    $display("--->.%s", str2.getc(7));
    
    $display("--->.%d", str2.compare(str1));
    
    $display("--->.%d", str1.icompare(str1));
    
    
  end
endmodule



OUTPUT:

# KERNEL: --->.condition is not equal
# KERNEL: --->.condition is not equal
# KERNEL: --->.condition is true
# KERNEL: --->.condition is  false
# KERNEL: --->. str1 = verilog
# KERNEL: --->. str2 = VERILOG
# KERNEL: --->.          o
# KERNEL: --->.          v
# KERNEL: --->.         -1
# KERNEL: --->.          0

