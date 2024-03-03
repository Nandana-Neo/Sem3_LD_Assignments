module Decrementer_16bit(A,Anew);
	
	input [15:0]A;
	output [15:0]Anew;
	
	wire carry;
	
	Full_Adder_16bit gate1(A,16'b1111111111111111,1'b0,Anew,carry);
	
endmodule

/////16 bit adder//////
module Full_Adder_16bit(a,b,cin,s,cout);
	input [15:0] a,b;
	input cin;
	output cout;
	output [15:0]s;
	
	wire c1;
	
	Full_Adder_8bit FA801(a[7:0],b[7:0],cin,s[7:0],c1);
	Full_Adder_8bit FA802(a[15:8],b[15:8],c1,s[15:8],cout);
	
endmodule

///// 8 bit adder/////////
module Full_Adder_8bit(a,b,cin,s,cout);
	input [7:0] a,b;
	input cin;
	output cout;
	output [7:0]s;
	
	wire c1;
	
	Full_Adder_4bit FAAAA1(a[3:0],b[3:0],cin,s[3:0],c1);
	Full_Adder_4bit FAAAA2(a[7:4],b[7:4],c1,s[7:4],cout);
	
endmodule

///// 4 BIT FULL ADDER/////
module Full_Adder_4bit(a,b,cin,s,cout);

	input [3:0]a,b;
	input cin;
	output [3:0] s;
	output cout;
	
	wire c1,c2,c3;
	
	Full_Adder FAA0(a[0],b[0],cin,s[0],c1);
	Full_Adder FAA1(a[1],b[1],c1,s[1],c2);
	Full_Adder FAA2(a[2],b[2],c2,s[2],c3);
	Full_Adder FAA3(a[3],b[3],c3,s[3],cout);
	
endmodule
	
	
//////FULL ADDER///////
module Full_Adder(input a,b,cin,output s,c);

	wire p,g,w1;
	Half_Adder tt1(a,b,p,g);
	Half_Adder tt2(p,cin,s,w1);
	org tt3(c,w1,g);
	
endmodule

/////HALF ADDER////////
module Half_Adder(a,b,s,c);

	input a,b;
	output s,c;
	
	xorg g1(s,a,b);
	andg g2(c,a,b);
	
endmodule

//////OR GATE////
module org(output ans,input a,b);

	wire nota,notb;
	notg f1(nota,a);
	notg f2(notb,b);
	nand f3(ans,nota,notb);
	
endmodule
	
////////NOT GATE/////	
module notg(output ans,input a);

	nand g1(ans,a,a);
	
endmodule

////XOR GATE///////
module xorg(output ans,input a,b);

	wire w1,w2,w3;
	nand t1(w1,a,b);
	nand t2(w2,a,w1);
	nand t3(w3,b,w1);
	nand t4(ans,w2,w3);
	
endmodule 

///////AND GATE//////
module andg(output ans,input a,b);

	wire w1;
	nand h1(w1,a,b);
	nand h2(ans,w1,w1);

endmodule