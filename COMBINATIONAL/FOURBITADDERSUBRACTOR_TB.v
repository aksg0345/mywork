`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 11:33:59
// Design Name: 
// Module Name: FOURBITADDERSUBRACTOR_TB
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


module FOURBITADDERSUBRACTOR_TB;
reg [3:0]a,b;
reg ctrl;
wire [3:0] sum,cout;

ripplecarryaddsub rpl(a,b,ctrl,sum,cout);
initial begin
$monitor("ctrl=%b; a=%b; b=%b,  sum=%b", ctrl, a, b,sum);
ctrl =0;
a=1; b=0;
a=2; b=0;#3;
a=4'hb; b=4'h6;#3;
a=5; b=3;#3;

ctrl=1;
a=1; b=0;
a=2; b=0;#3;
a=4'hb; b=4'h6;#3;
a=5; b=3;#3;
 $finish;#3;
 end
 endmodule
