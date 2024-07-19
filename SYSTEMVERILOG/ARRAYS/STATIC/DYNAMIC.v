// Code your testbench here
// or browse Examples
module dynamic_arr;
  
  int arr [];
  initial begin
    arr=new[6];
    $display("new array size=%0d",arr.size());
    arr='{6,7,8,9,10,11};
    foreach(arr[i])begin
      $display("new array=[%0d]=%0d",i,arr[i]);
  end
    
    arr=new[10](arr);
    $display("new array size=%0d",arr.size());
    foreach(arr[i])begin
      $display("new array=[%0d]=%0d",i,arr[i]);
    end
    
    
    arr=new[6];
    $display("new array size=%0d",arr.size());
    arr='{1,2,3,5,6};
     foreach(arr[i])begin
      $display("new array=[%0d]=%0d",i,arr[i]);
       arr.delete();
       $display("new array deleted size=%0d",arr.size());          
    end
    
  end
endmodule



-> OTUPUT:
# KERNEL: new array size=6
# KERNEL: new array=[0]=6
# KERNEL: new array=[1]=7
# KERNEL: new array=[2]=8
# KERNEL: new array=[3]=9
# KERNEL: new array=[4]=10
# KERNEL: new array=[5]=11
# KERNEL: new array size=10
# KERNEL: new array=[0]=6
# KERNEL: new array=[1]=7
# KERNEL: new array=[2]=8
# KERNEL: new array=[3]=9
# KERNEL: new array=[4]=10
# KERNEL: new array=[5]=11
# KERNEL: new array=[6]=0
# KERNEL: new array=[7]=0
# KERNEL: new array=[8]=0
# KERNEL: new array=[9]=0
# KERNEL: new array size=6
# KERNEL: new array=[0]=1
# KERNEL: new array deleted size=0
