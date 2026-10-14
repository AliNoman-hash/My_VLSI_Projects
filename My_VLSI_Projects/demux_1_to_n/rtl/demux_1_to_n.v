module demux_1_to_n #(
    parameter DATA_WIDTH = 1,
    parameter SEL_WIDTH  = 2    
)(
    input wire [DATA_WIDTH-1:0] din,
    input wire [SEL_WIDTH-1:0]  sel,
    output reg [(1<<SEL_WIDTH)*DATA_WIDTH-1:0] dout
);

    always @(*) begin
        dout = {((1<<SEL_WIDTH)*DATA_WIDTH){1'b0}};
        dout[sel * DATA_WIDTH +: DATA_WIDTH] = din;
    end

endmodule