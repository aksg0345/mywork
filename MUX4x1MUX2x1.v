`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 22:27:24
// Design Name: 
// Module Name: MUX4x1MUX2x1
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


module MUX4x1MUX2x1(input i0,i1,sel, output y  );
assign y=sel? i1:i0;
endmodule

module MUX_4x1(input i0,i1,i2,i3,input sel1,sel0, output y);
wire y0,y1;

MUX4x1MUX2x1 m1(sel1,i2,i3,y1);
MUX4x1MUX2x1 m2(sel1,i1,i0,y0);
MUX4x1MUX2x1 m3(sel0,y0,y1,y);
endmodule

