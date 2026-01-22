`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 22:25:09
// Design Name: 
// Module Name: halfaddder
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


module halfaddder(
    input x,
    input y,
    output p,
    output g
    );
    
    assign p = x ^ y;
    assign g = x & y;
endmodule
