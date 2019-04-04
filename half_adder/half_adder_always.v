//half adder using always statement

module al_halfadd(c1,s,x,y);
input x,y;
output c1,s;
reg c1,s;

always@(x,y) begin


	s<=x+y;

	if(x&y) begin

	c1<=1;

	end

	else begin

	c1<=0;

	end

end


endmodule

