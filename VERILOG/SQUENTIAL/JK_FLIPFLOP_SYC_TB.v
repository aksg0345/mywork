`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 23:46:00
// Design Name: 
// Module Name: JK_FLIPFLOP_SYC_TB
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


module JK_FLIPFLOP_SYC_TB;

reg clk;
reg reset;
reg j;reg k;
wire q;


JK_FLIPFLOP_SYC syc(clk,reset, j,k,q);


initial begin
 clk=0;
forever #5 clk=~clk;
end


initial begin
$monitor("time=%0t; clk=%b; reset=%b; j=%b; k=%b; q=%b", $time,clk,reset,j,k,q);

reset =1; j=0; k=1;  // reset
#10 reset=0; j=1; k=0; //set
#10 j=0; k=0;
#10 j=0; k=1;
#10 j=1; k=0;
#10 j=1; k=1;
#10 $finish;
end
endmodule
