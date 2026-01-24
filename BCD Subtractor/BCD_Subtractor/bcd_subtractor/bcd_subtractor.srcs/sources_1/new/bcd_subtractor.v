//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 23:39:40
// Design Name: 
// Module Name: bcd_subtractor
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

module bcd_subtractor(
    input  [3:0] A,      // BCD minuend
    input  [3:0] B,      // BCD subtrahend
    output [3:0] Diff,   // BCD difference
    output       Borrow  // Borrow flag (1 means negative result)
);

    wire [3:0] B9c;      // 9's complement of B
    wire [3:0] B10c;     // 10's complement of B
    wire [3:0] sum;      
    wire       carry_out;

    // 9's complement: 9 - B
    assign B9c = 4'd9 - B;
    // 10's complement = 9's complement + 1
    assign B10c = B9c + 4'd1;
    // Use the existing BCD adder to add A + (10's complement of B)
    bcd_adder add_inst (
        .augend      (A),
        .addend      (B10c),
        .input_carry (1'b0),
        .bcd_result  (sum),
        .output_carry(carry_out)
    );

    // If carry_out==1 => no borrow (positive result)
    // If carry_out==0 => borrow (negative result)
    assign Borrow = ~carry_out;
    // The difference when no borrow
    assign Diff = sum;
endmodule
