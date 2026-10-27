module mux_two_behavioral (
	input wire a,
	input wire b,
	input wire sel,
	output reg y

);

always @(*)
	begin
		if (sel == 0)
			y = a;
		else
			y = b;
			
	end
endmodule

module mux_four (
	input wire [3:0] i,
	input wire [1:0] sel,
	output wire y
);

wire w0, w1;

 mux_two_behavioral mux0 (
	.a(i [0]),
	.b(i [1]),
	.sel(sel [0]),
	.y(w0)
);

 mux_two_behavioral mux1 (
	.a(i [2]),
	.b(i [3]),
	.sel(sel [0]),
	.y(w1)
);

 mux_two_behavioral mux2 (
	.a(w0),
	.b(w1),
	.sel(sel [1]),
	.y(y)
);
endmodule

