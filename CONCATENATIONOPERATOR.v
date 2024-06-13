`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 14:02:59
// Design Name: 
// Module Name: CONCATENATIONOPERATOR
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


module CONCATENATIONOPERATOR;
reg[1:0]i1,i2; 
reg[4:0]i3;
reg[7:0]out;

initial begin
i1=2'h2; i2=4'ha; i3=4'h5;
$display("out=%b",{i3,i2,i1});
end
endmodule
