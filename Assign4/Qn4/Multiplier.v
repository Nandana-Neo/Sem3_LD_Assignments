module Multiplier(A,B,Ans);
	
	input [3:0] A,B;
	output reg [7:0] Ans;
	integer i;
	reg [6:0] NumA;
	
	always@(A,B)
	begin
		Ans=8'd0;
		//Through B
		for(i=0;i<=3;i=i+1)
		begin
			if(B[i]==1)
			begin
				NumA=A<<i;
				{Ans[7],Ans[6:0]}=NumA+Ans[6:0];
			end
		end
	end
endmodule

/*
module Multiplier(A,B,Ans);
	
	input [3:0] A,B;
	output [7:0] Ans;
	
	reg [6:0]X,Y,Z,W;
	wire [6:0]temp1,temp2;
	wire [2:0]c;
	
	always@*
	begin
		if(B[0]==1)
		begin
			X={3'd0,A};
		end
		else X=7'd0;
		if(B[1]==1)
		begin
			Y={3'd0,A}<<1;
		end
		else Y=7'd0;
		if(B[2]==1)
		begin
			Z={3'd0,A}<<2;
		end
		else Z=7'd0;
		if(B[3]==1)
		begin
			W={3'd0,A}<<3;
		end
		else W=7'd0;
	end
	FullAdder FA0(X,Y,temp1,c[0]);
	FullAdder FA1(temp1,Z,temp2,c[1]);
	FullAdder FA2(temp2,W,Ans[6:0],Ans[7]);
	
endmodule

//7 bit full adder
module FullAdder(A,B,Sum,carry);
	input [6:0] A,B;
	output reg [6:0]Sum;
	output reg carry;
	
	always@*
	begin
	{carry,Sum}=A+B;
	end
	
endmodule*/
