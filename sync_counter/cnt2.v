module cnt2(out2,clk,rst);

    input clk,rst;
    output reg[3:0] out2;
    reg[7:0] tmp2;
    
    always @(posedge clk or negedge rst) begin

        if(!rst) begin
            out2<=0;
            tmp2<=0;
        end

       else if(tmp2==99)begin
            if(out2==9) begin
                out2<=0;
                tmp2<=0;
            end
            
            else begin
            out2<=out2+1;
            tmp2<=0;
            end
        end

        else tmp2<=tmp2+1;
    end

    


endmodule // 

