`timescale 1ns/100ps

module tb_RTL();
    reg A,B,C,D;
    reg[1:0] Sin;
    wire out;

    m4to1_MUX_RTL test_RTLMUX(out,Sin,A,B,C,D);

    initial begin
        A=0; B=0; C=0; D=1; Sin=2'b11;
        #250 A=0; B=0; C=0; D=1; Sin=2'b11;
        #250 A=0; B=0; C=1; D=0; Sin=2'b10;
        #250 A=0; B=1; C=0; D=1; Sin=2'b01;
        #250 A=1; B=0; C=0; D=0; Sin=2'b00;

    end

endmodule

module tb_Behavior();
    reg A,B,C,D;
    reg[1:0] Sin;
    wire out;

    m4to1_MUX_Behavior test_BehaviorMUX(out,Sin,A,B,C,D);

    initial begin
        A=0; B=0; C=0; D=1; Sin=2'b11;
        #250 A=0; B=0; C=0; D=1; Sin=2'b11;
        #250 A=0; B=0; C=1; D=0; Sin=2'b10;
        #250 A=0; B=1; C=0; D=1; Sin=2'b01;
        #250 A=1; B=0; C=0; D=0; Sin=2'b00;

    end





endmodule
