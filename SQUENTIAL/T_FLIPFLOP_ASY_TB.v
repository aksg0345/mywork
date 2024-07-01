`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 18:01:49
// Design Name: 
// Module Name: T_FLIPFLOP_ASY_TB
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


module T_FLIPFLOP_ASY_TB;

reg clk;
reg reset;
reg t;
wire q;

T_FLIPFLOP_ASY asy(clk,reset,t,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%b; clk=%b; reset=%b; t=%b; q=%b;",$time, clk,reset,t,q);
reset=1; t=0;
#10 reset=0; t=1;
#10 t=1;
#10 t=0;
#10 t=1;
#10 t=0;
$finish;
end
endmodule















