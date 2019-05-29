`timescale 1ns/1ns
module tb_sync_counter();

    reg clk,rst;
    wire [3:0] out0,out1,out2,out3;

    sync_counter tb_sync(out0,out1,out2,out3,clk,rst);

    initial begin
        clk=0; rst=0;
    end

    initial #27 rst=1;
    initial begin
        repeat(1000)
        #5 clk=~clk;
    end

endmodule // 
