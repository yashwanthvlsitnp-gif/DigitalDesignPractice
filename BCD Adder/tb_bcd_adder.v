`timescale 1ns/1ps
module tb_bcd_adder;
    
    reg [3:0] augend;
    reg [3:0] addend;
    reg input_carry;
    wire [3:0] bcd_result;
    wire output_carry;
    
    integer i;
    
    bcd_adder dut(
    .augend(augend),
    .addend(addend),
    .input_carry(input_carry),
    .bcd_result(bcd_result),
    .output_carry(output_carry)
    );
    
    initial begin
        $display("Time  a   b   carry   |   result  out_carry");
        $monitor("%d    %d  %d  %b      |   %d  %b",
        $time,augend,addend,input_carry,bcd_result,output_carry);         
    end
    
    initial begin
        augend = 0;  addend = 0;  input_carry = 0;
        #5;
        for(i=0; i<10; i=i+1)   begin
            #10;
            augend = $urandom%10;
            addend = $urandom%10;
            input_carry = $urandom%2;
        end
        #10 $finish;
    end
    
endmodule