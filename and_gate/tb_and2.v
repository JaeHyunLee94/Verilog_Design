//test_bench: and2
`timescale 1ns/100ps
module tb_and2();
reg x,y;
wire s;

and2 u0(.x(x),.y(y),.s(s));

initial
begin
x=0; y=0;
#250; x=0; y=1;
#250; x=1; y=0;
#250; x=1; y=1;

end


endmodule
