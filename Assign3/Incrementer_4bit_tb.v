module Incrementer_4bit_tb;
	reg [3:0]A;
	wire Cout;
	wire [3:0] finalans;
	integer i;
	//Module Instantation
	Incrementer_4bit G1(A,Cout,finalans);
	
	//Test vectors
	initial
	begin
		for(i=0;i<16;i=i+1)
		begin
			A=i;
			#50;
			
		end
	end
endmodule 