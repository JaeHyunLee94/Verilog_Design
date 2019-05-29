module SR_latch(Q,notQ,S,R);

    output wire Q,notQ;
    input wire S,R;

    assign Q=~(R||notQ);
    assign notQ=~(Q||S);
    


endmodule








