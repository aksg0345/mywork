1.Write Verilog code in order to generate 5 odd random numbers between 1 to 10.
  
  // answer 1
module is odd (out,in);
  input[9:0] in;
  output reg out=0;

  initial begin
    always@(in)begin
      if(in%2 == 0);
      out=0;
      $display("is even");
      else
        out=1;
      $dispaly("is odd");
    end
    endmodule


//answer 2
module odd_order;
  integer i;
  initial begin
    for(i=0; i<10; i=i+1)begin
      $display("%d" ,(2*$urandom_range(0,4))+1);
    end
  end
endmodule
    
  
