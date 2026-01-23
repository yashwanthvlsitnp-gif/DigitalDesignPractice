module bcd_adder(
input [3:0] augend,
input [3:0] addend,
input input_carry,
output [3:0] bcd_result,
output output_carry
);
    
    wire [3:0] binary_sum;
    wire k;
    wire [3:0] cond_add;
    
    binary_adder_4bit add1(
    .a(augend),
    .b(addend),
    .c_in(input_carry),
    .s(binary_sum),
    .c_out(k)
    );
    
    assign output_carry = (binary_sum[3]&binary_sum[2])|(binary_sum[3]&binary_sum[1])|k;
    assign cond_add[3] = 0;
    assign cond_add[2]= output_carry;
    assign cond_add[1] = output_carry;
    assign cond_add[0] = 0;
    
    binary_adder_4bit add2(
    .a(binary_sum),
    .b(cond_add),
    .c_in(1'b0),
    .s(bcd_result),
    .c_out()
    );
    
endmodule