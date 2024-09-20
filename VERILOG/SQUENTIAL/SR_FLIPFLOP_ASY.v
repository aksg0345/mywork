`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 21:43:13
// Design Name: 
// Module Name: SR_FLIPFLOP_ASY
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


module SR_FLIPFLOP_ASY( input clk,input reset,input s,input r,output reg q );

always@(posedge clk or posedge reset)begin
if(reset)begin
  q <=1'b0;
 end else begin
 case({s,r})
    2'b00: q <= 1'b0; 
    2'b01: q<= 1'b0;
    2'b10: q<= 1'b1;
    2'b11: q<= 1'bx;
    endcase
    end
 end    
 endmodule
