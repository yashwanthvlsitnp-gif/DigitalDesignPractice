module tb_binaryadder_4bit;
    reg [3:0] a;
    reg [3:0] b;
    reg c_in;
    
    wire [3:0] s;
    wire c_out;
    
    integer i;
    
    binaryadder_4bit dut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .s(s),
    .c_out(c_out)
    );
        
    initial begin
        a   = 4'b0000;
        b   = 4'b0000;
        c_in = 1'b0;

        $display("Time  A     B     Cin | Sum   Cout");
        $display("---------------------------------");
        
        for (i = 0; i < 10; i = i + 1) begin
            #10;                  
            a   = $random;       
            b   = $random;        
            c_in = $random;        
            $display("%0dns   %b %b %b  | %b   %b", $time, a, b, c_in, s, c_out);
        end
        #10 $finish;
    end
endmodule