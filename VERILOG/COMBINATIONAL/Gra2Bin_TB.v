`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 17:40:35
// Design Name: 
// Module Name: Gra2Bin_TB
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


module Gra2Bin_TB;
reg [3:0] gray;
wire [3:0] binary;

Gra2Bin g2b (gray,binary);

initial begin

$monitor("gray=%b, binary=%b",gray,binary);
gray = 4'b0010; #10;
gray = 4'b0011; #10;
gray = 4'b0100; #10;
gray = 4'b0101; #10;
end
endmodule
