module full_subtractor_tb();

	//input output declarations
	reg A,B,Bin;
	wire D,Bout;
	
	//Instantiation
	full_subtractor FS(.num1(A),.num2(B),.bin(Bin),.diff(D),.bout(Bout));
	
	//Test Cases
	initial
	begin
		A=0;
		repeat(2)
		begin
			B=0;
			repeat(2)
			begin
				Bin=0;#50;
				Bin=1;#50;
				B=1;
			end
			A=1;
		end
	end
endmodule
