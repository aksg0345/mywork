`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 17:34:30
// Design Name: 
// Module Name: Gra2Bin
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


module Gra2Bin(input [3:0] gray,output[3:0] binary);

assign binary[3]=gray[3];
assign binary[2]=gray[3]^gray[2];
assign binary[1]=gray[2]^gray[1];
assign binary[0]=gray[1]^gray[0];

endmodule
