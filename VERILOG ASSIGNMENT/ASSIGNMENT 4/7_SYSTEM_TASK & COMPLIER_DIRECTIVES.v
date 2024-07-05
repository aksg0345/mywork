Write RTL code for designing a JK Flip-flop and use the following input states as `define macro: SET, RESET, TOGGLE, HOLD.


  / answer
`define SET 2'b10
`define RESET 2'b01
`define TOGGLE 2'b11
`define HOLD 2'b00

module jk_flip_flop (
    input clk,
    input j, k,
    output reg q
);
    always @(posedge clk) begin
        case ({j, k})
            `SET: q <= 1;
            `RESET: q <= 0;
            `TOGGLE: q <= ~q;
            `HOLD: q <= q;
        endcase
    end
endmodule
