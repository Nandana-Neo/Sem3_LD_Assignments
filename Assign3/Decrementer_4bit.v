///////TOP MODULE///////
module Decrementer_4bit(A,Anew);

	input [3:0] A;
	output [3:0]Anew;
	
	wire c1,c2,c3,c4;
	Full_Adder FA0(1'b1,A[0],1'b0,Anew[0],c1);
	Full_Adder FA1(1'b1,A[1],c1,Anew[1],c2);
	Full_Adder FA2(1'b1,A[2],c2,Anew[2],c3);
	Full_Adder FA3(1'b1,A[3],c3,Anew[3],c4);
	
	
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