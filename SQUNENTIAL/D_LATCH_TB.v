`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2024 13:03:54
// Design Name: 
// Module Name: D_LATCH_TB
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


module D_LATCH_TB;
reg enb,d;
wire q;

D_LATCH lat(enb,d,q);

initial begin
$monitor("time=%t; enb=%b; d=%b; q=%b;",$time,enb,d,q);

enb=1; d=1;
#10 enb=0; d=0;
#10 enb=0; d=1;
#10 enb=1; d=0;
#10 enb=1; d=1;
$finish;
end
endmodule
