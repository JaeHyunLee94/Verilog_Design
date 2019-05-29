module top_hourseg(rst,inclk,seg1,seg10);

    input rst,inclk;

    output wire [6:0] seg1,seg10;
    wire [5:0] sec_val;

    hour_cnt counter(rst,inclk,sec_val);
    hour_conv converter(rst,sec_val,seg1,seg10);



endmodule // top_serst,inclk,seg1,seg10g

