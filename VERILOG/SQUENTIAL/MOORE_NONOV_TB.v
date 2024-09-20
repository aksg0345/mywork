`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 13:55:39
// Design Name: 
// Module Name: MOORE_NONOV_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MOORE_NONOV_TB;

reg clk;
reg reset;
reg  in;
wire out;


MOORE_NONOV overlap(clk,reset,in,out);


initial begin
clk=0;
forever #5 clk=~clk;
end



initial begin
$monitor("time=%t, clk=%b, reset=%b, in=%b, out=%b", $time,clk,reset,in,out);

reset=1;
in=0;
#10 reset=0;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=0;

#100 $finish;
end
endmodule
