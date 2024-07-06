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

/ ANSWER: At t=0, the always block is triggered.
At t=10, a is set to 0.
At t=11, b is set to 1.
Immediately after, a is set to 1.
At t=16, b is set to the value of a (which is 1).



2. reg a, b;
always @(a, b) begin
    #10 a = 1'b0;
    #1 b = 1'b1;
    a = 1;
    #5 b = a;
    $display($time, " a=%d, b=%d", a, b);
end


/ ANSWER: At t=0, the always block is triggered.
At t=10, a is set to 0.
At t=11, b is set to 1.
Immediately after, a is set to 1.
At t=16, b is set to the value of a (which is 1).




 3.reg a, b;
initial begin
    a = 1;
    b = a;
    $display($time, " a=%d, b=%d", a, b);
end

initial begin
    #1 a = 1;
    b = a;
    $display($time, " a=%d, b=%d", a, b);
end


/ ANSWER:
In the first initial block, a is set to 1 and then b is set to a.
The $display statement prints a=1, b=1.
In the second initial block, after 1 time unit, a is set to 1 again and b is set to a.
The second $display statement prints a=1, b=1.
So, the output will be two lines showing a=1, b=1.
