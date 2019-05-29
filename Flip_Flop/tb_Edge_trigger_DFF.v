`timescale 1ns/100ps
module tb_Edge_trigger_DFF();



    reg D,clk;
    wire Q;

    
    Edge_trigger_DFF etdff(Q,D,clk);

    always begin
        #250; clk=~clk;
    end

    initial begin
        D=0; clk=0;
        #200; D=1;
        #200; D=1;
        #200; D=0;
        #200; D=1;

    end


endmodule

