`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 19:01:42
// Design Name: 
// Module Name: CARRYLOOKAHEADADDER
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


module CARRYLOOKAHEADADDER(input [3:0] a,b, input cin, output [3:0] sum,carry );
wire [3:0] ci ;

assign ci[0]=cin;
assign ci[1]=(a[0]&b[0])|((a[0]^b[0]) & ci[0]);
assign ci[2]=(a[1]&b[1])|((a[1]^b[1]) & ((a[0]&b[0])|((a[0]^b[0]) & ci[0])));
assign ci[3]=(a[2]&b[2])| ((a[2]^b[2] &  ((a[1]&b[1])|((a[1]^b[1]) & ((a[0]&b[0])|((a[0]^b[0]) & ci[0]))))));
assign carry= (a[3]&b[3])| ((a[3]^b[3]) & ((a[2]&b[2])| ((a[2]^b[2]) &  (a[1]&b[1])|((a[1]^b[1]) & ((a[0]&b[0])|((a[0]^b[0]) & ci[0]))))));
assign sum= a^b^ci;
endmodule
