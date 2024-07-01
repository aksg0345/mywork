`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 11:03:16
// Design Name: 
// Module Name: DFLIPFLOP_SYC
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


module DFLIPFLOP_SYC(input clk, input d,input reset,output reg q);
always@(posedge clk) begin
if(reset)begin
   q<=1'b0;
end else begin
   q<=d;
   end 
end
endmodule

