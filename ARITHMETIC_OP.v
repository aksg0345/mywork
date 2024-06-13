`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 12:56:38
// Design Name: 
// Module Name: ARITHMETIC_OP
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


module ARITHMETIC_OP;

reg [3:0] i1,i2;
initial begin
i1= 4'h6;
i2= 4'h8;
$display("i1=%0h and i2=%0h",i1,i2);
$display("ADD=%0h",i1+i2);
$display("SUB=%0h",i1-i2);
$display("MULT=%0h",i1*i2);
$display("DIV=%0h",i1/i2);
$display("pow=%0h",i1**i2);
$display("mod=%0h",i1%i2);
end
endmodule
