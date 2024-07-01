`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 18:05:03
// Design Name: 
// Module Name: ENODER_BIN
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


module ENODER_BIN(input[7:0] D, output[2:0] y);

assign y[2]=D[1]|D[3]|D[5]|D[7];
assign y[1]=D[2]|D[3]|D[6]|D[7];
assign y[0]=D[4]|D[5]|D[6]|D[7];
endmodule
