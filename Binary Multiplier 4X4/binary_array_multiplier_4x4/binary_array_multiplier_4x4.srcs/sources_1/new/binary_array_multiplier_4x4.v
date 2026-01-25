`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 21:53:04
// Design Name: 
// Module Name: binary_array_multiplier_4x4
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


module binary_array_multiplier_4x4(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
    );
    
    wire c1,c2,c3;
    wire [3:0] a1,a2,a3,a4;
    wire [3:0] pp1,pp2,pp3;
    
    partialproduct_gen ppg1(
    .x(A),
    .b(B[0]),
    .y(a1)
    );
    
    partialproduct_gen ppg2(
    .x(A),
    .b(B[1]),
    .y(a2)
    );
    
    partialproduct_gen ppg3(
    .x(A),
    .b(B[2]),
    .y(a3)
    );
    
    partialproduct_gen ppg4(
    .x(A),
    .b(B[3]),
    .y(a4)
    );
    
    binaryadder_4bit adder1(
    .a({1'b0,a1[3:1]}),
    .b(a2),
    .c_in(1'b0),
    .s(pp1),
    .c_out(c1)
    );
    
    binaryadder_4bit adder2(
    .a({c1,pp1[3:1]}),
    .b(a3),
    .c_in(1'b0),
    .s(pp2),
    .c_out(c2)
    );
    
    binaryadder_4bit adder3(
    .a({c2,pp2[3:1]}),
    .b(a4),
    .c_in(1'b0),
    .s(pp3),
    .c_out(c3)
    );
    
    assign P = {c3,pp3[3:0],pp2[0],pp1[0],a1[0]};
endmodule
