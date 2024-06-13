`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 11:41:59
// Design Name: 
// Module Name: BITWISEOPERATOR
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


module BITWISEOPERATOR;
reg[3:0] i1,i2;
initial begin
i1=4'h9; i2=4'h6;

$display("operator: i1=%h and i2=%h",i1,i2);
$display("operator: (&):", i1&i2);
$display("operator: (|):", i1|i2);
$display("operator: (~):", ~i2);
$display("operator: (^):", i1^i2);
$display("operator: (~^):", i1~^i2);

end
endmodule
