`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 11:04:34
// Design Name: 
// Module Name: T_FLIPFLOP_ASY
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


module T_FLIPFLOP_ASY(input clk, input reset,input t, output reg q );

always@(posedge clk or posedge reset)begin
if(reset)
    q <=1'b0;
 else if(t==1)
    q <= ~q;
end
endmodule



