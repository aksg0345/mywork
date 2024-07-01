`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 11:29:43
// Design Name: 
// Module Name: RELATIONALOPERATOR
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


module RELATIONALOPERATOR;
reg[3:0] i1,i2;
initial begin
i1=4'h5; i2=4'h7;

$display("OPERATOR: i1=%0h and i2=%0h", i1,i2);
$display("OPERATOR: (>)", i1>i2);
$display("OPERATOR: (<)", i1<i2);

i1=6; i2=9;
$display("OPERATOR: (>=)", i1>i2);
$display("OPERATOR: (<=)", i1<i2);

end
endmodule
