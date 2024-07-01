`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 11:21:00
// Design Name: 
// Module Name: DEMUX1x41x2_TB
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


module DEMUX1x41x2_TB;
reg sel0,sel1;
reg i;
wire y0,y1,y2,y3;

DEMUX1x4 mux(sel0,sel1,i,y0,y1,y2,y3);
initial begin
$monitor("sel0=%b; sel1=%b, i=%b, y0=%b; y1=%b; y2=%b; y3=%b;", sel0,sel1,i,y0,y1,y2,y3 );
sel0=0; sel1=0; i=0;#1;
sel0=0; sel1=0; i=1; #1;
sel0=0; sel1=1; i=0; #1;
sel0=0; sel1=1; i=1; #1;
sel0=1; sel1=0; i=0; #1;
sel0=1; sel1=0; i=1; #1;
sel0=1; sel1=1; i=0; #1;
sel0=1; sel1=1; i=1; #1;
end
endmodule
