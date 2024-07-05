2.How many DFFs will be inferred from the below snippet:

input c, din;
output reg y3;
reg y1, y2;

always@(posedge c) begin
    y1 <= din;
    y2 <= y1;
    y3 <= y2;
end


// answer is 3 d flipflop is used
