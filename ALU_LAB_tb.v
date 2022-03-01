module ALU_LAB_tb();
reg [31:0]A, B;
reg Cin;
reg [3:0]opcode;
wire [31:0]FINAL;
wire [3:0]STATUS;

ALU_LAB DUT(.A(A), .B(B), .opcode(opcode), .STATUS(STATUS), .FINAL(FINAL),.Cin(Cin));

initial begin

A= 32'd10;
B= 32'd10;
opcode= 4'b0001;//add
Cin = 1;
#10;

A= 32'd10;
B= 32'd10;
opcode= 4'b0001;//add carry
Cin = 0;
#10;

A= 32'd10;
B= 32'd2;
opcode= 4'b0111;//left shift
Cin = 0;
#10;

A= 32'd8;
B= 32'd2;
opcode= 4'b0110;//right shift
Cin = 0;
#10;

A= 32'd1;
B= 32'd1;
opcode= 4'b0011;//and get 1
Cin = 0;
#10;

A= 32'd2;
B= 32'd1;
opcode= 4'b0011;//and get 0
Cin = 0;
#10;

A= 32'd2;
B= 32'd1;
opcode= 4'b0100;//or get 1
Cin = 0;
#10;

A= 32'd0;
B= 32'd0;
opcode= 4'b0100;//or get 0
Cin = 0;
#10;

A= 32'd0;
B= 32'd0;
opcode= 4'b0010;//xor get 0
Cin = 0;
#10;

A= 32'd3;
B= 32'd0;
opcode= 4'b0010;//xor get 1
Cin = 0;
#10;
end 
endmodule
// 0001 add
//0010 XOR
// 0011 AND
//0100 OR
//0101 NOR
//0110 Right shift
//0111 Left shift 
