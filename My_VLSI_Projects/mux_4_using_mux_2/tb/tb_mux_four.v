module tb_mux_four;

    // Testbench signals (declared cleanly with standard semicolons, NOT commas)
    reg [3:0] in;
    reg [1:0] sel;
    wire y;
    reg expected_y; // Declared as reg because it is assigned inside an initial block
    
    integer i;
    
    // Instantiate the Design Under Test (DUT)
    mux_four dut (
        .i(in),
        .sel(sel),
        .y(y)
    );

    initial begin
        in = 4'b1010;
        
        for (i = 0; i < 4; i = i + 1) begin
            sel = i[1:0];
            #10;
            expected_y = in[sel];
            
            // Check result for each test iteration
            if (expected_y === y) begin
                $display("PASS | Time=%0t | Inputs=0b%04b | Sel=2'b%02b (%0d) => Y=%b", 
                         $time, in, sel, sel, y);
            end else begin
                $display("FAIL | Time=%0t | Inputs=0b%04b | Sel=2'b%02b (%0d) => Expected Y=%b, Got Y=%b", 
                         $time, in, sel, sel, expected_y, y);
            end
        end
        
        $finish;
    end

endmodule