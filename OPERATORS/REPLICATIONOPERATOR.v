`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 14:21:57
// Design Name: 
// Module Name: REPLICATIONOPERATOR
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


module REPLICATIONOPERATOR;
initial begin
$display("{5{5'b10010}} =%b", {5{5'b10010}});
$display("{5{5'b10010,1'bz}} =%b", {5{5'b10010,1'bz}});
end
endmodule
