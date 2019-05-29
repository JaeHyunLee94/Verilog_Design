module cnt3(out3,clk,rst);

    input clk,rst;
    output reg[3:0] out3;
    reg[10:0] tmp2;
    
    always @(posedge clk or negedge rst) begin

        if(!rst) begin
            out3<=0;
            tmp2<=0;
        end

        else if(tmp2==999)begin
            if(out3==9) begin
                out3<=0;
                tmp2<=0;
            end
            
            else begin
            out3<=out3+1;
            tmp2<=0;
            end
        end

        else tmp2<=tmp2+1;
    end

    


endmodule // 

