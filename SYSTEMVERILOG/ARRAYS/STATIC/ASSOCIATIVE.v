module associate_array;
  
  logic [7:0] asoarr [int];
  int index;
  
  initial begin
  asoarr[15]=25;
  asoarr[2]=34;
  asoarr[56]=23;
  asoarr[125]=2;
  asoarr[6]=7;
  
  foreach(asoarr[i])begin
    $display("array value [%0d]=[%0d]",i,asoarr[i]);
  end
    
  
    asoarr.last(index);begin 
      $display("array value of last index[%0d]",index);
      index=15;
    asoarr.prev(index);
      $display("array value of prev index of [15] is [%0d]",index );
      asoarr.first(index); 
      $display("array value of frist index[%0d]",index);
      
      index=56;
      asoarr.next(index);
      $display("array value of next index of [56] is [%0d]",index );
      
      
  asoarr.delete(56);      
  foreach(asoarr[i])begin
    $display("array value [%0d]=[%0d]",i,asoarr[i]);
  end
    
      
    end
  end
endmodule





OUTPUT:
# KERNEL: array value [2]=[34]
# KERNEL: array value [6]=[7]
# KERNEL: array value [15]=[25]
# KERNEL: array value [56]=[23]
# KERNEL: array value [125]=[2]
# KERNEL: array value of last index[125]
# KERNEL: array value of prev index of [15] is [6]
# KERNEL: array value of frist index[2]
# KERNEL: array value of next index of [56] is [125]
# KERNEL: array value [2]=[34]
# KERNEL: array value [6]=[7]
# KERNEL: array value [15]=[25]
# KERNEL: array value [125]=[2]


