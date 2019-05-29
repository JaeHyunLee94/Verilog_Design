module top_secseg(rst,inclk,seg1,seg10);

    input rst,inclk;

    output wire [6:0] seg1,seg10;
    wire [5:0] sec_val;

    sec_cnt counter(rst,inclk,sec_val);
    sec_conv converter(rst,sec_val,seg1,seg10);



endmodule //
