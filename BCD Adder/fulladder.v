`timescale 1ns / 1ps

module fulladder(
    input x,
    input y,
    input carry_in,
    output s_fadd,
    output carry_out
    );
    
    assign s_fadd = x ^ y ^ carry_in;
    assign carry_out = (x&y) | (y&carry_in) | (x&carry_in);
endmodule