//4bit ripple carry simple

module RCA(C,S,A,B);
input [3:0] A,B;
output [3:0] S;
output C;
reg C0=1'b0;
wire C1,C2,C3,C4;
full_adder FA1(C1,S[0],A[0],B[0],C0);
full_adder FA2(C2,S[1],A[1],B[1],C1);
full_adder FA3(C3,S[2],A[2],B[2],C2);
full_adder FA4(C,S[3],A[3],B[3],C3);

endmodule



