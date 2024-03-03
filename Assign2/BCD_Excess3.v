///////////////2x1 MULTIPLEXER///////////////////
module Mux_2x1(data0,data1,select,out);

	//INPUT OUTPUT DECLARATIONS
	input data0,data1,select;
	output out;
	
	wire notsel,w0,w1;
	
	//NOT GATE
	not N1(notsel,select);
	
	//AND GATES
	and A0(w0,notsel,data0);
	and A1(w1,select,data1);
	
	//FINAL OUTPUT
	or O(out,w0,w1);
	
endmodule

//////////Converter////////////////////
module BCD_Excess3(BCD,Xs);

	//Input and output
	input [3:0] BCD;
	output [3:0] Xs;
	wire w1,w2,x1,k1,k2,K;
	wire [3:0] X;
	
	//Operations
	and G1(w1,BCD[2],BCD[1]);
	and G2(w2,BCD[2],BCD[0]);
	or G3(X[3],w1,w2,BCD[3]);
	
	or G4(x1,BCD[1],BCD[0]);
	xor G5(X[2],x1,BCD[2]);
	
	xnor G6(X[1],BCD[1],BCD[0]);
	
	not G7(X[0],BCD[0]);
	
	and G8(k1,BCD[3],BCD[2]);
	and G9(k2,BCD[3],BCD[1]);
	or G10(K,k1,k2); //Will be 1 if input>9
	Mux_2x1 m0(X[0],1'bx,K,Xs[0]);
	Mux_2x1 m1(X[1],1'bx,K,Xs[1]);
	Mux_2x1 m2(X[2],1'bx,K,Xs[2]);
	Mux_2x1 m3(X[3],1'bx,K,Xs[3]);
	
endmodule
