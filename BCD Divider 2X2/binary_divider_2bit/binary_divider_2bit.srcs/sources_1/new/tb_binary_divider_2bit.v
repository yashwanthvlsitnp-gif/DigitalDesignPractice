`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2026 18:54:08
// Design Name: 
// Module Name: tb_binary_divider_2bit
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


module tb_binary_divider_2bit;
    
    reg  [1:0] A;
    reg  [1:0] B;
    wire [1:0] Q;
    wire [1:0] Rem;
    wire divide_by_zero;
    
    binary_divider_2bit dut(
    .A(A),
    .B(B),
    .Q(Q),
    .Rem(Rem),
    .divide_by_zero(divide_by_zero)
    );
    integer i,j;
    initial begin
        $display("time A    B | Q   Rem divide_by_zero");
        $monitor("%0d   %0d  %0d  |   %0d  %0d  %b",$time,A,B,Q,Rem,divide_by_zero);    
    end
    initial begin
        A=0;    B = 0;
        for(i=0; i<4; i=i+1)   begin
            for(j=0; j<4; j=j+1)   begin
                #5;
                A = i;  B = j;
            end
        end
        #5  $finish;
    end
endmodule
