`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 15:09:07
// Design Name: 
// Module Name: FULLADDERUSINGHALFADDER
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


module FULLADDERUSINGHALFADDER(input a,b,cin, output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule

module full_adder(input a,b,cin, output sum,carry);
wire w1,w2,w3;

FULLADDERUSINGHALFADDER h1(.a(a),.b(b),.sum(w1),.carry(w2));
FULLADDERUSINGHALFADDER h2(.a(w1),.b(cin),.sum(sum),.carry(w3));

or o1(carry,w3,w2);
endmodule

