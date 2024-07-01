`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 14:51:50
// Design Name: 
// Module Name: BINTOGRAY
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


module BINTOGRAY(input [3:0] binar, output reg[3:0] gra);

always@(*)begin
 gra[3]=binar[3];
 gra[2]=binar[3]^binar[2];
  gra[1]=binar[2]^binar[1];
 gra[0]=binar[1]^binar[0];
 end
endmodule
