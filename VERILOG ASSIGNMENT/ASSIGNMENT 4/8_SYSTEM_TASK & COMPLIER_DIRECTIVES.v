8.Write Verilog code in order to generate a clock signal of frequency 1GHz. Use the following timescale: timescale 1us/1ps.


  `timescale 1us/1ps
module clock_gen(
    output reg clk
);
    initial begin
        clk = 0;
    end
    always begin
        #0.5 clk = ~clk; // 0.5us period for 1GHz frequency
    end
endmodule
