`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 16:11:50
// Design Name: 
// Module Name: SIFO_SHIFT
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


module SIFO_SHIFT(x,clk,y,rst);
input x,clk,rst;
reg [3:0]a;
output wire [3:0]y;
always@(posedge clk)begin
if(rst)begin
a<=4'b0000;
end
else begin 
a[0]<=a[1];
a[1]<=a[2];
a[2]<=a[3];
a[3]<=x;
end
end 
assign y=a;
endmodule
