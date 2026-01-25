`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 19:20:32
// Design Name: 
// Module Name: tb_binary_array_multiplier_2x2
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


module tb_binary_array_multiplier_2x2;
    
    reg [1:0] A;
    reg [1:0] B;
    wire [3:0] P;
    
    binary_array_multiplier_2x2 dut(
    .A(A),
    .B(B),
    .P(P)
    );
    
    initial begin
        $display("A  B  |  P");
        $display("------------");

        A = 0; B = 0;
        repeat (4) begin
            repeat (4) begin
                #10;
                $display("%b  %b  |  %b", A, B, P);
                B = B + 1;
            end
            B = 0;
            A = A + 1;
        end

        #10 $finish;
    end
endmodule
