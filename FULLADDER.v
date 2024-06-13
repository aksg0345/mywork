`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 12:07:41
// Design Name: 
// Module Name: FULLADDER
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


module FULLADDER(input a,b,cin,output sum,carry);
assign sum=a^b^cin ;
assign carry=(a&b)|(b&cin)|(a&cin);
endmodule
