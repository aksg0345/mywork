`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 12:33:39
// Design Name: 
// Module Name: SHIFTOPERATOR
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


module SHIFTOPERATOR;
reg signed [7:0]i1,i2;


initial begin

i1=8'b1111_0000;

$display("LOGICALSHIFT i1=%b", i1);
$display("i1>>>3 i1=%b", i1>>>3);

i2=8'b0011_0101;

$display("LOGICALSHIFT i2=%b", i2);
$display("i2<<<3 i2=%b", i2<<<3);

end
endmodule
