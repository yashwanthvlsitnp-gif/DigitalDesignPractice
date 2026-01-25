`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 21:57:29
// Design Name: 
// Module Name: partialproduct_gen
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


module partialproduct_gen(
    input [3:0] x,
    input b,
    output [3:0] y
    );
    and g1(y[0],x[0],b);
    and g2(y[1],x[1],b);
    and g3(y[2],x[2],b);
    and g4(y[3],x[3],b);
endmodule
