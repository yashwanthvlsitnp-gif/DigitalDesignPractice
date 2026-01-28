`timescale 1ns / 1ps

module tb_comparator_1bit;
    reg clk;
    reg A;
    reg B;
    wire G;
    wire E;
    wire L;

    // Instantiate DUT
    comparator_1bit dut (
        .clk(clk),
        .A(A),
        .B(B),
        .G(G),
        .E(E),
        .L(L)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;
    initial begin
        // Initialize
        clk = 0;
        A   = 0;
        B   = 0;
        // Wait for first clock edge
        #10;
        // Test 00 → Equal
        A = 0; B = 0;
        #10;

        // Test 01 → A < B
        A = 0; B = 1;
        #10;

        // Test 10 → A > B
        A = 1; B = 0;
        #10;

        // Test 11 → Equal
        A = 1; B = 1;
        #10;

        // Back-to-back changes (realistic case)
        A = 1; B = 0;
        #10;
        A = 0; B = 1;
        #10;

        $finish;
    end

endmodule
