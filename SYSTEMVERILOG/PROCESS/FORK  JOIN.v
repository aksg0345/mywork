module exampleforkjoin;
  
  initial begin
    fork
      begin
      $display("the value of time ", $time);
      #5
      $display("the vlaue of time", $time);
      end
      
      begin
       $display("the value of time ", $time);
      #10
      $display("the vlaue of time", $time);
      end
      
      begin
       $display("the value of time ", $time);
      #40
      $display("the vlaue of time", $time);
      end
    join
    $display("the value of time completed at",$time );
  end
    endmodule


OUTPUT:

# KERNEL: the value of time                   0
# KERNEL: the value of time                   0
# KERNEL: the value of time                   0
# KERNEL: the vlaue of time                   5
# KERNEL: the vlaue of time                  10
# KERNEL: the vlaue of time                  40
# KERNEL: the value of time completed at                  40
