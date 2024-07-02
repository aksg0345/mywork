module neg_edge_dff (
    input clk,
    input reset_n, // Active low reset
    input d,
    output reg q
);
    always @(negedge clk or negedge reset_n) begin
        if (!reset_n)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule
