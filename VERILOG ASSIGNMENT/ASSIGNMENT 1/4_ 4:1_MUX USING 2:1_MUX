module mux4_1(
    input [3:0] d, 
    input [1:0] sel,
    output y
);
    wire mux1_out, mux2_out;

    mux2_1 mux1(.a(d[0]), .b(d[1]), .sel(sel[0]), .y(mux1_out));
    mux2_1 mux2(.a(d[2]), .b(d[3]), .sel(sel[0]), .y(mux2_out));
    mux2_1 mux3(.a(mux1_out), .b(mux2_out), .sel(sel[1]), .y(y));
endmodule
