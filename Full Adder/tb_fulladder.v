module tb_fulladder;
	
	reg a,b,c_in;
	wire s,c_out;
	
	fulladder dut(
	.a(a),
	.b(b),
	.c_in(c_in),
	.s(s),
	.c_out(c_out)
	);
	
	initial begin
		#5 a = 0; b = 0; c_in = 0;
		#5 a = 0; b = 0; c_in = 1;
		#5 a = 0; b = 1; c_in = 0;
		#5 a = 0; b = 1; c_in = 1;
		#5 a = 1; b = 0; c_in = 0;
		#5 a = 1; b = 0; c_in = 1;
		#5 a = 1; b = 1; c_in = 0;
		#5 a = 1; b = 1; c_in = 1;
		#5 $stop;
	end
	
endmodule