`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 23:43:54
// Design Name: 
// Module Name: JK_FLIPFLOP_SYC
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


module JK_FLIPFLOP_SYC(input clk,input reset,input j,input k, output reg q  );

always@(posedge clk)begin

if(reset)begin
 q<= 1'b0;
 end else begin
 case({j,k})
    2'b00: q<=1'b0;
    2'b01: q<=1'b0;
    2'b10: q<=1'b1;
    2'b11: q<= ~q;
    endcase
 end
 end
endmodule
