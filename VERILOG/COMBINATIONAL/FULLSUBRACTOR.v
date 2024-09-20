`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 16:40:10
// Design Name: 
// Module Name: FULLSUBRACTOR
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


module FULLSUBRACTOR(input a,b, cin,output D, B);
assign D=a^b^cin;
assign B=(~a&b)|(~(a^b)&cin);
endmodule
