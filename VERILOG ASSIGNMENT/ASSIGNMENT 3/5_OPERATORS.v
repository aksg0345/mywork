5.Find the value of b in the below snippet

reg [3:0]a;
reg [6:0]b;
initial
begin
a=4'd10;
  b={a,1'b1};
end

// answer: value of b is 7'b10101 
// a=4'b1010 and 1'b1 , then 7'b10101;
