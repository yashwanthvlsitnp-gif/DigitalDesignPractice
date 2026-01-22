`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 22:27:40
// Design Name: 
// Module Name: carryaheadgenerator
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


module carryaheadgenerator(
    input [3:0] p,
    input [3:0] g,
    input c0,
    output [3:0] c_out,
	output c4
    );
    
    assign c_out[0] = c0;
    assign c_out[1] = g[0] | (p[0]&c_out[0]);
    assign c_out[2] = g[1] | (p[1]&g[0]) | (p[1]&p[0]&c_out[0]);
    assign c_out[3] = g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c_out[0]);
	assign c4 = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0])	         | (p[3] & p[2] & p[1] & p[0] & c_out[0]);
endmodule
