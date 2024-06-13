`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 19:23:25
// Design Name: 
// Module Name: GATES
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


module GATES(input A,B,output Y1,Y2,Y3,Y4,Y5,Y6);
assign Y1=A&B;
assign Y2=A|B;
assign Y3=~(A&B);
assign Y4=~(A|B);
assign Y5=A^B;
assign Y6=~(A^B);
endmodule
