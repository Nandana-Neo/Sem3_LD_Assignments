module half_subtractor_tb();
	
	//Input and ouput declarations
	reg A,B;
	wire Diff,Borrow;
	
	//Instantiation
	half_subtractor HS(A,B,Diff,Borrow);
	
   //Test Cases
	initial
	begin
		A=0;
		repeat(2)
		begin
			B=0;#50;
			B=1;#50;
			A=1;
		end
	end
endmodule
		