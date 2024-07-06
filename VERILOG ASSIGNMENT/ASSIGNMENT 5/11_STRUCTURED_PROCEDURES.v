11. For the below RTL schematic write the RTL snippet:

module DFLIP (
    input x1, x2, x3, clock,
    output g, f
);
    reg  q1, q1_bar, q2, q2_bar;
    
    // D flip-flop instantiation for the first flip-flop
    always @(posedge clock) begin
        q1 <= x1 & x2;
        q1_bar <= ~(x1 & x2);
    end

    // D flip-flop instantiation for the second flip-flop
    always @(posedge clock) begin
        q2 <= q1 | x3;
        q2_bar <= ~(q1 | x3);
    end

    assign g = q2;
    assign f = q1;


endmodule
