`timescale 1ns/100ps

module m_3x8_decoder(out, x,y,z);

input wire x,y,z;
output wire[7:0] out;

assign out={(x&&y&&z),(x&&y&&~z),(x&&~y&&z),(x&&~y&&~z),(~x&&y&&z),(~x&&y&&~z),(~x&&~y&&z),(~x&&~y&&~z)};

endmodule

module tb_decoder;

reg x,y,z;
wire [7:0] out;

m_3x8_encoder test_decoder(out,x,y,z);

initial begin
    x=0;y=0;z=0;
    #250 x=0;y=0;z=1;
    #250 x=0;y=1;z=0;
    #250 x=0;y=1;z=1;
    #250 x=1;y=0;z=0;
    #250 x=1;y=0;z=1;
    #250 x=1;y=1;z=0;
    #250 x=1;y=1;z=1;
end

endmodule






