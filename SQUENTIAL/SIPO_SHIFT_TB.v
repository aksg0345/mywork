`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 16:12:24
// Design Name: 
// Module Name: SIPO_SHIFT_TB
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


module sipo_tb;
reg x,clk,rst;
wire [3:0]y;
SIFO_SHIFT uut(x,clk,y,rst);


initial begin
 clk=1'b0;
 forever #5 clk=~clk;
 end
  
 
 initial begin
$monitor("x=%b,y=%b",x,y);
rst=1;#10; 
x=1;#10;
rst=0;
x=1; #10;
 x=0;#10;
 x=1;#10;
 x=0;#10;
 #40;
 $finish;
 end

 endmodule
