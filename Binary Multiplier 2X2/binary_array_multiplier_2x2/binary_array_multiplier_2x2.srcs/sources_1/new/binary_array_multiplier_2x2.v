module binary_array_multiplier_2x2(
input [1:0] A,
input [1:0] B,
output [3:0] P
);
    wire x,y,z,carry;
    
    and g1(P[0],A[0],B[0]);
    and g2(x,A[0],B[1]);
    and g3(y,A[1],B[0]);
    and g4(z,A[1],B[1]);
    
    halfadder ha0(
    .a(x),
    .b(y),
    .s(P[1]),
    .c(carry)
    );
    
    halfadder ha1(
    .a(carry),
    .b(z),
    .s(P[2]),
    .c(P[3])
    );
    
endmodule