`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 10:47:53
// Design Name: 
// Module Name: DEMUX1x4_TB
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


module DEMUX1x4_TB;
reg [1:0] sel;
reg i;
wire y0,y1,y2,y3;

DEMUX1x4 mux(sel,i,y0,y1,y2,y3);
initial begin
$monitor ("sel=%b; i=%b; y0=%b; y1=%b; y2=%b, y3=%b", sel,i,y0,y1,y2,y3);
sel=2'b00; i=0; #1;
sel=2'b00; i=1; #1;
sel=2'b01; i=0; #1;
sel=2'b01; i=1; #1;
sel=2'b10; i=0; #1;
sel=2'b10; i=1; #1;
sel=2'b11; i=0; #1;
sel=2'b11; i=1; #1;
end
endmodule
