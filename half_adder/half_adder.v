//halfadder using carnomap

module half_adder(C1,S,I1,I0);

input I1,I0;
output C1,S;

assign C1=I1&I0;
assign S=I1^I0;

endmodule

