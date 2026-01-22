`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 21:02:38
// Design Name: 
// Module Name: tb_adder_subtractor
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


module tb_adder_subtractor;

    reg [3:0] a;
    reg [3:0] b;
    reg m;
    wire [3:0] result;
    wire v,c_out;
    
    integer i; 
    adder_subtractor dut(
    .a(a),
    .b(b),
    .m(m),
    .result(result),
    .v(v),
    .c_out(c_out)
    );
    
    initial begin
        $display("Time  a   b   mode    |   result  carry/borrow   overflow");
        $monitor("%d    %b  %b  %b      |   %b      %b          %b",
        $time,a,b,m,result,c_out,v);
    end
    
    initial begin
        a = 0;  b = 0;  m = 0;
        
        for(i=0; i<10; i=i+1)   begin
            #10 
            a = $random;
            b = $random;
            m = 0;
        end 
        
        for(i=0; i<10; i=i+1)   begin
            #10 
            a = $random;
            b = $random;
            m = 1;
        end 
        
        #10  $finish; 
    end
    
    
endmodule
