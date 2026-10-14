`timescale 1ns / 1ps

module tb_demux_1_to_n;

   
    parameter DATA_WIDTH = 1;
    parameter SEL_WIDTH  = 2;
    localparam N         = (1 << SEL_WIDTH);

    
    reg [DATA_WIDTH-1:0] din;
    reg [SEL_WIDTH-1:0]  sel;
	 
    wire [N*DATA_WIDTH-1:0] dout;

    
    demux_1_to_n #(
        .DATA_WIDTH(DATA_WIDTH),
        .SEL_WIDTH(SEL_WIDTH)
    ) dut (
        .din(din),
        .sel(sel),
        .dout(dout)
    );

    task test_demux;
        input [DATA_WIDTH-1:0] in_val;
        input [SEL_WIDTH-1:0]  sel_val;
        begin
            din = in_val;
            sel = sel_val;
            #10;
        end
    endtask
    
    initial begin
	 
        $display("Time\t | Din\t | Sel\t | Dout[3:0]");
        $monitor("%0t\t | %b\t | %b\t | %b", $time, din, sel, dout);     
        
        test_demux(1'b1, 2'b00); 
        test_demux(1'b1, 2'b01); 
        test_demux(1'b1, 2'b10); 
        test_demux(1'b1, 2'b11);             
        test_demux(1'b0, 2'b00); 
        test_demux(1'b0, 2'b10); 
        $finish;
    end

endmodule