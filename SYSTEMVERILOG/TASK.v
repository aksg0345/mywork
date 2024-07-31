1.<-------"TASK"--------->

module egtask;
  
 int result;
  
  task  sub(input int a, b,output int result);
    #1 result=a-b;
  endtask
  
  initial begin
    $display("-------------------------");
    sub(20,10,result) ;
    $display(" the value of sub:%0d",result);
    $display("-------------------------");
  end
endmodule

OUTPUT:
# KERNEL: -------------------------
# KERNEL:  the value of sub:10
# KERNEL: -------------------------

2.<-------"in task calling the function"--------->

module exampletask;
  
  function sumfunction;
    $display("____________");
  endfunction
  
  task sumtask;
    #1 void'(sumfunction);
    $display("------------");
  endtask
  
  initial begin
    sumtask;
    $display("2039383");
  end
endmodule


OUTPUT:
# KERNEL: ____________
# KERNEL: ------------
# KERNEL: 2039383
