module fulladder(
input a,
input b,
input c_in,
output s,
output c_out
);
assign s = a^b^c_in;
assign c_out = (a&b)|(b&c_in)|(c_in&a);

endmodule