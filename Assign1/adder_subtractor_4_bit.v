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

/////////4-BIT ADDER SUBTRACTOR////////////

module adder_subtractor_4_bit(A,B,M,S,C4);
	input[3:0] A;
	input[3:0]B;
	input M;
	output [3:0]S;
	output C4;
	wire C1,C2,C3;
	wire W0,W1,W2,W3;
	
	xor X0(W0,M,B[0]);
	xor X1(W1,M,B[1]);
	xor X2(W2,M,B[2]);
	xor X3(W3,M,B[3]);
	
	full_adder FA0(.m(A[0]),.n(W0),.cin(M),.s(S[0]),.c(C1));
	full_adder FA1(.m(A[1]),.n(W1),.cin(C1),.s(S[1]),.c(C2));
	full_adder FA2(.m(A[2]),.n(W2),.cin(C2),.s(S[2]),.c(C3));
	full_adder FA3(.m(A[3]),.n(W3),.cin(C3),.s(S[3]),.c(C4));
	
endmodule 