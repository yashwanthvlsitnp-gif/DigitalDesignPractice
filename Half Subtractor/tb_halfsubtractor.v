module tb_halfsubtractor;
	
	reg a,b;
	wire diff,borrow;
	
	halfsubtractor dut(
	.a(a),
	.b(b),
	.d(diff),
	.borrow(borrow)
	);
	
	initial begin
		#5 a = 0; b = 0;
		#5 a = 0; b = 1;
		#5 a = 1; b = 0;
		#5 a = 1; b = 1;
	end
endmodule