`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 10:54:39
// Design Name: 
// Module Name: LOGICALOPERATOR
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


module LOGICALOPERATOR;
reg[3:0] i1,i2;
initial begin
i1=4'h6;
i2=4'h9;

$display("i1=%0h and i2=%0h", i1,i2);
$display("FOR OPERATOR-&&:", i1&&i2);
$display("FOR OPERATOR-||:", i1||i2);
$display("FOR OPERATOR-!:", !i2);

i1=4'b1x0z; i2=4'b0x1x;
$display("FOR OPERATOR-||:", i1||i2);
end

endmodule
