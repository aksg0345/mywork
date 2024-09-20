`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 10:19:45
// Design Name: 
// Module Name: DFLIPFLOP_ASY_TB
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


module DFLIPFLOP_ASY_TB;
reg clk;
reg reset;
reg d;
wire q;

DFLIPFLOP_ASY dff(clk,d,reset,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%t, clk=%b, reset=%b, d=%b, q=%b", $time,clk,reset,d,q);
  reset=1; d=0;
#10 reset=0; d=1;
#10 d=0;
#10 d=1;

#10 reset=1;
#10 reset=0; d=1;
#10 d=0;
#5 reset=1;d=1;#5;
$finish;
end
endmodule
