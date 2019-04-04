`timescale 1ns/100ps

module test();
wire[4:0] s;
reg [3:0] x,y;

full_adder_carno my(s,x,y);

initial begin

x=4'b1000; y=4'b0010;
#250; x=4'b1110; y=4'b0101;
#250 x=4'b0111; y=4'b1001;
#250 x=4'b1111; y=4'b1111;



end

endmodule
