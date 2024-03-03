module ripple_carry_adder_4_bit_tb();
	
	//Input and output declarations
	reg [3:0] num1,num2;
	wire [3:0]Sum;
	wire carry;
	
	//Instantiation
	ripple_carry_adder_4_bit RCA(.A(num1),.B(num2),.Sum(Sum),.C4(carry));
	integer countA,countB;
	
	//Test Cases
	initial
		begin
		for(countA=5'd0;countA<16;countA=countA+1)
			begin
			num1=countA;
			for(countB=5'd0;countB<16;countB=countB+1)
				begin
				num2=countB;
				#50;
				end
			end
		end
endmodule
