`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 21:02:38
// Design Name: 
// Module Name: adder_subtractor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_subtractor(
    input [3:0] a,
    input [3:0] b,
    input m,
    output [3:0] result,
    output v,
    output c_out
    );
    
    wire c0,c1,c2,c3,c4;
    wire [3:0] b_bit;
    
    xor g1(b_bit[0],b[0],m);
    xor g2(b_bit[1],b[1],m);
    xor g3(b_bit[2],b[2],m);
    xor g4(b_bit[3],b[3],m);
    
    assign c0 = m;
    
    full_adder fa0(
    .x(a[0]),
    .y(b_bit[0]),
    .carry_in(c0),
    .sum(result[0]),
    .carry_out(c1)
    );
    
    full_adder fa1(
    .x(a[1]),
    .y(b_bit[1]),
    .carry_in(c1),
    .sum(result[1]),
    .carry_out(c2)
    );
    
    full_adder fa2(
    .x(a[2]),
    .y(b_bit[2]),
    .carry_in(c2),
    .sum(result[2]),
    .carry_out(c3)
    );
    
    full_adder fa3(
    .x(a[3]),
    .y(b_bit[3]),
    .carry_in(c3),
    .sum(result[3]),
    .carry_out(c4)
    );
    
    xor g5(v,c3,c4);
    assign c_out = c4;
endmodule
