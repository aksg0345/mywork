`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 18:57:47
// Design Name: 
// Module Name: ENCODER_PRIO
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


module ENCODER_PRIO(input [3:0] d, output reg [1:0] y );

always@(d)begin
casex (d)
4'b1xxx: y=2'b11;
4'b01xx: y=2'b10;
4'b001x: y=2'b01;
4'b0001: y=2'b00;
default: y=2'bxx;
endcase
end
endmodule
