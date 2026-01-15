module tb_halfadder;

reg a,b;
wire sum,carry;

halfadder dut(
.a(a),
.b(b),
.s(sum),
.c(carry)
);

initial begin
	#5 a = 0; b = 0;
	#10 a = 0; b = 1;
	#10 a = 1; b = 0;
	#10 a = 1; b = 1;
	#10 $finish;
end

endmodule