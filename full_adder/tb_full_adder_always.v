`timescale 1ns/100ps

module test_always_full();
reg x,y,z;
wire cout,s;

full_adder_always testing_full(cout,s,x,y,z);

initial begin
 x=0;y=0;z=0;
#250; x=0;y=0;z=1;
#250; x=0;y=1;z=0;
#250; x=0;y=1;z=1;
#250; x=1;y=0;z=0;
#250; x=1;y=0;z=1;
#250; x=1;y=1;z=0;
#250; x=1;y=1;z=1;
end

endmodule

