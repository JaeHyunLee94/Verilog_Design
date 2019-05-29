module cnt0(out0,clk,rst);

    input clk,rst;
    output reg[3:0] out0;

    always @(posedge clk or negedge rst) begin
       if(!rst) begin
           out0<=4'b0000;
       end 

       else if(out0==9) begin
           out0<=4'b0000;
       end

       else begin
           out0<=out0+1;
       end


    end


endmodule // 
