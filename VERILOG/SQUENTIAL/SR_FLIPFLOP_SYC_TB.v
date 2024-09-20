`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 23:05:21
// Design Name: 
// Module Name: SR_FLIPFLOP_SYC_TB
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


module SR_FLIPFLOP_SYC_TB;
reg clk;
reg reset;
reg s;
reg r;
wire q;


SR_FLIPFLOP_SYC syc(clk,reset,s,r,q);
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%0t; clk=%b; reset=%b; s=%b; r=%b; q=%b", $time,clk,reset,s,r,q);

reset =1; s=0; r=1;  // reset
#10 reset=0; s=1; r=0; //set
#10 s=0; r=0;
#10 s=0; r=1;
#10 s=1; r=0;
#10 s=1; r=1;
#10 $finish;
end
endmodule






