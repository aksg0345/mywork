module half_subtractor(
    input a, 
    input b,
    output diff, 
    output borrow
);
    assign diff = a ^ b;
    assign borrow = ~a & b;

module full_subtractor(
    input a, 
    input b, 
    input bin,
    output diff, 
    output bout
);
    wire d1, b1, b2;

    half_subtractor hs1(.a(a), .b(b), .diff(d1), .borrow(b1));
    half_subtractor hs2(.a(d1), .b(bin), .diff(diff), .borrow(b2));

    assign bout = b1 | b2;
endmodule
