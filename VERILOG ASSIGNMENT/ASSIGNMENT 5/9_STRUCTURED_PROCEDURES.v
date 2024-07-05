9. Write RTL code for designing a D latch using a 2:1 mux.

  / answer:
  module D_latch (
    input D,
    input enable,
    output reg Q
);
    always @(*) begin
        if (enable)
            Q = D;
         // If enable is low, Q retains its value
        else 
          q=0;
    end
endmodule
