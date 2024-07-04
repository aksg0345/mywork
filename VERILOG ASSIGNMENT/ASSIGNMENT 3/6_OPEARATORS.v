6. Which block executes in the below snippet and justify the
reason:
reg [3:0]a= 4'b110x;
initial
begin
if (a== 4'b1100)
begin: B1
end
else
begin: B2
end
6
end


// answer: b2 will executes, b1 will fail because a has an unkown value ;
