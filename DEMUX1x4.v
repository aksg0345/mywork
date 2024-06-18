`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 10:34:52
// Design Name: 
// Module Name: DEMUX1x4
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


module DEMUX1x4(input [1:0]sel, input i, output reg y0,y1,y2,y3);

always @(*)begin
case(sel)
2'h0: {y0,y1,y2,y3}={i,3'b0};
2'h1: {y0,y1,y2,y3}={1'b0,i,2'b0};
2'h2: {y0,y1,y2,y3}={2'b0,i,1'b0};
2'h3: {y0,y1,y2,y3}={3'b0,i};
default: $display("invalid sel input");
endcase
end
endmodule
