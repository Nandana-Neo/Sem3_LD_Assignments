module Decrementer_16bit_tb();

	reg [15:0] A;
	wire [15:0] Anew;
	
	//Instantiation
	Decrementer_16bit DAA(A,Anew);
	
	//Test Vectors
	initial
	begin
		$monitor("A=%d,Anew=%d",A,Anew);
	end
	
	initial
	begin
		A=16'b0; #50;
		repeat(65535)
		begin
			A=A+1; #50;
		end
	end
endmodule
