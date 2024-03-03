module ripple_carry_adder_8_bit_tb();
	
	//Input and output declarations
	reg [7:0] num1,num2;
	wire [7:0]Sum;
	wire carry;
	
	//Instantiation
	ripple_carry_adder_8_bit RCA(.A(num1),.B(num2),.Sum(Sum),.c8(carry));
	integer countA,countB;
	
	//Test Cases
	initial
		begin
		for(countA=9'd0;countA<256;countA=countA+1)
			begin
			num1=countA;
			for(countB=9'd0;countB<256;countB=countB+1)
				begin
				num2=countB;
				#50;
				end
			end
		end
endmodule
