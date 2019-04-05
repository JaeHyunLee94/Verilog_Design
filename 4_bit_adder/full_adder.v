//full adder using always

module full_adder(cout,s,x,y,z);

input x,y,z;
output cout,s;
reg cout,s;
wire c1,temp_sum;
//cannot assign at reg
assign c1=x&y;
assign temp_sum=x^y;


always@(x,y,c1,z) begin


 if(c1) begin

 cout<=c1;
 s<=z;
 end

 else begin
 
 cout<=z&temp_sum;
 s<=z^temp_sum;

 end

end

endmodule
