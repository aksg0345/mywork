What is the value of b displayed on the console output? Justify the
same.
reg[1:0]b;
initial
begin
$strobe(Stime,"b=%d",b);
b=2'd3;
b=2'dx;
#1O0:
b- 2d2;
end

/ answer: at initialy DELAY #0 is [unknown b is x];
/ at delay #10 [b is 3, then b becomes  is x unknown ];
/ b=x;
