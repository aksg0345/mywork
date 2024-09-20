`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 22:54:15
// Design Name: 
// Module Name: DECODER_TB
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


module DECODER_TB;
reg [1:0]y;
wire [3:0]d;

DECODER code(y,d);
initial begin
$monitor("y=%b; d=%b;", y,d);
y= 2'b00; #1;
y= 2'b01;#1;
y= 2'b10; #1;
y= 2'b11;#1;
$finish;
end
endmodule
