`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 11:10:14
// Design Name: 
// Module Name: EQUALITYOPERATOR
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


module EQUALITYOPERATOR;
reg[3:0] i1,i2;
initial begin
i1=4'h8;
i2=4'h9;

$display("FOR OPERATOR: i1=%0h and i2=%0h",i1,i2);
$display("FOR OPERATOR:(==):", i1==i2);
$display("FOR OPERATOR:(!=):", i1!=i2);

i1=4'b1x0z; i2=4'b1z0x;
$display("FOR OPERATOR: i1=%0h and i2=%0h",i1,i2);
$display("FOR OPERATOR:(===):", i1===i2);
$display("FOR OPERATOR:(!==):", i1!==i2);

end
endmodule
