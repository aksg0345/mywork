// Code your testbench here
// or browse Examples
  

//2 state sv

module datatype1;
  int a; // 32 bit signed
  bit[3:0] b; // userdefined unsigned
  byte c;   // 8 bit  signed
  shortint d; // 16 bit signed
  longint e; //64 bit signed
  
  initial begin
    a=-1;
    b='h0xb;
    c='h0x5af;
    d= 'h fxzaa;
    e= 'h faxzz;
  end
  
  initial begin
    #10;
    $display("a=%h,b=%h,c=%h,d=%h,e=%h", a,b,c,d,e);
    #10 $finish;
  end
endmodule




OUTPUT:
# KERNEL: a=ffffffff, b=b, c=af, d=00aa, e=00000000000fa000








 
