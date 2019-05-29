`timescale 1ns/100ps

module tb_sec_cnt;

    reg rst,inclk;
    wire [5:0] out_sec;

    sec_cnt test_sec(rst,inclk,out_sec);

    initial begin
        inclk=0; rst=0;
    end

    initial #27 rst=1;
    initial begin
        repeat(1000)
        #5 inclk=~inclk;
    end
endmodule // tb_st

