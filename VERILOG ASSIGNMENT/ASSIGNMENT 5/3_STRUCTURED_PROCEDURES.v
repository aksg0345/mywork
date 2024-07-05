3.Write RTL code to design a 3-bit SISO right shift register using only a Non-blocking assignment. (Do not use any operators).



module SISO(
    input clk,
    input rst,
    input din,
    output reg dout
);
    reg [2:0] shift_reg;

    always @(posedge clk or posedge rst) begin
        if (rst)
            shift_reg <= 3'b0;
        else begin
            shift_reg[2] <= din;
            shift_reg[1] <= shift_reg[2];
            shift_reg[0] <= shift_reg[1];
            dout = shift_reg[0];
        end
    end

endmodule
