`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 16:40:27
// Design Name: 
// Module Name: PAIN_PAOUT_TB
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


module PAIN_PAOUT_TB0;

reg clk,load;
reg [3:0]parallel_in;
wire [3:0]parallel_out;


PAINP_PAOUT  paralleloutparallelout (clk,load,parallel_in,parallel_out);


initial begin
clk=0;
forever #5 clk=~clk;
end


initial begin
$monitor ("clk=%b, load=%b, parallel_in=%b, parallel_out=%b", clk,load,parallel_in, parallel_out);

load=0;
parallel_in=4'b1011;
#10 load=1;
#10 load=0;

#40 $finish;
end
endmodule
