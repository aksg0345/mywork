2.What is the value of x in the below snippet?
reg [2:0] a, b;
reg [2:0]x;
initial
begin
a=3'd5;
b=3b111;
x=alb;
end


// asnwer: x=1;
// or a|b => 101 | 111 = 111; 
