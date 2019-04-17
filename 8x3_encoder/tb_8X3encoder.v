`timescale 1ns/100ps

module tb_m8X3_encoder();

    reg [7:0] D;
    wire x,y,z;
    m8X3_encoder test_8x3_encoder(D,x,y,z);

    initial begin
        D=8'b00000000;
        #250; D=8'b00000001;
        #250; D=8'b00000010;
        #250; D=8'b00000100;
        #250; D=8'b00001000;
        #250; D=8'b00010000;
        #250; D=8'b00100000;
        #250; D=8'b01000000;
        #250; D=8'b10000000;
        
    end

endmodule


module tb_m8X3_encoder_behavior_modeling();

    reg [7:0] D;
    wire x,y,z;
    m8X3_encoder_behavior_modeling test_8x3_encoder_behavior(D,x,y,z);

    initial begin
        D=8'b00000000;
        #250; D=8'b00000001;
        #250; D=8'b00000010;
        #250; D=8'b00000100;
        #250; D=8'b00001000;
        #250; D=8'b00010000;
        #250; D=8'b00100000;
        #250; D=8'b01000000;
        #250; D=8'b10000000;
        
    end

endmodule