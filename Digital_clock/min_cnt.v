module min_cnt(rst,inclk,min_out);
    
    input rst,inclk;
    output reg[5:0] min_out;
    reg[5:0] tmp;

    always@(posedge inclk or negedge rst) begin
        
        if(!rst) begin
            min_out<=0;
            tmp<=0;
        end

        else begin
           if(tmp==59)begin
               tmp<=0;
           end
           else begin
               tmp<=tmp+1;
           end
           min_out<=tmp;

        end
    
    


    end




endmodule   