module hour_conv(rst,hour_val,seg1,seg10);
    input rst;
    input [5:0] hour_val;

    output reg [6:0] seg1,seg10;
    
    reg [5:0] decimal_1,decimal_10;
   
   always @(hour_val)begin
       decimal_1<=hour_val%10;
       decimal_10<=hour_val/10;
   end

   always@(decimal_1,decimal_10) begin  
    case(decimal_1)
     4'b0000 : seg1 = 7'b1000000;
     4'b0001 : seg1 = 7'b1111001;
     4'b0010 : seg1 = 7'b0100100;
     4'b0011 : seg1 = 7'b0110000;
     4'b0100 : seg1 = 7'b0011001;
     4'b0101 : seg1 = 7'b0010010;
     4'b0110 : seg1 = 7'b0000010;
     4'b0111 : seg1 = 7'b1111000;
     4'b1000 : seg1 = 7'b0000000;
     4'b1001 : seg1 = 7'b0010000;
    endcase

    case(decimal_10)
     4'b0000 : seg10 = 7'b1000000;
     4'b0001 : seg10 = 7'b1111001;
     4'b0010 : seg10 = 7'b0100100;
     4'b0011 : seg10 = 7'b0110000;
     4'b0100 : seg10 = 7'b0011001;
     4'b0101 : seg10 = 7'b0010010;
     4'b0110 : seg10 = 7'b0000010;
     4'b0111 : seg10 = 7'b1111000;
     4'b1000 : seg10 = 7'b0000000;
     4'b1001 : seg10 = 7'b0010000;
    endcase
  end
  

endmodule // sec_conv


