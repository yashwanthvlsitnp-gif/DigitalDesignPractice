module fullsubtractor(
input a,
input b,
input borrow_in,
output d,
output borrow_out
);
	wire d1,b1,b2;
	
	halfsubtractor h1(
	.x(a),
	.y(b),
	.diff(d1),
	.borrow_half(b1)
	);
	
	halfsubtractor h2(
	.x(d1),
	.y(borrow_in),
	.diff(d),
	.borrow_half(b2)
	);
	
	or g1(borrow_out,b1,b2);
	
endmodule