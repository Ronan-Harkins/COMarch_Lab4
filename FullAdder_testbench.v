module FullAdder_testbench();

	parameter N = 32;
	
	reg [N-1:0] A, B;
	reg Cin;
	wire [N-1:0] S;
	wire [3:0] status;
	
	FullAdder dut(.A(A), .B(B), .Cin(Cin), .S(S), .status(status));
	
	initial begin
	#10
	Cin = 1'b0;
	A = 32'b0;
	B = 32'b0;
	#10
	Cin = 1'b0;
	A = ~0;
	B = 32'b0;
	#10
	Cin = 1'b0;
	A = 32'b0;
	B = ~0;
	#10
	Cin = 1'b0;
	A = ~0;
	B = ~0;
	#10
	Cin = 1'b1;
	A = 32'b0;
	B = 32'b0;
	#10
	Cin = 1'b1;
	A = ~0;
	B = 32'b0;
	#10
	Cin = 1'b1;
	A = 32'b0;
	B = ~0;
	#10
	Cin = 1'b1;
	A = ~0;
	B = ~0;
	#10
	A = 32'b10000000000000000000000000000000;
	B = 32'b10000000000000000000000000000000;
	#10 $stop;
	
	end
	
endmodule 