module whileloop;
  
  string count;
  int i;
  
  initial begin
     
    count="verilog and system verilog";
     i=0;
    
      do  begin
      $display("Value of count[%0d]=%s",i,count[i]); 
      i++;
    end
      while(i<count.len());
  end
    endmodule


OUTPUT:
# KERNEL: Value of count[0]=v
# KERNEL: Value of count[1]=e
# KERNEL: Value of count[2]=r
# KERNEL: Value of count[3]=i
# KERNEL: Value of count[4]=l
# KERNEL: Value of count[5]=o
# KERNEL: Value of count[6]=g
# KERNEL: Value of count[7]= 
# KERNEL: Value of count[8]=a
# KERNEL: Value of count[9]=n
# KERNEL: Value of count[10]=d
# KERNEL: Value of count[11]= 
# KERNEL: Value of count[12]=s
# KERNEL: Value of count[13]=y
# KERNEL: Value of count[14]=s
# KERNEL: Value of count[15]=t
# KERNEL: Value of count[16]=e
# KERNEL: Value of count[17]=m
# KERNEL: Value of count[18]= 
# KERNEL: Value of count[19]=v
# KERNEL: Value of count[20]=e
# KERNEL: Value of count[21]=r
# KERNEL: Value of count[22]=i
# KERNEL: Value of count[23]=l
# KERNEL: Value of count[24]=o
# KERNEL: Value of count[25]=g
