6. Write RTL code for designing an 8:1 mux using a for loop.

  // answer:
  module mux_8to1 (
    input [7:0] in,    
    input [2:0] sel,   
    output reg out     
);

    integer i;

    always @(*) begin
        out = 0;    
        for (i = 0; i < 8; i = i + 1) begin
            if (sel == i) begin
                out = in[i];
            end
        end
    end
endmodule
