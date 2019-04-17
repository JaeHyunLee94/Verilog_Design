module m8X3_encoder(D,x,y,z); //8x3 encoder using RTL

    input wire [7:0] D;
    output wire x,y,z;

    assign  x=D[4]||D[5]||D[6]||D[7];
    assign  y=D[2]||D[3]||D[6]||D[7];
    assign  z=D[1]||D[3]||D[5]||D[7];

endmodule


module m8X3_encoder_behavior_modeling(D,x,y,z); //8x3 encoder using RTL

    input wire [7:0] D;
    output reg x,y,z;


    always @(D) begin
        if(D[0]==1) begin
            x<=0; y<=0; z<=0;
        end
        else if(D[1]==1)begin
            x<=0; y<=0; z<=1;
        end
        else if(D[2]==1)begin
            x<=0; y<=1; z<=0;
        end
        else if(D[3]==1)begin
            x<=0; y<=1; z<=1;
        end
        else if(D[4]==1)begin
            x<=1; y<=0; z<=0;
        end
        else if(D[5]==1)begin
            x<=1; y<=0; z<=1;
        end
        else if(D[6]==1)begin
            x<=1; y<=1; z<=0;
        end
        else if(D[7]==1)begin
            x<=1; y<=1; z<=1;
        end
    end

endmodule