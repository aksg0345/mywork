`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 19:04:41
// Design Name: 
// Module Name: ENCODER_PRIO_TB
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


module ENCODER_PRIO_TB;
reg [3:0]d;
wire [1:0]y;

ENCODER_PRIO priority(d,y);

initial begin

$monitor("d=%b; y=%b", d,y);
d=4'b0000;#1;
d=4'b0001;#1;
d=4'b0010;#1;
d=4'b0011;#1;
$finish;
end
endmodule
