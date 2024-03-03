///////////HALF ADDER////////////////

module half_adder(a,b,sum,carry);

	input a,b;
	output sum,carry;
	and A(carry,a,b);
	xor X(sum,a,b);

endmodule

//////////4 BIT ADDER USING HALF ADDERS/////////////
module half_adder_4_bit(A,B,S,C4);

	input [3:0] A;
	input [3:0] B;
	output [3:0] S;
	output C4;
	wire C1,C2,C3,s1,s2,s3,carry1,carry2,carry3,w1,w2,w3;
	
	//Adder for zeroth bit
	half_adder HA0(A[0],B[0],S[0],C1);
	
	//Adder for 1st bit
	half_adder HA1(C1,A[1],s1,carry1);
	half_adder HA2(s1,B[1],S[1],w1);
	or OR0(C2,carry1,w1);
	
	//Adder for 2nd bit
	half_adder HA3(C2,A[2],s2,carry2);
	half_adder HA4(s2,B[2],S[2],w2);
	or OR1(C3,carry2,w2);
	
	//Adder for 3rd bit
	half_adder HA5(C3,A[3],s3,carry3);
	half_adder HA6(s3,B[3],S[3],w3);
	or OR2(C4,carry3,w3);
	
endmodule
