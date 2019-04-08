`timescale 1ns/100ps
module half_substractor(input wire x,y,output wire D,B);
assign D=x^y;
assign B=(~x)&&y;
endmodule


module full_substractor(input wire x,y,z,output wire D,B);

wire tmpD,tmpB,tmpB2;

half_substractor hs1(x,y,tmpD,tmpB);
half_substractor hs2(tmpD,z,D,tmpB2);
assign B=tmpB||tmpB2;

endmodule

module tb_full_substractor();
reg x,y,z;
wire D,B;

full_substractor tst(x,y,z,D,B);

initial begin

x=0;y=0;z=0;
#250; x=1;y=1;z=0;
#250; x=0; y=1;z=1;
#250; x=0; y=1;z=1;
#250; x=1; y=1;z=0;
#250; x=0; y=0;z=1;

end

endmodule



