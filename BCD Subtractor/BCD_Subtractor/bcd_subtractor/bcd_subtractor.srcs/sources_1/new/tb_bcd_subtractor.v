`timescale 1ns/1ps
module tb_bcd_subtractor;

    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] Diff;
    wire Borrow;

    integer i;

    // Instantiate your BCD subtractor
    bcd_subtractor dut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        $display("Time | A   B   | Diff  Borrow");
        $monitor("%4dns | %0d   %0d  | %0d     %b",
                 $time, A, B, Diff, Borrow);
    end

    initial begin
        // Initialize inputs
        A = 0;
        B = 0;
        #5;

        // Generate 10 random BCD subtraction operations
        for (i = 0; i < 10; i = i + 1) begin
            #10;
            A = $urandom % 10;   // random 0-9
            B = $urandom % 10;   // random 0-9
        end

        #10 $finish;
    end

endmodule
