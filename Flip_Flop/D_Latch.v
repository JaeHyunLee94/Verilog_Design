module D_Latch(Q,D,En);

    output wire Q;
    wire notQ;
    input wire D,En;

    wire up,down;
    
    assign up=~(D&&En);
    assign down=~(~D&&En);

    assign Q=~(up&&notQ);
    assign notQ=~(down&&Q);



endmodule 


