`timescale 1ns / 1ps

module comparator_1bit(
    input  wire clk,
    input  wire A,
    input  wire B,
    output reg  G,
    output reg  E,
    output reg  L
);

    wire g_c, e_c, l_c;

    assign g_c = A & ~B;
    assign l_c = ~A & B;
    assign e_c = ~(g_c | l_c);

    always @(posedge clk) begin
        G <= g_c;
        L <= l_c;
        E <= e_c;
    end

endmodule