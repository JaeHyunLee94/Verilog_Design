module tb_topseg;

    reg rst,inclk;
    wire [6:0] seg1,seg10;

    top_secseg test_topseg(rst,inclk,seg1,seg10);

    
    initial begin
        inclk=0; rst=0;
    end

    initial #27 rst=1;
    initial begin
        repeat(1000)
        #5 inclk=~inclk;
    end


endmodule 