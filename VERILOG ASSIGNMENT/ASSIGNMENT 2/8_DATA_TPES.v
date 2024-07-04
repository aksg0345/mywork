What will be displayed in the console mode for the below snippet?
reg[13+8:1]s;
initial
begin
s= "hello world";
$display(" Value = %s",s[104:65);
end

                         // value : hello world

                         
