module adder_subtractor_4_bit_tb();

	//Input and output declarations
	reg [3:0] num1,num2;
	reg M;
	wire [3:0]ans;
	wire C4;
	//Instantiation
	adder_subtractor_4_bit AS(num1,num2,M,ans,C4);
	
	//Test Vector
	initial
		begin
		M=0;
		repeat(2)
			begin
			for(num1=4'b0000;num1<15;num1=num1+1)
				begin
				for(num2=4'b0000;num2<15;num2=num2+1)
					begin
					#50;
					end
				#50;		//Such that num2=15(1111) case wil be shown
				end
			for(num2=4'b0000;num2<15;num2=num2+1)	//After the prev for loop, num1 would be 1111
				begin
				#50;
				end
			#50;       //Such that num2=15(1111) case will be shown
			M=M+1;
			end
		end
			
endmodule 
		