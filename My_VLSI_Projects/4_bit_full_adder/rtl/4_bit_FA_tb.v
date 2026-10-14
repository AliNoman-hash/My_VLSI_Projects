`timescale 1ns / 1ps

module tb_rca4_pure_behavioral;

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

   
    rca4 dut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    initial begin
        $monitor("Time=%0t | A=%d B=%d Cin=%b => Sum=%d Cout=%b", 
                 $time, a, b, cin, sum, cout);

        a = 4'd5;  b = 4'd3;  cin = 1'b0; #10;
        a = 4'd12; b = 4'd7;  cin = 1'b1; #10;
        a = 4'd15; b = 4'd15; cin = 1'b1; #10;

        $finish;
    end

endmodule