`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 12:05:34
// Design Name: 
// Module Name: CONDITIONALOPERATOR
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


module CONDITIONALOPERATOR;
reg[3:0] i1,i2;
reg[3:0] result;
initial begin
i1=4'h9; i2=4'h2;

$display("operator: i1=%0h, i2=%0h",i1,i2);
result=(i1>i2)? 1:0;
$display("result=%0h",result);
end
endmodule
