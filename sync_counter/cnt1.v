module cnt1(out1,clk,rst);

    input clk,rst;
    output reg[3:0] out1;
    reg[3:0] tmp2;
    
    always @(posedge clk or negedge rst) begin

        if(!rst) begin
            out1<=0;
            tmp2<=0;
        end

        else if(tmp2==9)begin
            if(out1==9) begin
                out1<=0;
                tmp2<=0;
            end
            
            else begin
            out1<=out1+1;
            tmp2<=0;
            end
        end

        else tmp2<=tmp2+1;
    end

    


endmodule // 

