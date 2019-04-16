`timescale 1ns/100ps
module one_bit_comp(input A,B,output reg EQ);

always@(A,B) begin
if (A==B)
EQ=1;
else
EQ=0;

end

endmodule


module tb_1_bit_comp();
reg A,B;
wire EQ;
one_bit_comp test_1bit(A,B,EQ);

initial begin
A=0;B=0;
#250; A=1;B=0;
#250; A=0;B=1;
#250; A=1;B=1;

end

endmodule
