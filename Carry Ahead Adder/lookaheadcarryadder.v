`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 22:25:09
// Design Name: 
// Module Name: lookaheadcarryadder
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


module lookaheadcarryadder(
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output [3:0] sum,
    output c_out
    );
    
    wire [3:0] p_in;
    wire [3:0] g_in;
    wire [3:0] gen_carry;
	wire final_c;
    
    halfaddder ha0(
    .x(a[0]),
    .y(b[0]),
    .p(p_in[0]),
    .g(g_in[0])
    );
    
    halfaddder ha1(
    .x(a[1]),
    .y(b[1]),
    .p(p_in[1]),
    .g(g_in[1])
    );
    
    halfaddder ha2(
    .x(a[2]),
    .y(b[2]),
    .p(p_in[2]),
    .g(g_in[2])
    );
    
    halfaddder ha3(
    .x(a[3]),
    .y(b[3]),
    .p(p_in[3]),
    .g(g_in[3])
    );
    
    carryaheadgenerator cg(
    .p(p_in),
    .g(g_in),
    .c0(c_in),
    .c_out(gen_carry),
	.c4(final_c)
    );
    
    assign sum[0] = p_in[0] ^ gen_carry[0];
    assign sum[1] = p_in[1] ^ gen_carry[1];
    assign sum[2] = p_in[2] ^ gen_carry[2];
    assign sum[3] = p_in[3] ^ gen_carry[3];
	
	assign c_out = final_c;
    
endmodule
