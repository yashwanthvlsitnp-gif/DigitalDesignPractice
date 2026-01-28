`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2026 10:44:24
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit(
    input A,
    input B,
    output G,
    output E,
    output L
    );
    
    wire A_n,B_n;
    wire Y_l,y_g;
    not g0(A_n,A);
    not g1(B_n,B);
    
    and g2(y_l,A_n,B);
    and g3(y_g,B_n,A);
    
    nor g4(E,y_l,y_g);
    assign G = y_g;
    assign L = y_l;
endmodule
