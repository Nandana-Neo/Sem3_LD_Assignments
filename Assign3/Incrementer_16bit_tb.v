module Incrementer_16bit_tb();

	reg [15:0] A;
	wire Cout;
	wire [15:0] Anew;
	
	//Instantiation
	Incrementer_16bit hghgh(A,Cout,Anew);
	
	//Test Vectors
	/*initial
	begin
		$monitor("A=%d,Anew=%d",A,Anew);
	end
	*/
	initial
	begin
		A=0;#50;
		repeat(65535)
		begin
			A=A+1;#50;
		end
	end
endmodule
			