// Code your testbench here
// or browse Examples

module que;
  
  int quearr[$];
  string sv[$];
  

  
  initial begin
    
    $display("que initial size =%0d",quearr.size());
    
    quearr={8,7}; // position 0 is 8, and position 1 is 7
          $display("que size =%0d",quearr.size());
    

    
    quearr.insert(2,6);// 2 is position and insert value is 6
    quearr.insert(3,5);
    quearr.insert(4,4);
    quearr.insert(5,3);
    quearr.insert(6,2);
    quearr.insert(7,1);
    
  //  $display("que  size =%0d",quearr.size());
    
    foreach(quearr[i])
      $display("que of numbers=[%0d]=[%0d]", i,quearr[i]);
    $display("que  size =%0d",quearr.size());
    
    
     sv={"slave","MASTER"};
     $display("que size =%0d",quearr.size());
    
    sv.insert(2,"master");
    sv.insert(3,"slave");
    sv.insert(4,"verilog");
    sv.insert(5,"vlsi");    
    
    foreach(sv[i])
      $display("que of numbers=[%0d]=[%0s]", i,sv[i]);
    $display("que  size =%0d",sv.size());
    
    $display("que  size =%0s",sv[0]);
    $display("que  size =%0s",sv[5]);
    
    quearr.delete(2);
        foreach(quearr[i])
      $display("que of numbers=[%0d]=[%0d]", i,quearr[i]);
    $display("que  size =%0d",quearr.size());
  
    quearr.shuffle();
         foreach(quearr[i])
      $display("que of numbers=[%0d]=[%0d]", i,quearr[i]);
    $display("que  size =%0d",quearr.size());
    
    quearr.sort();
        foreach(quearr[i])
      $display("que of numbers=[%0d]=[%0d]", i,quearr[i]);
    $display("que  size =%0d",quearr.size());
    
    quearr.rsort();
      foreach(quearr[i])
      $display("que of numbers=[%0d]=[%0d]", i,quearr[i]);
    $display("que  size =%0d",quearr.size());
    
    
    sv.pop_back();
        foreach(sv[i])
      $display("que of numbers=[%0d]=[%0s]", i,sv[i]);
    $display("que  size =%0d",sv.size());
    
    
    sv.pop_front();
    foreach(sv[i])
    $display("que of numbers=[%0d]=[%0s]", i,sv[i]);
    $display("que  size =%0d",sv.size());
    
    sv.push_front("MASTER");
    
        foreach(sv[i])
    $display("que of numbers=[%0d]=[%0s]", i,sv[i]);
    $display("que  size =%0d",sv.size());
    
    sv.push_back("I2c");
            foreach(sv[i])
    $display("que of numbers=[%0d]=[%0s]", i,sv[i]);
    $display("que  size =%0d",sv.size());
    
    
  end
endmodule




OUTPUT:

# KERNEL: que initial size =0
# KERNEL: que size =2
# KERNEL: que of numbers=[0]=[8]
# KERNEL: que of numbers=[1]=[7]
# KERNEL: que of numbers=[2]=[6]
# KERNEL: que of numbers=[3]=[5]
# KERNEL: que of numbers=[4]=[4]
# KERNEL: que of numbers=[5]=[3]
# KERNEL: que of numbers=[6]=[2]
# KERNEL: que of numbers=[7]=[1]
# KERNEL: que  size =8
# KERNEL: que size =8
# KERNEL: que of numbers=[0]=[slave]
# KERNEL: que of numbers=[1]=[MASTER]
# KERNEL: que of numbers=[2]=[master]
# KERNEL: que of numbers=[3]=[slave]
# KERNEL: que of numbers=[4]=[verilog]
# KERNEL: que of numbers=[5]=[vlsi]
# KERNEL: que  size =6
# KERNEL: que  size =slave
# KERNEL: que  size =vlsi
# KERNEL: que of numbers=[0]=[8]
# KERNEL: que of numbers=[1]=[7]
# KERNEL: que of numbers=[2]=[5]
# KERNEL: que of numbers=[3]=[4]
# KERNEL: que of numbers=[4]=[3]
# KERNEL: que of numbers=[5]=[2]
# KERNEL: que of numbers=[6]=[1]
# KERNEL: que  size =7
# KERNEL: que of numbers=[0]=[3]
# KERNEL: que of numbers=[1]=[7]
# KERNEL: que of numbers=[2]=[8]
# KERNEL: que of numbers=[3]=[2]
# KERNEL: que of numbers=[4]=[4]
# KERNEL: que of numbers=[5]=[1]
# KERNEL: que of numbers=[6]=[5]
# KERNEL: que  size =7
# KERNEL: que of numbers=[0]=[1]
# KERNEL: que of numbers=[1]=[2]
# KERNEL: que of numbers=[2]=[3]
# KERNEL: que of numbers=[3]=[4]
# KERNEL: que of numbers=[4]=[5]
# KERNEL: que of numbers=[5]=[7]
# KERNEL: que of numbers=[6]=[8]
# KERNEL: que  size =7
# KERNEL: que of numbers=[0]=[8]
# KERNEL: que of numbers=[1]=[7]
# KERNEL: que of numbers=[2]=[5]
# KERNEL: que of numbers=[3]=[4]
# KERNEL: que of numbers=[4]=[3]
# KERNEL: que of numbers=[5]=[2]
# KERNEL: que of numbers=[6]=[1]
# KERNEL: que  size =7
# KERNEL: que of numbers=[0]=[slave]
# KERNEL: que of numbers=[1]=[MASTER]
# KERNEL: que of numbers=[2]=[master]
# KERNEL: que of numbers=[3]=[slave]
# KERNEL: que of numbers=[4]=[verilog]
# KERNEL: que  size =5
# KERNEL: que of numbers=[0]=[MASTER]
# KERNEL: que of numbers=[1]=[master]
# KERNEL: que of numbers=[2]=[slave]
# KERNEL: que of numbers=[3]=[verilog]
# KERNEL: que  size =4
# KERNEL: que of numbers=[0]=[MASTER]
# KERNEL: que of numbers=[1]=[MASTER]
# KERNEL: que of numbers=[2]=[master]
# KERNEL: que of numbers=[3]=[slave]
# KERNEL: que of numbers=[4]=[verilog]
# KERNEL: que  size =5
# KERNEL: que of numbers=[0]=[MASTER]
# KERNEL: que of numbers=[1]=[MASTER]
# KERNEL: que of numbers=[2]=[master]
# KERNEL: que of numbers=[3]=[slave]
# KERNEL: que of numbers=[4]=[verilog]
# KERNEL: que of numbers=[5]=[I2c]
# KERNEL: que  size =6

