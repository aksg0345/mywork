interface object;
  
  logic clk;
  logic rst;
  logic wr_en;
  logic rd_en;
  logic [7:0] data_in;
  logic [7:0] data_out;
  bit full;
  bit empty;
  
endinterface
