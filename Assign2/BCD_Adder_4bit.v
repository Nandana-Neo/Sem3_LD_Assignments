///////////HALF ADDER////////////////

module half_adder(a,b,sum,carry);

	input a,b;
	output sum,carry;
	and A(carry,a,b);
	xor X(sum,a,b);

endmodule

///////////FULL ADDER///////////////

module full_adder(m,n,cin,s,c);

	input m,n,cin;
	output c,s;
	wire p,q,r;
	
	half_adder HA0(.a(m),.b(n),.sum(p),.carry(q));
	half_adder HA1(.a(p),.b(cin),.sum(s),.carry(r));
	or O(c,q,r);
	
endmodule

/////////////ADDER 4 BIT///////////////
module Adder_4_bit(A,B,cin,Sum,C4);
	
	//INPUT AND OUTPUT DECLARATIONS
	input [3:0] A,B;
	input cin;
	output C4;
	output [3:0] Sum;
	wire c1,c2,c3;
	
	//Operations
	full_adder FA0(.m(A[0]),.n(B[0]),.cin(cin),.s(Sum[0]),.c(c1));
	full_adder FA1(.m(A[1]),.n(B[1]),.cin(c1),.s(Sum[1]),.c(c2));
	full_adder FA2(.m(A[2]),.n(B[2]),.cin(c2),.s(Sum[2]),.c(c3));
	full_adder FA3(.m(A[3]),.n(B[3]),.cin(c3),.s(Sum[3]),.c(C4));
	
endmodule 

/////////BCD ADDER////////////
module BCD_Adder_4bit(A,B,cin,Sum);

	input [3:0]A,B;
	input cin;
	output [4:0]Sum;
	wire k1,k2,k3,k4,K;
	wire [3:0]temp,extra;
	
	Adder_4_bit G1(A,B,cin,temp,k1);
	and G2(k2,temp[2],temp[3]);
	and G3(k3,temp[1],temp[3]);
	or G4(K,k1,k2,k3);
	buf G5(extra[0],0);
	buf G6(extra[1],K);
	buf G7(extra[2],K);
	buf G8(extra[3],0);
	Adder_4_bit G9(temp,extra,0,Sum[3:0],k4);
	buf G10(Sum[4],K);
	
endmodule
