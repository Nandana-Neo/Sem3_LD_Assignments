module half_adder_4_bit_tb();

	//Input Output Declarations
	reg [3:0] A,B;
	wire [3:0] S;
	wire C;
	integer countA,countB;
	
	//Instantiation
	half_adder_4_bit HA(A,B,S,C);
	
	//Test Vector
	initial
		begin
		for(countA=4'd0;countA<16;countA=countA+1)
			begin
			A=countA;
			for(countB=4'd0;countB<16;countB=countB+1)
				begin
				B=countB;
				#50;
				end
			end
		end
	
endmodule	