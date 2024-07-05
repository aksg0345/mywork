1.Write Verilog code in order to generate 5 odd random numbers between 1 to 10.


//answer 1
module odd_order;
  integer i;
  initial begin
    for(i=0; i<10; i=i+1)begin
      $display("%d" ,(2*$urandom_range(0,4))+1);
    end
  end
endmodule
    
  
