`timescale 1ns/100ps

module tb_D_Latch();

    reg D,En;
    wire Q,notQ;

    D_Latch dlat(Q,notQ,D,En);

    initial begin

        D=0;En=0;
        #250 D=1;
        #250 En=1; D=0;
        #250 D=1;

    

    end




endmodule
