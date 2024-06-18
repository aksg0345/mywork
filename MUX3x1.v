`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 04:38:59
// Design Name: 
// Module Name: MUX3x1
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


module MUX3x1(input i0,i1,sel,output out);
assign out=sel? i1:i0;
endmodule

module mux_3_x_1(input i0,i1,i2,i3, input sel0,sel1,output  out);
wire y0,y1;

MUX3x1 dut1(sel1,i0,i1,y0);
MUX3x1 dut2(sel0,y0,i2,out);
endmodule
