`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 13:41:55
// Design Name: 
// Module Name: REDUCTIONOPERATOR
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


module REDUCTIONOPERATOR;
reg[3:0] i1,i2;
initial begin
i1=4'h8;
$display("operator(&): i1=%b:",i1,&i1);
$display("operator(|): i1=%b:",i1,|i1);
$display("operator(&): i1=%b:",i1,^i1);

i2=4'bb1x0z;
$display("operator(&): i2=%b:",i2,&i2);
$display("operator(|): i2=%b:",i2,|i2);
end
endmodule
