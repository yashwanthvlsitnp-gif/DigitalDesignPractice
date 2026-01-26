module binary_divider_2bit(
    input  [1:0] A,
    input  [1:0] B,
    output reg [1:0] Q,
    output reg [1:0] Rem,
    output divide_by_zero
);

assign divide_by_zero = (B == 2'b00);

always @(*) begin
    if (B == 0) begin
        Q = 0;
        Rem = 0;
    end else begin
        Q   = A / B;
        Rem = A % B;
    end
end

endmodule