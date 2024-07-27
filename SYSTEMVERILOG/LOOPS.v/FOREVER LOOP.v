--> 1. FOREVER LOOP:

module loopforever;
  
  int count;
   
  initial begin
    count=0;
    
    forever begin
      $display("value of count=[%0d]",count);
      count++;
      //if(count==20)break;
      #10;
    end
  end
  
  initial begin
    #50;
    $finish;
  end
endmodule


OUTPUT:

# KERNEL: value of count=[0]
# KERNEL: value of count=[1]
# KERNEL: value of count=[2]
# KERNEL: value of count=[3]
# KERNEL: value of count=[4]


----------------------------------------------------------------------------------------

-->2. FOREVER LOOP WITH BREAK STATEMENT:


module loopforever;
  
  int count;
   
  initial begin
    count=0;
    
    forever begin
      $display("value of count=[%0d]",count);
      count++;
      if(count==20)break;
      #10;
    end
  end
  
/*  initial begin
    #50;
    $finish;
  end
*/
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
# KERNEL: value of count=[16]
# KERNEL: value of count=[17]
# KERNEL: value of count=[18]
# KERNEL: value of count=[19]
