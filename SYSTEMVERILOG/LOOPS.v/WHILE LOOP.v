  
  string count;
  int i;
  
  initial begin
     
    count="vlsi";
     i=0;
    
    while(i<count.len())begin
      $display("Value of count[%0d]=%s",i,count[i]); 
      i++;
    end
  end
    endmodule

OUTPUT:

# KERNEL: Value of count[0]=v
# KERNEL: Value of count[1]=l
# KERNEL: Value of count[2]=s
# KERNEL: Value of count[3]=i
