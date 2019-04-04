`timescale 1ns/100ps
module tb_half_adder;
reg x,y;
wire c1,s;

half_adder t1(c1,s,x,y);

initial
begin
x=0;y=0;
#250; x=0;y=1;
#250; x=1;y=0;
#250 x=1;y=1;
end

endmodule
