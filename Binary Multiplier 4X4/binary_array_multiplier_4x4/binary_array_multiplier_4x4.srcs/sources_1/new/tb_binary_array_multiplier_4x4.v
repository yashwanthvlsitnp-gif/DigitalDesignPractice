`timescale 1ns / 1ps

module tb_binary_array_multiplier_4x4;

    reg  [3:0] A;
    reg  [3:0] B;
    wire [7:0] P;

    integer i, j;
    reg [7:0] expected;

    // DUT instantiation
    binary_array_multiplier_4x4 dut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        $display("Starting exhaustive test for 4x4 multiplier...");

        // Initialize
        A = 0;
        B = 0;

        // Exhaustive test
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i[3:0];
                B = j[3:0];
                #5;   // allow combinational settling

                expected = i * j;

                if (P !== expected) begin
                    $display("ERROR: A=%0d B=%0d | Expected=%0d (%b) Got=%0d (%b)",
                             i, j, expected, expected, P, P);
                    $stop;
                end
                else begin
                    $display("PASS: A=%0d B=%0d | P=%0d", i, j, P);
                end
            end
        end

        $display("All 256 test cases PASSED ✔️");
        $finish;
    end

endmodule
