`timescale 1ns/100ps
module tb_m4x2_pEncoder();

    reg [3:0] D;
    wire x,y,v;

    m4x2_pEncoder tb_(x,y,v,D);

    initial begin
        
        D=4'b0000;
        #250; D=4'b0001;
        #250; D=4'b0010;
        #250; D=4'b0100;
        #250; D=4'b1000;
        #250; D=4'b1111;
        #250; D=4'b0111;

    end

endmodule
    
