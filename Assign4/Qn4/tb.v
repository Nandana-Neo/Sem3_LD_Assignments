module tb();

	//input
	reg [3:0] A,B;
	//output
	wire [7:0] Ans;
	
	//Instantiation
	Multiplier gate2(A,B,Ans);
	
	//Test Vectors
	initial
	begin
	A=4'd4; B=4'd3; #50;
	A=4'd15; B=4'd1; #50;
	A=4'd0;B=4'd11;#50;
	A=4'd10;B=4'd11;#50;
	A=4'd14;B=4'd9;#50;
	end
	
endmodule
