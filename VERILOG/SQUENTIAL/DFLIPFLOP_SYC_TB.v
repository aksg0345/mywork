`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 11:08:26
// Design Name: 
// Module Name: DFLIPFLOP_SYC_TB
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


module DFLIPFLOP_SYC_TB;

reg clk;
reg reset;
reg d;
wire q;

DFLIPFLOP_SYC dff(clk,d,reset,q);

initial begin
clk=1;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%t, clk=%b,  d=%b, reset=%b, q=%b", $time,clk,d,reset,q);
  reset=1; d=0;
#10 reset=0; d=1;
#10 d=0;
#10 d=1;

#10 reset=1;
#10 reset=0; d=1;
#10 d=0;
$finish;
end
endmodule
