`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2024 08:14:31
// Design Name: 
// Module Name: DEMUX1x2
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


module DEMUX1x2(input i ,sel,output y0,y1);
assign {y0,y1}=sel?{1'b0,i}:{i,1'b0};
endmodule
