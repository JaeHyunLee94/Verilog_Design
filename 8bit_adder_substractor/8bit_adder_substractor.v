`timescale 1ns/100ps
//기본적으로 포트는 말이 없으면  wire 선언됌!!!!

module or2(input wire x,y,output wire z);
assign z=x|y;
endmodule

module xor2(input wire x,y,output wire z);
assign z=x^y;
endmodule

//half adder implement
module half_adder(input wire x,y, output wire c1,s);

assign c1=x&y;
assign s=x^y;

endmodule
// full adder implement
module full_adder(input wire x,y,z,output wire c1,s);

wire tmpC,tmpS,tmpC2;
half_adder h1(x,y,tmpC,tmpS);
half_adder h2(z,tmpS,tmpC2,s);
or2 orins(tmpC2,tmpC,c1);


endmodule
//8bit ripple carry add and subtractor (M=0이면 + M=1 이면 -)
module _8bit_adder_substractor(input wire[7:0] A,B,input wire M,output wire[7:0] S,output wire Clast,V);
wire B_after[7:0];
wire Ci[7:0];
assign Ci[0]=M;


xor2 xor_0(M,B[0],B_after[0]);
xor2 xor_1(M,B[1],B_after[1]);
xor2 xor_2(M,B[2],B_after[2]);
xor2 xor_3(M,B[3],B_after[3]);
xor2 xor_4(M,B[4],B_after[4]);
xor2 xor_5(M,B[5],B_after[5]);
xor2 xor_6(M,B[6],B_after[6]);
xor2 xor_7(M,B[7],B_after[7]);

full_adder fa0(A[0],B_after[0],Ci[0],Ci[1],S[0]);
full_adder fa1(A[1],B_after[1],Ci[1],Ci[2],S[1]);
full_adder fa2(A[2],B_after[2],Ci[2],Ci[3],S[2]);
full_adder fa3(A[3],B_after[3],Ci[3],Ci[4],S[3]);
full_adder fa4(A[4],B_after[4],Ci[4],Ci[5],S[4]);
full_adder fa5(A[5],B_after[5],Ci[5],Ci[6],S[5]);
full_adder fa6(A[6],B_after[6],Ci[6],Ci[7],S[6]);
full_adder fa7(A[7],B_after[7],Ci[7],Clast,S[7]);

xor2 xor_V(Ci[7],Clast,V);

endmodule
//test_bench

module test_8bit;
reg [7:0] A,B;
reg M;
wire [7:0] SUM;
wire Clast,V;

_8bit_adder_substractor testing(A,B,M,SUM,Clast,V);

initial begin
M=0;  A=8'b00000000; B=8'b00000000;
#250; A=8'b00000000; B=8'b00000000;
#250; A=8'b00111000; B=8'b01000000;
#250; A=8'b00000000; B=8'b00000000;
#250; A=8'b11110000; B=8'b00100001;
#250; A=8'b11110010; B=8'b00100011;
#250; M=1; A=8'b00000000; B=8'b00011100;
#250; A=8'b10000000; B=8'b11100000;
#250; A=8'b00111000; B=8'b01000001;
#250; A=8'b00000000; B=8'b01111100;
#250; A=8'b00001110; B=8'b11111000;
#250; A=8'b10000000; B=8'b01111000;
end

endmodule










