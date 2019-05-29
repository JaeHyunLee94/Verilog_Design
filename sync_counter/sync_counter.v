module sync_counter(out0,out1,out2,out3,clk,rst);

    input clk,rst;
    output [3:0] out0,out1,out2,out3;

    cnt0 cn0(out0,clk,rst);
    cnt1 cn1(out1,clk,rst);
    cnt2 cn2(out2,clk,rst);
    cnt3 cn3(out3,clk,rst);

endmodule 
