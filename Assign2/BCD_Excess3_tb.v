module BCD_Excess3_tb();

	integer num;
	reg [3:0] BCD;
	wire [3:0] X;
	
	//Instantiation
	BCD_Excess3 B1(BCD,X);
	
	//Test Cases
	initial
	begin
		for(num=0;num<16;num=num+1)
		begin
			BCD=num;
			#50;
		end
	end
endmodule
