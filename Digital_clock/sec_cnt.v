
module sec_cnt(rst,inclk,sec_out);
    
    input rst,inclk;
    output reg[5:0] sec_out;
    reg[5:0] tmp;

    always@(posedge inclk or negedge rst) begin
        
        if(!rst) begin
            sec_out<=0;
            tmp<=0;
        end

        else begin
           if(tmp==59)begin
               tmp<=0;
           end
           else begin
               tmp<=tmp+1;
           end
           sec_out<=tmp;

        end
    
    


    end




endmodule   