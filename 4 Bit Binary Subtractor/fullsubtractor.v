`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 21:41:35
// Design Name: 
// Module Name: fullsubtractor
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


module fullsubtractor(
    input x,
    input y,
    input borrow_in,
    output d,
    output borrow_out
    );
    assign d = x ^ y ^ borrow_in;
    assign borrow_out = (~x&y) | (~x&borrow_in) | (y&borrow_in);
endmodule
