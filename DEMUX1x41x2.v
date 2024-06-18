`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 11:06:08
// Design Name: 
// Module Name: DEMUX1x41x2
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


module DEMUX1x41x2(input i,sel,output y0,y1 );
assign {y0,y1}=sel?{1'b0,i}:{i,1'b0};
endmodule


module DEMUX1x4(input i,sel0,sel1, output y0,y1,y2,y3);

wire x1,x0;

DEMUX1x41x2 m1(i,sel0,x1,x0);
DEMUX1x41x2 m2(sel1, x1,y0,y1);
DEMUX1x41x2 m3(sel1, x0,y2,y3);
endmodule
