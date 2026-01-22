
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 19:08:54
// Design Name: 
// Module Name: fulladder
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
