`timescale 1ns/100ps
module m2x4_decoder_enable(D,A,B,E);

input wire A,B,E;
output reg [3:0] D;

always@ (A,B,E) begin

    if(E==1)begin
        D<=4'b1111;
    end

    else begin
        if(B==0&&A==0) D<=4'b0111;
        else if(B==1&&A==0) D<=4'b1011;
        else if(B==0&&A==1) D<=4'b1101;
        else D<=4'b1110;
    end
end

endmodule

module tb_m2x4_decoder_enable();

    reg A,B,E;
    wire [3:0] D;

    m2x4_decoder_enable test_2x4dec(D,A,B,E);

    initial begin

        A=0; B=0; E=0;
        #250 A=1; B=0; E=0;
        #250 A=0; B=1; E=0;
        #250 A=1; B=1; E=0;
        #250 A=1; B=0; E=1;
        #250 A=1; B=1; E=1;
        #250 A=0; B=1; E=1;

    end

endmodule





