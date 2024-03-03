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

/////////////RIPPLE CARRY ADDER 4 BIT///////////////
module ripple_carry_adder(A,B,Sum,C4);
	
	//INPUT AND OUTPUT DECLARATIONS
	input [3:0] A,B;
	output C4;
	output [3:0] Sum;
	wire c1,c2,c3;
	
	//Operations
	full_adder FA0(.m(A[0]),.n(B[0]),.cin(1'b0),.s(Sum[0]),.c(c1));
	full_adder FA1(.m(A[1]),.n(B[1]),.cin(c1),.s(Sum[1]),.c(c2));
	full_adder FA2(.m(A[2]),.n(B[2]),.cin(c2),.s(Sum[2]),.c(c3));
	full_adder FA3(.m(A[3]),.n(B[3]),.cin(c3),.s(Sum[3]),.c(C4));
	
endmodule 