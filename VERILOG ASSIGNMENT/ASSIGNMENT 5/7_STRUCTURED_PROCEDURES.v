7.Write Verilog code for generating an infinite clock signal with a 50% Duty cycle having a time period of 10ns using a forever loop.

  //answer
  module clock_gen (
    output reg clk
);
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns period, 5ns high, 5ns low
    end
endmodule
