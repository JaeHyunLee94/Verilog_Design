`timescale 1ns/100ps

module tb_conv();

    reg rst;
    reg [5:0] val;

    wire [6:0] seg1,seg2;

    hour_conv tb_convv(rst,val,seg1,seg2);

    initial begin
        val=0; rst=0;
        #5; rst=1;
        #10; val=2;
        #10; val=4;
        #10; val=5;
        #10; val=23;
        #10; val=5;
        #10; val=9;
    end

    



endmodule // tb_conv


