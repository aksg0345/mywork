module mux2_1(
    input a, 
    input b, 
    input sel,
    output y
);
    wire not_sel, and1, and2;

    not (not_sel, sel);
    and (and1, a, not_sel);
    and (and2, b, sel);
    or (y, and1, and2);
endmodule
