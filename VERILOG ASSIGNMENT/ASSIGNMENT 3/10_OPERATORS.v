10.what is the value of b in the below expression and justify the
reason.
reg [3:0]a= 4'%0100;
reg [3:0]b;
initial
begin
b=a+1'bx;
end

// answer:  value of b is 4'bxxxx 
// the add operation invloves an unknown (x) value. 
