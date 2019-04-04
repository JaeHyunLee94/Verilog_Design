`timescale 1ns/100ps

module tb_ha_always();
reg x,y;
wire c1,s;

al_halfadd test(c1,s,x,y);

initial begin

x=0;y=0;
#250; x=0;y=1;
#250; x=1;y=0;
#250 x=1;y=1;
end

endmodule


