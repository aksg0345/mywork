`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 00:20:30
// Design Name: 
// Module Name: MELAY_OVLAP_TB
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


module MELAY_OVLAP_TB;

reg clk;
reg reset;
reg  in;
wire out;

MELAY_OVLAP overlap(clk,reset,in,out);

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
//#10 in=1;
#20 $finish;
end
endmodule


