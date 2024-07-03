module demux1_4(
    input in,
    input [1:0] sel,
    output [3:0] out
);
    assign out = (in) ? (1 << sel) : 0;
endmodule
