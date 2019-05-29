module Edge_trigger_DFF(Q,D,clk);

    input wire D,clk;
    output wire Q;

    wire Y;

    D_Latch master(Y,D,clk);
    D_Latch slave(Q,Y,~clk);

endmodule
