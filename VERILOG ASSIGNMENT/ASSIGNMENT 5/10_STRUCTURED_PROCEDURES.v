10.Find the output for the below codes:

1.code:
reg a, b;
always @(a, b) begin
    #10 a <= 1'b0;
    #1 b <= 1'b1;
    a <= 1;
    #5 b <= a;
    $display($time, " a=%d, b=%d", a, b);
end

/ ANSWER: 
