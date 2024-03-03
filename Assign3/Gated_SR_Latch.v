module Gated_SR_Latch(En,S,R,Q,Qn);
	
	input S,R,En;
	output Q,Qn;
	wire Snew,Rnew,Sdash,Rdash;
	
	nand g12(Snew,En,Sdash);
	nand g13(Rnew,En,Rdash);
	nand g1(Q,Snew,Qn);
	nand g2(Qn,Rnew,Q);
	
	Mux_4x1 g3(S,S,S,1'bx,S,R,Sdash);
	Mux_4x1 g4(R,R,R,1'bx,S,R,Rdash);
endmodule

/*module Gated_SR_Latch(En,S,R,Q,Qn);
	
	input S,R,En;
	output Q,Qn;
	wire Snew,Rnew;
	
	nand g12(Snew,En,S);
	nand g13(Rnew,En,R);
	nand g1(Q,Snew,Qn);
	nand g2(Qn,Rnew,Q);
	
endmodule*/

///////////////2x1 MULTIPLEXER///////////////////
module Mux_2x1(data0,data1,select,out);

	//INPUT OUTPUT DECLARATIONS
	input data0,data1,select;
	output out;
	
	wire notsel,w0,w1;
	
	//NOT GATE
	notg N1(notsel,select);
	
	//AND GATES
	andg A0(w0,notsel,data0);
	andg A1(w1,select,data1);
	
	//FINAL OUTPUT
	org O(out,w0,w1);
	
endmodule

//////////////4X1 MULTIPLEXER//////////////////////
module Mux_4x1(data0,data1,data2,data3,s1,s0,out);

	//INPUT OUTPUT DECLARATIONS
	input data0,data1,data2,data3,s1,s0;
	output out;
	
	wire w0,w1;
	
	//using 2x1 muxes
	Mux_2x1 M0(data0,data1,s0,w0);
	Mux_2x1 M1(data2,data3,s0,w1);
	Mux_2x1 M3(w0,w1,s1,out);

endmodule

/////////////////////GATES//////////////////////////

////////////OR//////////////
module org(output ans, input a,b);
	wire notans;
	nor g110(notans,a,b);
	nor g111(ans,notans,notans);
endmodule

///////////AND/////////////
module andg(output ans,input a,b);
	wire nota,notb;
	nor ga0(nota,a,a);
	nor ga1(notb,b,b);
	nor ga2(ans,nota,notb);
endmodule

///////////NOT//////////
module notg(output ans,input a);
	nor fgf1(ans,a,a);
endmodule
