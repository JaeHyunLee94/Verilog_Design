`timescale 1ns/100ps
module tb_4bit_RCA();
reg [3:0] A,B;
wire [3:0] S;
wire C;


RCA test_RCA(C,S,A,B);


initial begin

A=4'b0000; B=4'b0000;
#250 A=4'b0001; B=4'b0011;
#250 A=4'b0101; B=4'b0011;
#250 A=4'b0001; B=4'b1011;
#250 A=4'b1101; B=4'b0001;
#250 A=4'b0111; B=4'b1011;
#250 A=4'b1111; B=4'b1111;

end


endmodule // 