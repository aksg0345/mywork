`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 11:21:21
// Design Name: 
// Module Name: HALFADDER_TB
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


module HALFADDER_TB;
reg a,b;
wire y;
HALFADDER adder(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
$finish;
end
always@(a or b)
$display("time=%0t input values: a=%b b=%b output values: sum=%b carry=%b",$time,a,b,sum,carry);
endmodule
