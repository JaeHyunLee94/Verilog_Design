module m_3x8_decoder_RTL(out, x,y,z);

    input wire x,y,z;
    output wire[7:0] out;

    assign out={(x&&y&&z),(x&&y&&~z),(x&&~y&&z),(x&&~y&&~z),(~x&&y&&z),(~x&&y&&~z),(~x&&~y&&z),(~x&&~y&&~z)};

endmodule



module m_3x8_decoder_Behavior(out, x,y,z);

    input wire x,y,z;
    output reg[7:0] out=8'b00000000;

    always @(x,y,z)begin
        

        if ({x,y,z}==3'b000) out=8'b00000001;
        else if({x,y,z}==3'b001) out=8'b00000010;
        else if({x,y,z}==3'b010) out=8'b00000100;
        else if({x,y,z}==3'b011) out=8'b00001000;
        else if({x,y,z}==3'b100) out=8'b00010000;
        else if({x,y,z}==3'b101) out=8'b00100000;
        else if({x,y,z}==3'b110) out=8'b01000000;
        else  out=8'b10000000;
        
           
        
    end



endmodule





