`timescale 1ns/1ps

module tb_lookaheadcarryadder;

    reg [3:0] a;
    reg [3:0] b;
    reg       c_in;

    wire [3:0] sum;
    wire       c_out;

    lookaheadcarryadder dut (
        .a(a),
        .b(b),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );

    integer i;

    reg [4:0] expected;  

    initial begin
        $display("Time  a    b    cin | sum  cout | expected_sum expected_cout");
        $display("--------------------------------------------------------");

        for (i = 0; i < 50; i = i + 1) begin
            #10;
            {a, b, c_in} = {$random, $random, $random};

            // Compute expected result using built-in Verilog addition
            expected = a + b + c_in;

            // Display DUT outputs vs expected
            #1; // small delay to ensure outputs update
            $display("%4dns %b %b %b  | %b   %b   | %b      %b",
                     $time, a, b, c_in, sum, c_out,
                     expected[3:0], expected[4]);
        end

        #10;
        $finish;
    end

endmodule
