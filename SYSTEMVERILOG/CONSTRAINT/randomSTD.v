// Code your testbench here
// or browse Examples

class test;
   int  a;
  // bit[3:0] b;

  //constraint a1 { a>= 1; a <= 11; }

 function void display();
  std::randomize(a);
  $display("value of a %d",a);
//     randomize(b);
//    //for (int i =0; i<=10;i++)begin 
//    $display("value of  b  %d", b);
   
    endfunction

  endclass

 module tb;
test t;
 initial begin
  t=new();
  t.display();
end
endmodule

------------------------------------------------------------

OUTPUT:

# KERNEL: value of a  1497363586
