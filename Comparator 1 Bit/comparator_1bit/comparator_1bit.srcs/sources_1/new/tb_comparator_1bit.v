`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2026 10:44:24
// Design Name: 
// Module Name: tb_comparator_1bit
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


module tb_comparator_1bit;

    reg A;
    reg B;
    wire G;
    wire E;
    wire L;

    // DUT instantiation
    comparator_1bit dut (
        .A(A),
        .B(B),
        .G(G),
        .E(E),
        .L(L)
    );

    initial begin
        $display("Starting 1-bit Comparator Test...");
        $display(" A B | G E L ");
        $display("-----------");

        // Test all input combinations
        A = 0; B = 0; #5;
        check_result(0,0);

        A = 0; B = 1; #5;
        check_result(0,1);

        A = 1; B = 0; #5;
        check_result(1,0);

        A = 1; B = 1; #5;
        check_result(1,1);

        $display("All test cases PASSED ✔️");
        $finish;
    end

    // Task to check expected output
    task check_result(input reg a, input reg b);
        begin
            if ((G !== (a & ~b)) ||
                (L !== (~a & b)) ||
                (E !== ~( (a & ~b) | (~a & b) ))) begin

                $display("ERROR: A=%b B=%b | G=%b E=%b L=%b",
                          a, b, G, E, L);
                $stop;
            end
            else begin
                $display(" %b %b | %b %b %b  ✔",
                          a, b, G, E, L);
            end
        end
    endtask
endmodule
