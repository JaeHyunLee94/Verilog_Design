module (Y,I,S,E); 
    
    output reg Y;

    input wire [1:0] S;
    input wire E;
    input wire [3:0] I;

    reg [3:0] tmp;
    
    always@(S,E,I) begin
        if(E==0) Y=0;
        else begin
            if(S=2'b00) tmp
        end
    end



    
endmodule //