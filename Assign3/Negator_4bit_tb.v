module Negator_4bit_tb();
	reg [3:0] A;
	wire [3:0] notA;
	
	Negator_4bit NNG(A,notA);
	
	initial
	begin
		A=0; #50;
		repeat(15)
		begin
			A=A+1;
			#50;
		end
	end
endmodule
