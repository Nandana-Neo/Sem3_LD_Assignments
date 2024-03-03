//////TOP MODULE////////
module Incrementer_16bit(A,Cout,Anew);

	input [15:0] A;
	output [15:0] Anew;
	output Cout;
	wire carry;
	
	HA_8bit ghat1(A[7:0],1'b1,carry,Anew[7:0]);
	HA_8bit ghat2(A[15:8],carry,Cout,Anew[15:8]);
	
endmodule

//////Half Adder 8 bit///////
module HA_8bit(A,Cin,Cout,ansA);

	input Cin;
	input [7:0] A;
	output Cout;
	output [7:0] ansA;
	
	wire carry;
	
	HA_4bit gha1(A[3:0],Cin,carry,ansA[3:0]);
	HA_4bit gha2(A[7:4],carry,Cout,ansA[7:4]);
	
endmodule

//////Half Adder 4 bit//////
module HA_4bit(A,Cin,Cout,finalans);

	input Cin;
	input [3:0] A;
	output Cout;
	output [3:0]finalans;
	wire c1,c2,c3;
	
	Half_Adder ha0(A[0],Cin,finalans[0],c1);
	Half_Adder ha1(A[1],c1,finalans[1],c2);
	Half_Adder ha2(A[2],c2,finalans[2],c3);
	Half_Adder ha3(A[3],c3,finalans[3],Cout);
	
endmodule

///////Half Adder//////
module Half_Adder(a,b,s,c);

	input a,b;
	output s,c;
	
	xorg g1(s,a,b);
	andg g2(c,a,b);
	
endmodule

///OR GATE/////
module xorg(output ans,input a,b);

	wire w1,w2,w3;
	nand t1(w1,a,b);
	nand t2(w2,a,w1);
	nand t3(w3,b,w1);
	nand t4(ans,w2,w3);
	
endmodule 

/////AND Gate////
module andg(output ans,input a,b);

	wire w1;
	nand h1(w1,a,b);
	nand h2(ans,w1,w1);

endmodule
