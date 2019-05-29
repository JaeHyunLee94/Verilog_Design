`timescale 1ns/100ps
module tb_top_clock;

    reg rst,inclk;
    wire [6:0] sec_seg1,sec_seg10;
    wire [6:0] min_seg1,min_seg10;
    wire [6:0] hour_seg1,hour_seg10;

    top_clock test_top(
        rst,inclk,
        sec_seg1,sec_seg10,
        min_seg1,min_seg10,
        hour_seg1,hour_seg10
    );

    initial begin
        inclk=0; rst=0;
    end

    initial #27 rst=1;
    initial begin
        repeat(2000000)
        #5 inclk=~inclk;
    end

endmodule