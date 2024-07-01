`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 19:19:48
// Design Name: 
// Module Name: T_FLIPFLOP_SYC_TB
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


module T_FLIPFLOP_SYC_TB;

reg clk;
reg t;
wire q;

T_FLIPFLOP_SYC syc(clk,t,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%b; clk=%b; t=%b; q=%b;",$time, clk,t,q);
t=0; 
#10;
 
#10 t=1;
#10 t=0;
#10 t=1;
#10 t=1;
$finish;
end
endmodule

