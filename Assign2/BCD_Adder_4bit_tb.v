module BCD_Adder_4bit_tb();
	reg [3:0] A,B;
	wire [4:0] Sum;
	
	BCD_Adder_4bit G1(A,B,0,Sum);
	initial
	begin
		for(A=0;A<10;A=A+1)
		begin
			for(B=0;B<10;B=B+1)
			begin
				#50;
			end
		end
	end
endmodule
