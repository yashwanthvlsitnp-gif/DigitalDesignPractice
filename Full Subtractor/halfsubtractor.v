module halfsubtractor(
input x,
input y,
output diff,
output borrow_half
);

assign diff = x ^ y;
assign borrow_half = ~x & y;

endmodule