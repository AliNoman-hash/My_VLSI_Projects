module one_bit_fa_behavior (
	input wire a,
	input wire b,
	input wire cin,
	output reg sum,
	output reg cout
);

always @(*) begin
		{cout, sum} = a + b + cin;
	end
endmodule

module rca4 (
	input wire [3:0] a,
	input wire [3:0] b,
	input wire cin,
	output wire [3:0] sum,
	output wire cout
);

	wire c1, c2,c3;
	
	one_bit_fa_behavior fa0 (
			.a(a[0]),
			.b(b[0]),
			.sum(sum[0]),
			.cin(cin),
			.cout(c1)
			
	);
	one_bit_fa_behavior fa1 (
			.a(a[1]),
			.b(b[1]),
			.sum(sum[1]),
			.cin(c1),
			.cout(c2)
			
	);
	
	one_bit_fa_behavior fa2 (
			.a(a[2]),
			.b(b[2]),
			.sum(sum[2]),
			.cin(c2),
			.cout(c3)
			
	);

	one_bit_fa_behavior fa3 (
			.a(a[3]),
			.b(b[3]),
			.sum(sum[3]),
			.cin(c3),
			.cout(cout)
			
	);
endmodule