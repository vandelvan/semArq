`timescale 1ns/1ns

module memoria_tb();
reg 
	en;
reg [7:0]
	dir,
	dataIn;
wire [7:0]dataOut;

memoria mem(
	.en(en),
	.dir(dir),
	.dataIn(dataIn),
	.dataOut(dataOut)
);
initial
begin
	en = 1'b1;
	dataIn = 8'd73;
	dir = 8'b0;
	#10;
	en = 1'b0;
	dir = 8'b0;
	#10;
end
endmodule