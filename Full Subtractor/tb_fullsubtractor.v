module tb_fullsubtractor;
	
	reg a, b, borrow_in;
	wire d, borrow_out;
	
	fullsubtractor dut(
	.a(a),
	.b(b),
	.borrow_in(borrow_in),
	.d(d),
	.borrow_out(borrow_out)
	);
	
	initial begin
		a = 0; b = 0; borrow_in = 0;
		#5	a = 0; b = 0; borrow_in = 1;
		#5	a = 0; b = 1; borrow_in = 0;
		#5	a = 0; b = 1; borrow_in = 1;
		#5	a = 1; b = 0; borrow_in = 0;
		#5	a = 1; b = 0; borrow_in = 1;
		#5	a = 1; b = 1; borrow_in = 0;
		#5	a = 1; b = 1; borrow_in = 1;
		#5	$stop;
	end

endmodule