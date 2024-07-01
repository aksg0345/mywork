`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 10:08:03
// Design Name: 
// Module Name: DFLIPFLOP_ASY
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


module DFLIPFLOP_ASY(input clk, input d,input reset,output reg q );

always@(posedge clk or posedge  reset) begin
if(reset)begin
   q<=1'b0;
end else begin
   q<=d;
   end 
end
endmodule
