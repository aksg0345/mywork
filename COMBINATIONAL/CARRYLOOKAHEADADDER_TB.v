`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 09:53:52
// Design Name: 
// Module Name: CARRYLOOKAHEADADDER_TB
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


module CARRYLOOKAHEADADDER_TB;
reg [3:0] a,b;
reg cin;
wire [3:0] sum,cout;

CARRYLOOKAHEADADDER cra(a,b,cin,sum,cout);

initial begin
$monitor("a=%b; b=%b; cin=%b;  sum=%b; cout=%b;", a,b,cin,sum,cout);
a=2; b=5; cin=1; #3;
a=7; b=8; cin=0; #3;
a=4; b= 6; cin=1; #3;
a=4'hb; b=4'h6; cin=0;
end
endmodule
