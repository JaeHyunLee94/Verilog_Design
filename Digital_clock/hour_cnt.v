module hour_cnt(rst,inclk,hour_out);
    
    input rst,inclk;
    output reg[5:0] hour_out;
    reg[5:0] tmp;

    always@(posedge inclk or negedge rst) begin
        
        if(!rst) begin
            hour_out<=0;
            tmp<=0;
        end

        else begin
           if(tmp==23)begin
               tmp<=0;
           end
           else begin
               tmp<=tmp+1;
           end
           hour_out<=tmp;

        end
    
    


    end




endmodule   
