module gates(
input inp1,
input inp2,
output and_out,
output or_out,
output nand_out,
output nor_out,
output not_aout,
output not_bout,
output xor_out,
output xnor_out
);

and g1(and_out,inp1,inp2);
or g2(or_out,inp1,inp2);
nand g3(nand_out,inp1,inp2);
nor g4(nor_out,inp1,inp2);
not g5(not_aout,inp1);
not g6(not_bout,inp2);
xor g7(xor_out,inp1,inp2);
xnor g8(xnor_out,inp1,inp2);

endmodule