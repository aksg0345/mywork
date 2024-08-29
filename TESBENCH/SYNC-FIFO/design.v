module SYN_FIFO  (
    input wire clk,         // Clock input
    input wire rst,         // Reset input
    input wire wr_en,       // Write enable input
    input wire rd_en,       // Read enable input
    input wire [7:0] data_in,  // Data input
    output reg [7:0] data_out, // Data output
    output reg full,            // Full flag
    output reg empty            // Empty flag
);

parameter DEPTH = 8; // Depth of the FIFO

reg [7:0] fifo [0:DEPTH-1];
reg [2:0] wr_ptr = 0;  // Write pointer
reg [2:0] rd_ptr = 0;  // Read pointer
reg [2:0] count = 0;   // Counter for number of elements in FIFO

// Write process
always @(posedge clk or posedge rst) begin
    if (rst) begin
        wr_ptr <= 0;
        full <= 0;
    end else if (wr_en && !full) begin
        fifo[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
        count <= count + 1;
        full <= (count == DEPTH);
    end
end

// Read process
always @(posedge clk or posedge rst) begin
    if (rst) begin
        rd_ptr <= 0;
        empty <= 0;
    end else if (rd_en && !empty) begin
        data_out <= fifo[rd_ptr];
        rd_ptr <= rd_ptr + 1;
        count <= count - 1;
        empty <= (count == 1);
    end
end





endmodule
