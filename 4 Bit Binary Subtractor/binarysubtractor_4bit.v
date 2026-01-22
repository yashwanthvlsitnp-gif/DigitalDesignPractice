`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 21:41:35
// Design Name: 
// Module Name: binarysubtractor_4bit
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


module binarysubtractor_4bit(
    input [3:0] a,
    input [3:0] b,
    input in_borrow,
    output [3:0] difference,
    output out_borrow
    );
    
    wire b1,b2,b3;
    
    fullsubtractor fs0(
    .x(a[0]),
    .y(b[0]),
    .borrow_in(in_borrow),
    .d(difference[0]),
    .borrow_out(b1)
    );
    
    fullsubtractor fs1(
    .x(a[1]),
    .y(b[1]),
    .borrow_in(b1),
    .d(difference[1]),
    .borrow_out(b2)
    );
    
    fullsubtractor fs2(
    .x(a[2]),
    .y(b[2]),
    .borrow_in(b2),
    .d(difference[2]),
    .borrow_out(b3)
    );
    
    fullsubtractor fs3(
    .x(a[3]),
    .y(b[3]),
    .borrow_in(b3),
    .d(difference[3]),
    .borrow_out(out_borrow)
    );
endmodule
