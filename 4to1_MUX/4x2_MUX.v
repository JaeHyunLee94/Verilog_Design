module m4to1_MUX_RTL(out,Sin,A,B,C,D);
    
    input wire A,B,C,D;
    input wire[1:0] Sin;
    output wire out;

    assign out= ((~Sin[0])&&(~Sin[1])&&A ) || ((Sin[0])&&(~Sin[1])&&B) || ((~Sin[0])&&(Sin[1])&&C) || ((Sin[0])&&(Sin[1])&&D);


endmodule // 4 to 1 mux

module m4to1_MUX_Behavior(out,Sin,A,B,C,D);

    input wire A,B,C,D;
    input wire [1:0] Sin;

    output reg out;

    always @(Sin,A,B,C,D) begin
       if(Sin==2'b00) out=A; 
       else if(Sin==2'b01) out=B;
       else if(Sin==2'b10) out=C;
       else  out=D;

    end



endmodule
