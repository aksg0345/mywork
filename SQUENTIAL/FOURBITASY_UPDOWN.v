`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 20:33:32
// Design Name: 
// Module Name: FOURBITASY_UPDOWN
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


module FOURBITASY_UPDOWN (input clk,rst,up_down,output reg [3:0] count);
  always@(posedge clk or posedge rst)begin
  if(rst)
    count <= 4'b0000;
  else
    if(up_down)
     count <= count+1;
    else
      count <= count-1;
  end
endmodule
