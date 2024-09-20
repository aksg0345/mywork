`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 04:50:00
// Design Name: 
// Module Name: MUX3x1_TB
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


module MUX3x1_TB;
reg i0,i1,i2,i3;
reg sel1, sel0;
wire out;

mux_3_x_1 mux(i0,i1,i2,i3,sel1,sel0,out);
initial begin
$monitor("sel0=%b,sel1=%b ,i3=%0b,i2=%0b,i1=%0b,i0=%0b out=%0b",sel0,sel1,i3,i2,i1,i0,out);
{i3,i2,i1,i0}=4'h5;
repeat(6) begin
{sel0,sel1}= $random;
#5;
end
end
endmodule
