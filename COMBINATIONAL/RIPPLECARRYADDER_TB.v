`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 17:47:00
// Design Name: 
// Module Name: RIPPLECARRYADDER_TB
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


module RIPPLECARRYADDER_TB;
reg [3:0]a,b;
reg cin;
wire [3:0]sum,cout;

carryadder rpl(a,b,cin,sum,cout);

initial begin
$monitor("a=%b; b=%b; cin=%b; sum=%b;  cout=%b", a,b,cin,sum,cout);
a=2; b=5; cin=0; #2;
a=5; b=8; cin=1; #2;
a=3; b=4; cin=0; #2;
a=6; b=3; cin=1; #2;
$finish;
end
endmodule
