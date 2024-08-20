----------------------------------------------------
class randfunction;

  rand bit [2:0]a;

endclass

module ran_fun;

  randfunction RR;

  initial begin
    RR = new();
    for (int i =0;i <=7;i++)begin 
    void'(RR.randomize());
      $display("iteration is%0d &value of a=%0d",i,RR.a);
    
    
    
    end
  end
endmodule

-----------------------------------------------------------------------------

OUTPUT:
# KERNEL: iteration is0 &value of a=1
# KERNEL: iteration is1 &value of a=0
# KERNEL: iteration is2 &value of a=4
# KERNEL: iteration is3 &value of a=6
# KERNEL: iteration is4 &value of a=1
# KERNEL: iteration is5 &value of a=2
# KERNEL: iteration is6 &value of a=4
# KERNEL: iteration is7 &value of a=4

----------------------------------------------------------------------------------
class randfunction;

  randc bit [2:0]a;

endclass

module ran_fun;

  randfunction RR;

  initial begin
    RR = new();
    for (int i =0;i <=7;i++)begin 
    void'(RR.randomize());
      $display("iteration is%0d &value of a=%0d",i,RR.a);
    
    
    
    end
  end
endmodule
---------------------------------------------------------------------------------------

OUTPUT:
# KERNEL: iteration is0 &value of a=0
# KERNEL: iteration is1 &value of a=4
# KERNEL: iteration is2 &value of a=7
# KERNEL: iteration is3 &value of a=2
# KERNEL: iteration is4 &value of a=3
# KERNEL: iteration is5 &value of a=5
# KERNEL: iteration is6 &value of a=6
# KERNEL: iteration is7 &value of a=1

-------------------------------------------------------------------------------------------

