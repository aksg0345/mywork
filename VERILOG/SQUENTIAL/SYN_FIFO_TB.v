`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 09:29:28
// Design Name: 
// Module Name: SYN_FIFO_TB
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


module SYN_FIFO_TB;

reg clk;
reg rst;
reg wr_en;
reg rd_en;
reg [7:0] data_in;
wire [7:0] data_out;
wire full;
wire empty;

SYN_FIFO uut (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

initial begin
clk=0;
forever #5 clk=~clk;
end


initial begin
   // clk = 0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 8'b00000000;

    // Reset
    #10;
    rst = 0;
    #10;
    rst = 0;

    // Write data to FIFO
    wr_en = 1;
    rd_en=0;
    #10;
     wr_en = 1;
    rd_en=0;
    data_in = 8'b00000001;
    #10;
     wr_en = 1;
    rd_en=1;
    data_in = 8'b00000010;
    #10;
     wr_en = 1;
    rd_en=0;
    data_in = 8'b00000011;
    #10;
     wr_en = 1;
    rd_en=0;
    data_in=8'b00000100;
    #10;
    rd_en=1;
     wr_en=0;
    data_in=8'b00000101;
    #10;
    rd_en=1;
     wr_en=0;
      data_in=8'b00000110;
    #10;
    rd_en=1;
     wr_en=0;
      data_in=8'b10010001;
    #10;
    rd_en=1;
     wr_en=0;
      data_in=8'b10010001;
    #10;
    rd_en=1;
     wr_en=0;
      data_in=8'b10010001;
    #10;
    rd_en=1;
     wr_en=0;
 

 /*   // Read data from FIFO
     rd_en = 1;
    #10;
     rd_en = 0;
    #10;
      rd_en = 1;
    #10;
    rd_en = 0;
    #10;
    rd_en = 0;
    #10;
*/
    // Finish simulation
  #500  $finish;
end



endmodule
