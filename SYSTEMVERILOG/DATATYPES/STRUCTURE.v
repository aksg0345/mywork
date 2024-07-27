typedef struct packed{
    bit[15:0] salary;
    byte id; 
}employee_s; //structure name

module struct1;
  
initial begin 
 //Iinitialization of values to structure variables
  
 employee_s emp1,emp2;
   
  emp1 = '{ 16897,123};
  emp2 = '{ 16335,321};
  
  $display("\n Unpacked structure example" );
  $display("\n structure name 'employee_s'");
  $display("\n employee_s=%p " ,emp1); //Display the values.
  $display("\n employee_s = %p" ,emp2); 
  
   $display("\n size of employee_s: %0d", $bits(emp1));
   $display("\n size of employee_s: %0d", $bits(emp2));
end  
endmodule
