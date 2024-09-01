class seq_item;
  rand bit [7:0] val1, val2;
 
  constraint val1_c {val1 > 100; val1 < 200;}
  constraint val2_c {soft val2 > 5; val2 < 80;}//--> soft constaint
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(8) begin
      item.randomize();
      $display("Before inline constraint: val1 = %0d, val2 = %0d", item.val1, item.val2);
           
      item.randomize with {val1 > 150; val1 < 160;};
      item.randomize with {val2 inside {[10:20]};};
      $display("----------------------------------");
      $display("After inline constraint: val1 = %0d, val2 = %0d", item.val1, item.val2);
    end
  end
endmodule

--------------------------------------------------------------------------------
OUTPUT:

# KERNEL: Before inline constraint: val1 = 184, val2 = 18
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 171, val2 = 16
# KERNEL: Before inline constraint: val1 = 169, val2 = 15
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 188, val2 = 13
# KERNEL: Before inline constraint: val1 = 123, val2 = 41
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 194, val2 = 16
# KERNEL: Before inline constraint: val1 = 196, val2 = 62
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 128, val2 = 16
# KERNEL: Before inline constraint: val1 = 189, val2 = 51
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 138, val2 = 13
# KERNEL: Before inline constraint: val1 = 123, val2 = 26
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 199, val2 = 12
# KERNEL: Before inline constraint: val1 = 133, val2 = 35
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 135, val2 = 18
# KERNEL: Before inline constraint: val1 = 101, val2 = 52
# KERNEL: ----------------------------------
# KERNEL: After inline constraint: val1 = 111, val2 = 13
