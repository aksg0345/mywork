`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 11:44:37
// Design Name: 
// Module Name: UNIVERSAL_SHIFT_TB
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


module UNIVERSAL_SHIFT_TB;
reg clk,reset;
reg [1:0] mode;
reg  [3:0] parallel_in;
reg  serial_right;
reg  serial_left;
wire [3:0] parallel_out;


UNIVERSAL_SHIFT shiftregister(clk,reset,mode,parallel_in,serial_right,serial_left, parallel_out);


initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("$time=%t; clk=%b; reset=%b; mode=%b; parallel_in=%b; serial_right=%b; serial_left=%b; parallel_out=%b;", $time,clk,reset, mode,parallel_in,serial_right,serial_left,parallel_out);

#10 reset=1;
mode=2'b00;
parallel_in=4'b000;
serial_right=0;
serial_left=0;


#10 reset=0;

 #10 mode=2'b11;  parallel_in=4'b1010;//parallel_out
#10  mode=2'b00; //hold 


#10 mode=2'b01; serial_right=1; 
#10 mode=2'b01; serial_right=0;

#10 mode=2'b10; serial_left=1;
#10 mode=2'b10; serial_left=0;

#10 mode=2'b00;

#100 $finish;
end
endmodule
