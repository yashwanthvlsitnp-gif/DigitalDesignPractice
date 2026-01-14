module tb_gates;

reg inp1,inp2;
wire and_out,or_out,nand_out,nor_out,not_aout,not_bout,xor_out,xnor_out;

gates dut(inp1,inp2,and_out,or_out,nand_out,nor_out,not_aout,not_bout,xor_out,xnor_out);

initial begin
	#10 inp1 = 0; inp2 = 0;
	#10 inp1 = 0; inp2 = 1;
	#10 inp1 = 1; inp2 = 0;
	#10 inp1 = 1; inp2 = 1;
	#10 $finish;
end

endmodule