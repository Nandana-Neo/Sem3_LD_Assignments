///////////HALF ADDER////////////////

module half_adder(a,b,sum,carry);

	input a,b;
	output sum,carry;
	
	xor X(sum,a,b);
	and A(carry,a,b);
	
endmodule

//modules			=fns
//toplevel entity	=main fn
//gate				=built in fn
//3 types of modelling
//2 data types-reg,wire

///////////FULL ADDER///////////////

module full_adder(m,n,cin,s,c);

	or O(c,q,r);
	
	input m,n,cin;
	output c,s;
	
	wire p,q,r;//connections
	
	half_adder HA0(m,n,p,q);//Positional assoc
	
	half_adder HA1(.a(p),.b(cin),.sum(s),.carry(r));//Named assoc
	
	
	
endmodule
/////////////RIPPLE CARRY ADDER 4 BIT///////////////
module proj1(A,B,Sum,C4);
	
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
/////TB/////////////////////////////////////////////////
module ripple_carry_adder_4_bit_tb();
	
	//Input and output declarations
	reg [3:0] num1,num2;
	wire [3:0]Sum;
	wire carry;
	
	//Instantiation
	ripple_carry_adder_4_bit RCA(.A(num1),.B(num2),.Sum(Sum),.C4(carry));
	integer countA,countB;
	
	//Test Cases
	initial
		begin
		for(countA=0;countA<16;countA=countA+1)
			begin
			num1=countA;
			for(countB=0;countB<16;countB=countB+1)
				begin
				num2=countB;
				#50;
				$display ("A = %d, B = %d, Sum = %d, Carry = %d", num1, num2, Sum, carry);
				end
			end
		end
endmodule
