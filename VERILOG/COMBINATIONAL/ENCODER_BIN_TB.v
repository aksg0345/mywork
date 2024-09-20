`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 18:11:48
// Design Name: 
// Module Name: ENCODER_BIN_TB
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


module ENCODER_BIN_TB;
reg [7:0] D;
wire [2:0] y;
reg [7:0] i;

ENODER_BIN be(D,y);
initial begin

D=8'b1;#1;
for(i=0; i<8; i=i+1)begin
$display("D=%h(in dec:%0d); y=%0h;", D,y,i);
D=D<<1;#1;
end
end
endmodule
