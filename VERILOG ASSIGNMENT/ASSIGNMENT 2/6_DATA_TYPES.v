What will be the value of the parameter constant for the instance DUT ir
the top module from the below snippet?
module test;
parameter WIDTH=8;
endmodule
module top;
test #(16) OUT ();
endmodule


  // answer : DUT is 16 beacuse 
  // when instanting out in the top module , width is overridden with 16;
