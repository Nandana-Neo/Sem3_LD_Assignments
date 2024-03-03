module  Negator_4bit(input [3:0] A,output [3:0] notA);

	Negator_2bit ggate1(A[1:0],notA[1:0]);
	Negator_2bit ggate2(A[3:2],notA[3:2]);

endmodule

////////2 bit negator/////////	
module Negator_2bit(input [1:0]A,output [1:0] notA);
	notg gate1(notA[1],A[1]);
	notg gate2(notA[0],A[0]);
endmodule


////////NOT GATE/////	
module notg(output ans,input a);

	nand g1(ans,a,a);
	
endmodule
