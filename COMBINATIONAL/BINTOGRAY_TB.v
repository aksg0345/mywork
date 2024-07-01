`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 17:01:35
// Design Name: 
// Module Name: BINTOGRAY_TB
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


module BINTOGRAY_TB;
reg [3:0]binar;
wire [3:0] gra;

BINTOGRAY b2g(binar,gra);

initial begin
$monitor("binary=%b, gray=%b", binar,gra);

binar = 4'b1011;
binar = 4'b0111;#1;
binar= 4'b0101;#1;
binar = 4'b1100;#1;
binar = 4'b1111;#1;

$finish;
end
endmodule
