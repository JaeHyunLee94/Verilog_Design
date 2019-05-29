`timescale 1ns/100ps


module tb_decoder_RTL;

reg x,y,z;
wire [7:0] out;

m_3x8_decoder_RTL test_decoder(out,x,y,z);

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
