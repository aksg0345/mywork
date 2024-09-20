`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 09:31:39
// Design Name: 
// Module Name: PAINP_SEROUP_TB
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


module PAINP_SEROUP_TB;

reg clk,load;
reg [3:0]parallel_in;
wire serial_out;


PAINP_SEROUP parallelinserialop(clk,load,parallel_in,serial_out);


initial begin
 clk=0;
 forever #5 clk=~clk;
 end
 
 
 initial begin
 $monitor("clk=%b, load=%b, parallel_in=%b,serial_out=%b", clk,load,parallel_in,serial_out);
 
 

 parallel_in=4'b1011;
#10 load=1;
#10 load=0;
 
#40 $finish;
end
endmodule


