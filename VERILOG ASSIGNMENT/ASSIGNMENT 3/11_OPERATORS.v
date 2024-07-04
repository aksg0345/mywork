module ALU (
    input [3:0] a, b,
    input [2:0] sel,
    output reg [3:0] out
);
    always @(*) begin
        case (sel)
            3'b000: out = a + b;        // Addition
            3'b001: out = a - b;        // Subtraction
            3'b010: out = a / b;        // Division
            3'b011: out = a && b;       // Logical AND
            3'b100: out = a & b;        // Bitwise AND
            3'b101: out = a | b;        // Bitwise OR
            3'b110: out = ~(a & b);     // Bitwise NAND
            3'b111: out = ~(a ^ b);     // Bitwise XNOR
            default: out = 4'b0000;     // Default case
        endcase
    end
endmodule
