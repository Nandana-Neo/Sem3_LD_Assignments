module Decrementer_4bit_tb();

	reg [3:0]A;
	wire [3:0] Anew;
	integer i;
	
	//Module Instantation
	Decrementer_4bit G1(A,Anew);
	
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