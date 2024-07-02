module glitch_free_clock_mux (
    input clk_62_5mhz,
    input clk_250mhz,
    input [1:0] rate,
    output reg clk_out
);
    always @(*) begin
        case (rate)
            2'b00: clk_out = clk_62_5mhz;
            2'b10: clk_out = clk_250mhz;
            default: clk_out = clk_62_5mhz; // Default to 62.5MHz
        endcase
    end
endmodule
