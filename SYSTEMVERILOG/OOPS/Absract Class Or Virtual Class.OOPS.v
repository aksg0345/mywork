// Code your testbench here
// or browse Examples
virtual class exam1;
  
  int a;
  int b;
  
 function void display();
    a=31;
    b=45;
    $display("a=%0d and b=%0d", a,b);
  endfunction
endclass

class exam2 extends exam1;
  
  int c, d;

  function void display();
    a=41;
    b=45;
    c=a+b;
    d=a*b;
     $display("a=%0d and b=%0d , c=%0d, d=%0d", a,b,c,d);
  endfunction
  
endclass

class exam3 extends exam1;
  
  int e;

  function void display();
    a=51;
    b=45;
    e=a-b;
     $display("a=%0d and b=%0d , e=%0d", a,b,e);
  endfunction
  
endclass





module examdata;
  
  exam1 e1[2:0];
  exam2 e2;
  exam3 e3;
  
  initial begin
    e3=new();
    e2=new();
    e1[1]=e3;
    e1[2]=e2;
    
    e1[1].display();
    e1[2].display();
    e2.display();
    
    //     e1[0].a=44; CAN'T OVER WRITE THE ABSTARCT CLASS OR VITUAL CLASS
//     e1[0].display();
    
  end
endmodule

------------------------------------------------------------------------------------

    OUTPUT:

# KERNEL: a=31 and b=45
# KERNEL: a=31 and b=45
# KERNEL: a=41 and b=45 , c=86, d=1845
