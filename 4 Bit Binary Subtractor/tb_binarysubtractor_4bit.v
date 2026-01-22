
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 21:41:35
// Design Name: 
// Module Name: tb_binarysubtractor_4bit
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

`timescale 1ns / 1ps
module tb_binarysubtractor_4bit;
    
    reg [3:0] a;
    reg [3:0] b;
    reg in_borrow;
    wire [3:0] difference;
    wire out_borrow;
    
    integer i;
    
    binarysubtractor_4bit dut(
    .a(a),
    .b(b),
    .in_borrow(in_borrow),
    .difference(difference),
    .out_borrow(out_borrow)
    );
    
    initial begin
        a = 4'b0000;
        b = 4'b0000;
        in_borrow = 1'b0;
        $display("time  A   B   Cin | Difference Borrow Out");
        $display("------------------------------------------");
        
        for(i=0; i<10; i=i+1) begin
            #10;
            a = $random;
            b = $random;
            in_borrow = $random;
            $display("%0dns  %b  %b  %b | %b %b", $time, a,b,in_borrow,difference,out_borrow);
        end 
        #10 $finish;
    end
endmodule
