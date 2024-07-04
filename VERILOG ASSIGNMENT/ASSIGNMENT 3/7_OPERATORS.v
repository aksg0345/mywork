7.which block executes in the below snippet and justify the
reason.
reg [3:0]a= 4'b110x;
initial
begin
if(a!== 4'b1100)
begin:B1
end
else
begin: B2
end
end

// answer b1 will excutes ;
