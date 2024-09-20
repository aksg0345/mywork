`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 18:49:38
// Design Name: 
// Module Name: T_FLIPFLOP_SYC
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


module T_FLIPFLOP_SYC(input clk, input t,output reg q);

always@(posedge clk)begin
if(t==0)
q<=1'b0;
else  
q<=~q;
end
endmodule
