`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 22:37:24
// Design Name: 
// Module Name: DECODER
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


module DECODER(input [1:0] y,output reg [3:0]d );

always@(*)begin
case (y)
2'b00: d=4'b0001;
2'b01: d=4'b0010;
2'b10: d=4'b0100;
2'b11: d=4'b1000;
default : d=4'b0000;
endcase
end
endmodule
