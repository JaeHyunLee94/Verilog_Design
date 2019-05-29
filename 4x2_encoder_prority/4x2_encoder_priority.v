module m4x2_pEncoder(x,y,v,D);

    input wire [3:0] D;
    output wire x,y,v;

    assign x=D[2]||D[3];
    assign y=D[3]||(D[1]&&~D[2]);
    assign v=D[0]||D[1]||D[2]||D[3];

endmodule


