----------------------------------------------------------
class exam ;
  
  int college;
  
  static int marks; //------> STATIC PROPERITIES
  
  function new ();
    marks++;
    college=marks;
  endfunction
  
  
  function void display();
    $display("college=%0d",college);
  endfunction
  
endclass

module examdata;
  
  exam e[5]; //------------> ARRAY DECLARARTION
  
  
  initial begin
    
    foreach(e[i]) begin
        e[i]=new();
        e[i].display();
      end
  end
      
endmodule
 ----------------------------------------------------------

OUTPUT:

# KERNEL: college=1
# KERNEL: college=2
# KERNEL: college=3
# KERNEL: college=4
# KERNEL: college=5
