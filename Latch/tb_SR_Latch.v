`timescale 1ns/100ps

module tb_SR_Latch();

    reg S,R;
    wire Q,notQ;

    SR_latch srlatch(Q,notQ,S,R);

    initial begin
        
        S=0; R=0;
        #250; S=1; R=0;
        #250; S=0; R=0;
        #250; S=0; R=1;
        #250; S=0; R=0;
        #250; S=1; R=1;

        
        #250; S=1; R=0;
        #250; S=0; R=0;
        #250; S=0; R=1;
        #250; S=0; R=0;
        #250; S=1; R=1;
    end

endmodule