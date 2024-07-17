// Code your testbench here
// or browse Examples
  

//4 state sv

module datatype1;
  reg [3:0] a; // userdefined unsigned 
  logic[3:0] b; // userdefined unsigned
  logic signed [3:0] c; // user defined unsigned in signed
  integer d;   // 32 bit  signed
 
  initial begin
   a= 'bzz1x1;
   b= -5;
   c= -4;
   d= 'haaxx;
  end
  
  initial begin
    #10;
    $display("a=%b,b=%d,c=%d,d=%h", a,b,c,d);
    #10 $finish;
  end
endmodule





OUTPUT:

# KERNEL: a=z1x1,  b=11,  c= -4,  d=0000aaxx
