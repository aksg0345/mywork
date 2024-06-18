`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 23:33:40
// Design Name: 
// Module Name: MUX4x1MUX2x1_TB
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


module MUX4x1MUX2x1_TB;
reg i0,i1,i2,i3;
reg sel1,sel0;
wire y;

MUX_4x1 mux(sel1,sel0,i0,i1,i2,i3,y);
initial begin
$monitor("sel0=%b,sel1=%b i3=%0b,i2=%0b,i1=%0b,i0=%0b y=%0b",sel0,sel1,i3,i2,i1,i0,y);
{i3,i2,i1,i0}=4'h5;
repeat(6) begin
{sel0,sel1}= $random;
#5;
end
end
endmodule
