module Incrementer_4bit(A,Cout,finalans);

	input [3:0] A;
	output Cout;
	output [3:0]finalans;
	wire c1,c2,c3;
	
	Half_Adder ha0(A[0],1'b1,finalans[0],c1);
	Half_Adder ha1(A[1],c1,finalans[1],c2);
	Half_Adder ha2(A[2],c2,finalans[2],c3);
	Half_Adder ha3(A[3],c3,finalans[3],Cout);
	
endmodule

module Half_Adder(a,b,s,c);
	input a,b;
	output s,c;
	
	xorg g1(s,a,b);
	andg g2(c,a,b);
endmodule

module xorg(output ans,input a,b);

	wire w1,w2,w3;
	nand t1(w1,a,b);
	nand t2(w2,a,w1);
	nand t3(w3,b,w1);
	nand t4(ans,w2,w3);
	
endmodule 

module andg(output ans,input a,b);

	wire w1;
	nand h1(w1,a,b);
	nand h2(ans,w1,w1);

endmodule
