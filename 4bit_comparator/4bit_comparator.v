`timescale 1ns/100ps

module four_bit_comparator(A,B,EQ,AGB,ALB);
input wire [3:0] A,B;
output reg EQ,AGB,ALB;

always@(A,B) begin

 if(A==B) begin
 EQ<=1;
 AGB<=0;
 ALB<=0;

 end

 else if(A>B) begin
 EQ<=0;
 AGB<=1;
 ALB<=0;

 end

 else begin
 EQ<=0;
 AGB<=0;
 ALB<=1;

 end

 end

endmodule

module tb_4bit_comparator();
reg [3:0] A,B;
wire EQ,AGB,ALB;

four_bit_comparator test_fourbit_comp(A,B,EQ,AGB,ALB);

initial begin

A=4'b0000; B=4'b0000;
#250 A=4'b0001; B=4'b1000;
#250 A=4'b0110; B=4'b1000;
#250 A=4'b1011; B=4'b1010;
#250 A=4'b0110; B=4'b1010;
#250 A=4'b0100; B=4'b1110;

end

endmodule


 

