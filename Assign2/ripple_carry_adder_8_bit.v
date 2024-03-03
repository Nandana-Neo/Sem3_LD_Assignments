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
module ripple_carry_adder_8_bit(A,B,Sum,c8);
	
	//INPUT AND OUTPUT DECLARATIONS
	input [7:0] A,B;
	output c8;
	output [7:0] Sum;
	wire c1,c2,c3,c4,c5,c6,c7;
	
	//Operations
	full_adder FA0(.m(A[0]),.n(B[0]),.cin(1'b0),.s(Sum[0]),.c(c1));
	full_adder FA1(.m(A[1]),.n(B[1]),.cin(c1),.s(Sum[1]),.c(c2));
	full_adder FA2(.m(A[2]),.n(B[2]),.cin(c2),.s(Sum[2]),.c(c3));
	full_adder FA3(.m(A[3]),.n(B[3]),.cin(c3),.s(Sum[3]),.c(c4));
	full_adder FA4(.m(A[4]),.n(B[4]),.cin(c4),.s(Sum[4]),.c(c5));
	full_adder FA5(.m(A[5]),.n(B[5]),.cin(c5),.s(Sum[5]),.c(c6));
	full_adder FA6(.m(A[6]),.n(B[6]),.cin(c6),.s(Sum[6]),.c(c7));
	full_adder FA7(.m(A[7]),.n(B[7]),.cin(c7),.s(Sum[7]),.c(c8));
	
endmodule 