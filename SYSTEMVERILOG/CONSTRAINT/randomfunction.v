--------------------------------------------------------------------------

module ran_fun;
  bit signed [5:0] a;  //----> (bit unsigned)
  //integer unsigned a;
  shortint b;          //-----------> (shortint signed)
 // bit signed [5:0] b;
  
 initial begin
   
   a=$random();
   b=$urandom_range(5,3);
   
   $display("a=%0d",a);
   $display("b=%0d",b);
   
 end
endmodule
-------------------------------------------------------------------------------

OUTPUT:

# KERNEL: a=-16
# KERNEL: b=4
