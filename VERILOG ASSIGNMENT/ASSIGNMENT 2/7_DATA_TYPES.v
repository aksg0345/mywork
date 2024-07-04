What is the bug in the following snippet?
module test;
parameter WIDTH=8;
endmodule
module top;
test OUT
initial
defparam OUT.WIDTH=10;
endmodule


// answer : line 8 is the bug 
//here width is inside the initial block;
