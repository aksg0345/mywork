`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 10:18:06
// Design Name: 
// Module Name: DEMUX1x2_TB
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


module DEMUX1x2_TB;
reg i,sel;
wire y0,y1;

DEMUX1x2 mux(i,sel,y0,y1);
initial begin
$monitor("sel=%b; i=%b; y0=%b; y1=%b",sel,i,y0,y1);
sel=0; i=1; #1;
sel=0; i=1; #1;
sel=1; i=0; #1;
sel=1; i=1; #1;
end
endmodule
