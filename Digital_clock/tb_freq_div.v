`timescale 1ns/100ps

module tb_freq_div();

    reg rst,inclk;
    wire sec_clk,min_clk,hour_clk;

    freq_div test_feq(rst,inclk,sec_clk,min_clk,hour_clk);

     initial begin
        inclk=0; rst=0;
    end

    initial #27 rst=1;
    initial begin
        repeat(1000)
        #5 inclk=~inclk;
    end

endmodule // 