module ripple_carry_adder_tb();
	
	//Input and output declarations
	reg [3:0] num1,num2;
	wire [3:0]Sum;
	wire carry;
	
	//Instantiation
	ripple_carry_adder RCA(.A(num1),.B(num2),.Sum(Sum),.C4(carry));
	integer cntA,cntB;
	
	//Test Cases
	initial
		begin
		for(cntA=5'd0;cntA<=15;cntA=cntA+1)
			begin
			for(cntB=5'd0;cntB<=15;cntB=cntB+1)
				begin
				num1=cntA;
				num2=cntB;
				#50;
				end
			end
		end
endmodule
