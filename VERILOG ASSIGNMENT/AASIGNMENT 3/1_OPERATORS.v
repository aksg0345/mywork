1.
What is the value of y in the below snippet?
reg [2:0] a, b;
reg y,
initial
begin
a= 3'd5;
b=3,b111
y = a&&b;
end


// answer y is 1 ;
// logical && 1,1 = 1;
