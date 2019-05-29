module top_clock(
    rst,inclk,
    sec_seg1,sec_seg10,
    min_seg1,min_seg10,
    hour_seg1,hour_seg10
);

input rst,inclk;

output wire [6:0] sec_seg1,sec_seg10;
output wire [6:0] min_seg1,min_seg10;
output wire [6:0] hour_seg1,hour_seg10;

wire sec_clk,min_clk,hour_clk;

freq_div freq_(rst,inclk,sec_clk,min_clk,hour_clk);
top_secseg second_seg(rst,sec_clk,sec_seg1,sec_seg10);
top_minseg minute_seg(rst,min_clk,min_seg1,min_seg10);
top_hourseg hour_seg(rst,hour_clk,hour_seg1,hour_seg10);



endmodule //
