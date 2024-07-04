4.Evaluate the value of x in the below snippet.

reg [3:0]a;
reg [1:0x;
initial
begin
a = 4d10;
X= (a>>1);
end


     // answer: x is 5;  4 bit 1010 right shift 1 time so x=0101  is 5.
