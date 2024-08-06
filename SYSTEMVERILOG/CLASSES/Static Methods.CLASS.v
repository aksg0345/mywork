------------------------------------------------------------------------
class exam ;
  
  static int college;
  
  static int marks; //------> STATIC PROPERITIES
  
  function new ();
    marks++;
    college=marks;
  endfunction
  
  
  static function void display(); //------> STATIC METHODS
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
   $display("-------------------");
   e[3].display();
   $display("-------------------");
  end
 
endmodule
------------------------------------------------------------------------

OUTPUT:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: college=1
# KERNEL: college=2
# KERNEL: college=3
# KERNEL: college=4
# KERNEL: college=5
# KERNEL: -------------------
# KERNEL: college=5
# KERNEL: -------------------
