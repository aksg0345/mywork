`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 15:21:06
// Design Name: 
// Module Name: FULLADDERUSINGHALFADD_TB
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


module FULLADDERUSINGHALFADD_TB;
reg a,b,cin;
wire sum,carry;
FULLADDERUSINGHALFADDER adder(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
a=0; b=0; cin=0;
#10 a=0; b=0; cin=1;
#10 a=0; b=1; cin=0;
#10 a=0; b=1; cin=1;
#10 a=1; b=0; cin=0;
#10 a=1; b=0; cin=1;
#10 a=1; b=1; cin=0;
#10 a=1; b=1; cin=1;
$finish;
end
always@(a or b or cin)
$display("time=%0t input values: a=%b b=%b cin=%b output values: sum=%b carry=%b", $time,a,b,cin,sum,carry);
endmodule
