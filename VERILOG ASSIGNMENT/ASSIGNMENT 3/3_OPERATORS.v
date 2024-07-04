3.what is the value of x in the below snippet?
reg [2:0]a;
reg [2:0]x;
initial
begin
x=^a;
a=3'd4;
end


// answwer: value of x is unkown or 1; 
