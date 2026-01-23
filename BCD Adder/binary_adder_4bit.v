`timescale 1ns / 1ps

module binary_adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output [3:0] s,
    output c_out
    );
    
    wire c1,c2,c3;
    fulladder fa0(
    .x(a[0]),
    .y(b[0]),
    .carry_in(c_in),
    .s_fadd(s[0]),
    .carry_out(c1)
    );
    
    fulladder fa1(
    .x(a[1]),
    .y(b[1]),
    .carry_in(c1),
    .s_fadd(s[1]),
    .carry_out(c2)
    );
    
    fulladder fa2(
    .x(a[2]),
    .y(b[2]),
    .carry_in(c2),
    .s_fadd(s[2]),
    .carry_out(c3)
    );
    
    fulladder fa3(
    .x(a[3]),
    .y(b[3]),
    .carry_in(c3),
    .s_fadd(s[3]),
    .carry_out(c_out)
    );
    
endmodule