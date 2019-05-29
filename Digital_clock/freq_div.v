module freq_div(rst, in_clk, sec_clk,min_clk,hour_clk);
  input in_clk, rst;

  output reg sec_clk,min_clk,hour_clk;

  reg [24:0]cnt_clk;
  reg [5:0] min_tmp;
  reg [5:0] hour_tmp;

  always@(posedge in_clk or negedge rst) begin
    if(!rst) begin
      sec_clk <= 0;
      cnt_clk <= 0;
    end
    
    else begin  
      cnt_clk <= cnt_clk+1;
            
     
      if(cnt_clk == 24999999)
     // if(cnt_clk==4)
        cnt_clk <=0;
      else if(cnt_clk==0)
        sec_clk = !sec_clk;     

    end

    end


    always@(posedge sec_clk or negedge rst) begin
    if(!rst) begin
      min_clk<=0;
      min_tmp<=0;
    end
    
    else begin  
      min_tmp <= min_tmp+1;
            
      if(min_tmp == 29)
        min_tmp <=0;
      else if(min_tmp==0)
        min_clk = !min_clk;     

    end

    end

    always@(posedge min_clk or negedge rst) begin
    if(!rst) begin
      hour_clk<=0;
      hour_tmp <= 0;
    end
    
    else begin  
      hour_tmp <= hour_tmp+1;
            
      if(hour_tmp == 29)
        hour_tmp <=0;
      else if(hour_tmp==0)
        hour_clk = !hour_clk;     
    end

    
  end 

endmodule
