`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 17:27:05
// Design Name: 
// Module Name: HALFSUBRACTOR_TB
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


module HALFSUBRACTOR_TB;
reg a,b;
wire D,B;

HALFSUBRACTOR sub(.a(a),.b(b),.D(D),.B(B));
initial begin
a=0; b=0;
 a=0; b=1;#10
 a=1; b=0;#10
 a=1; b=1;#10
$finish;
end
always@(a or b)
$display("time=%0t input values: a=%b b=%b output values: D=%b B=%b",$time,a,b,D,B);
endmodule
