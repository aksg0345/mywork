class static_array;  
     randc byte unsigned  a[7];  
       endclass  

       module stat_array;  
       static_array stat_arr;
         
       initial begin  
       stat_arr = new();  
         
       void '(stat_arr.randomize ());  
       $display ("After randomize the elements of array 'a'");  
         $display ("Output =  %0p ",stat_arr.a);   
       end 
         
 endmodule

---------------------------------------------------------------------------

OUTPUT:

# KERNEL: After randomize the elements of array 'a'
# KERNEL: Output =  236 81 155 16 203 78 95 
