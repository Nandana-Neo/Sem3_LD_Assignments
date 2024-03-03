/*Here it is assumed that all operations are done on numbers in 2's complement form*/

////////////////////////////////////TOP MODULE////////////////////////////////////////////////////////////////////////////////

module ALU(x,y,sel,ans);
	input [15:0]x,y;
	input [3:0] sel;
	output [15:0] ans;

	
	wire [15:0] a_sum,b_diff,c_diff,d,e,f,g,h,i,j,k_ans,l_ans,m_ans,n_ans,o,p;
	wire a_carry,k_carry,l_carry;
	
	///Option a///
	a_sumof wer0(x,y,a_sum,a_carry);
	
	///Option b///
	diffof wer1(x,y,b_diff);
	
	///Option c///
	diffof wer2(y,x,c_diff);
	
	///Option d///
	zeroing wer3(d,x);
	
	///Option e///
	oneing wer4(e,x);
	
	///Option f///
	minusoneing wer5(f,x);
	
	///Option g///
	negation wer6(g,x);

	///Option h///
	negation wer7(h,y);
	
	///Option i///
	not_16bit wer8(x,i);
	
	///Option j///
	not_16bit wer9(y,j);
	
	///Option k///
	incrementer wer10(x,k_ans,k_carry);
	
	///Option l///
	incrementer wer11(y,l_ans,l_carry);
	
	///Option m///
	decrementer wer12(x,m_ans);
	
	///Option n///
	decrementer wer13(y,n_ans);
	
	///Option o///
	theand_16 wer14(o,x,y);
	
	///Option p///
	theor_16 wer15(p,x,y);
	
	////////For Selection///////
	mux_16x1 wer160(a_sum[0],b_diff[0],c_diff[0],d[0],e[0],f[0],g[0],h[0],i[0],j[0],k_ans[0],l_ans[0],m_ans[0],n_ans[0],o[0],p[0],sel[0],sel[1],sel[2],sel[3],ans[0]);
	mux_16x1 wer161(a_sum[1],b_diff[1],c_diff[1],d[1],e[1],f[1],g[1],h[1],i[1],j[1],k_ans[1],l_ans[1],m_ans[1],n_ans[1],o[1],p[1],sel[0],sel[1],sel[2],sel[3],ans[1]);
	mux_16x1 wer162(a_sum[2],b_diff[2],c_diff[2],d[2],e[2],f[2],g[2],h[2],i[2],j[2],k_ans[2],l_ans[2],m_ans[2],n_ans[2],o[2],p[2],sel[0],sel[1],sel[2],sel[3],ans[2]);
	mux_16x1 wer163(a_sum[3],b_diff[3],c_diff[3],d[3],e[3],f[3],g[3],h[3],i[3],j[3],k_ans[3],l_ans[3],m_ans[3],n_ans[3],o[3],p[3],sel[0],sel[1],sel[2],sel[3],ans[3]);
	
	mux_16x1 wer164(a_sum[4],b_diff[4],c_diff[4],d[4],e[4],f[4],g[4],h[4],i[4],j[4],k_ans[4],l_ans[4],m_ans[4],n_ans[4],o[4],p[4],sel[0],sel[1],sel[2],sel[3],ans[4]);
	mux_16x1 wer165(a_sum[5],b_diff[5],c_diff[5],d[5],e[5],f[5],g[5],h[5],i[5],j[5],k_ans[5],l_ans[5],m_ans[5],n_ans[5],o[5],p[5],sel[0],sel[1],sel[2],sel[3],ans[5]);
	mux_16x1 wer166(a_sum[6],b_diff[6],c_diff[6],d[6],e[6],f[6],g[6],h[6],i[6],j[6],k_ans[6],l_ans[6],m_ans[6],n_ans[6],o[6],p[6],sel[0],sel[1],sel[2],sel[3],ans[6]);
	mux_16x1 wer167(a_sum[7],b_diff[7],c_diff[7],d[7],e[7],f[7],g[7],h[7],i[7],j[7],k_ans[7],l_ans[7],m_ans[7],n_ans[7],o[7],p[7],sel[0],sel[1],sel[2],sel[3],ans[7]);

	mux_16x1 wer168(a_sum[8],b_diff[8],c_diff[8],d[8],e[8],f[8],g[8],h[8],i[8],j[8],k_ans[8],l_ans[8],m_ans[8],n_ans[8],o[8],p[8],sel[0],sel[1],sel[2],sel[3],ans[8]);
	mux_16x1 wer169(a_sum[9],b_diff[9],c_diff[9],d[9],e[9],f[9],g[9],h[9],i[9],j[9],k_ans[9],l_ans[9],m_ans[9],n_ans[9],o[9],p[9],sel[0],sel[1],sel[2],sel[3],ans[9]);
	mux_16x1 wer1610(a_sum[10],b_diff[10],c_diff[10],d[10],e[10],f[10],g[10],h[10],i[10],j[10],k_ans[10],l_ans[10],m_ans[10],n_ans[10],o[10],p[10],sel[0],sel[1],sel[2],sel[3],ans[10]);
	mux_16x1 wer1611(a_sum[11],b_diff[11],c_diff[11],d[11],e[11],f[11],g[11],h[11],i[11],j[11],k_ans[11],l_ans[11],m_ans[11],n_ans[11],o[11],p[11],sel[0],sel[1],sel[2],sel[3],ans[11]);
	
	mux_16x1 wer1612(a_sum[12],b_diff[12],c_diff[12],d[12],e[12],f[12],g[12],h[12],i[12],j[12],k_ans[12],l_ans[12],m_ans[12],n_ans[12],o[12],p[12],sel[0],sel[1],sel[2],sel[3],ans[12]);
	mux_16x1 wer1613(a_sum[13],b_diff[13],c_diff[13],d[13],e[13],f[13],g[13],h[13],i[13],j[13],k_ans[13],l_ans[13],m_ans[13],n_ans[13],o[13],p[13],sel[0],sel[1],sel[2],sel[3],ans[13]);
	mux_16x1 wer1614(a_sum[14],b_diff[14],c_diff[14],d[14],e[14],f[14],g[14],h[14],i[14],j[14],k_ans[14],l_ans[14],m_ans[14],n_ans[14],o[14],p[14],sel[0],sel[1],sel[2],sel[3],ans[14]);
	mux_16x1 wer1615(a_sum[15],b_diff[15],c_diff[15],d[15],e[15],f[15],g[15],h[15],i[15],j[15],k_ans[15],l_ans[15],m_ans[15],n_ans[15],o[15],p[15],sel[0],sel[1],sel[2],sel[3],ans[15]);
	
	/*mux_16x1 wer16carry(a_carry,1'bx,1'bx,1'bx,1'bx,1'bx,1'bx,1'bx,1'bx,1'bx,k_carry,l_carry,1'bx,1'bx,1'bx,1'bx,sel[0],sel[1],sel[2],sel[3],carry);*/


endmodule


//////////////////////////////////////(a) x+y////////////////////////////////////////////////////
module a_sumof(x,y,a_sum,a_carry);

	input [15:0]x,y;
	output a_carry;
	output [15:0] a_sum;
	
	wire c8;
	Adder_16bit AAAAddd(x,y,1'b0,a_sum,a_carry);
	
endmodule


module Adder_16bit(x,y,cin,a_sum,a_carry);
	input [15:0]x,y;
	input cin;
	output a_carry;
	output [15:0] a_sum;
	
	wire c8;
	
	ripple_carry_adder_8_bit RCA1(x[7:0],y[7:0],cin,a_sum[7:0],c8);
	ripple_carry_adder_8_bit RCA2(x[15:8],y[15:8],c8,a_sum[15:8],a_carry);
endmodule

////////////////////////////////////(b) x-y and (c) y-x////////////////////////////////////////////
module diffof(x,y,diff);	/*Considering max as 16 bit numbers*/

	input [15:0]x,y;
	output [15:0] diff;
	
	wire[15:0] noty;
	wire bout;
	not_16bit ghghgh1(y,noty);
	Adder_16bit Subtr(x,noty,1'b1,diff,bout);
	
endmodule

////////////////////////////////////(d) 0/////////////////////////////////////////////////////////
module zeroing(output[15:0] ans,input[15:0] a);

	theand_16 hereisand(ans,a,16'b0);
	
endmodule

////////////////////////////////////(e) 1//////////////////////////////////////////////////////////
module oneing(output [15:0] ans,input[15:0] x);
	org jnj(ans[0],x[0],1'b1);
	andg iamand1e(ans[1],x[1],1'b0);
	andg iamand2e(ans[2],x[2],1'b0);
	andg iamand3e(ans[3],x[3],1'b0);
	andg iamand4e(ans[4],x[4],1'b0);
	andg iamand5e(ans[5],x[5],1'b0);
	andg iamand6e(ans[6],x[6],1'b0);
	andg iamand7e(ans[7],x[7],1'b0);
	andg iamand8e(ans[8],x[8],1'b0);
	andg iamand9e(ans[9],x[9],1'b0);
	andg iamand10e(ans[10],x[10],1'b0);
	andg iamand11e(ans[11],x[11],1'b0);
	andg iamand12e(ans[12],x[12],1'b0);
	andg iamand13e(ans[13],x[13],1'b0);
	andg iamand14e(ans[14],x[14],1'b0);
	andg iamand15e(ans[15],x[15],1'b0);
endmodule
	
//////////////////////////////////// (f) -1 ////////////////////////////////////////////////////////
module minusoneing(output [15:0] ans,input[15:0] a);

	theor_16 hereor(ans,a,16'b1111_1111_1111_1111);
	
endmodule

/////////////////////////////////// (g) -x and (h)-y ///////////////////////////////////////////////
module negation(output[15:0] neg_x,input[15:0] x);

	wire [15:0] notx;
	wire cout;
	
	not_16bit gnotg1(x,notx);
	Adder_16bit gnotg2(notx,16'b1,1'b0,neg_x,cout);		/*Number is in 2's compement form*/
	
endmodule

////////////////////////////////////(i) !x and (j) !y /////////////////////////////////////////////
module not_16bit(input [15:0] A,output [15:0] notA);

	Negator_8bit nde1(A[7:0],notA[7:0]);
	Negator_8bit nde2(A[15:8],notA[15:8]);

endmodule

///////////////////////////////////(k) x+1 and (l) y+1 /////////////////////////////////////////////
module incrementer(A,Anew,Cout);
	input [15:0] A;
	output [15:0] Anew;
	output Cout;
	Adder_16bit ghgate1(A,16'b0,1'b1,Anew,Cout);
endmodule

/////////////////////////////////// (m) x-1 and (n) y-1/////////////////////////////////////////////////
module decrementer(A,Anew);	/*Considering max as 16 bit numbers*/
	input [15:0] A;
	output [15:0] Anew;
	wire bout;
	Adder_16bit ghgate2(A,16'b1111111111111111,1'b0,Anew,bout);
endmodule

////////////////////////////////////(o) x&y ///////////////////////////////////////////////////////
module theand_16(output [15:0]ans, input [15:0]x,y);
	andg iamand0(ans[0],x[0],y[0]);
	andg iamand1(ans[1],x[1],y[1]);
	andg iamand2(ans[2],x[2],y[2]);
	andg iamand3(ans[3],x[3],y[3]);
	andg iamand4(ans[4],x[4],y[4]);
	andg iamand5(ans[5],x[5],y[5]);
	andg iamand6(ans[6],x[6],y[6]);
	andg iamand7(ans[7],x[7],y[7]);
	andg iamand8(ans[8],x[8],y[8]);
	andg iamand9(ans[9],x[9],y[9]);
	andg iamand10(ans[10],x[10],y[10]);
	andg iamand11(ans[11],x[11],y[11]);
	andg iamand12(ans[12],x[12],y[12]);
	andg iamand13(ans[13],x[13],y[13]);
	andg iamand14(ans[14],x[14],y[14]);
	andg iamand15(ans[15],x[15],y[15]);
endmodule

////////////////////////////////////(p) x|y ///////////////////////////////////////////////////////
module theor_16(output [15:0]ans, input [15:0] x,y);
	org iamor0(ans[0],x[0],y[0]);
	org iamor1(ans[1],x[1],y[1]);
	org iamor2(ans[2],x[2],y[2]);
	org iamor3(ans[3],x[3],y[3]);
	org iamor4(ans[4],x[4],y[4]);
	org iamor5(ans[5],x[5],y[5]);
	org iamor6(ans[6],x[6],y[6]);
	org iamor7(ans[7],x[7],y[7]);
	org iamor8(ans[8],x[8],y[8]);
	org iamor9(ans[9],x[9],y[9]);
	org iamor10(ans[10],x[10],y[10]);
	org iamor11(ans[11],x[11],y[11]);
	org iamor12(ans[12],x[12],y[12]);
	org iamor13(ans[13],x[13],y[13]);
	org iamor14(ans[14],x[14],y[14]);
	org iamor15(ans[15],x[15],y[15]);
endmodule
	
///////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////FOR SELECTION/////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////

//////////////16x1 MULTIPLEXER////////////////////
module mux_16x1(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,sel0,sel1,sel2,sel3,ansfin);
	input I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,sel0,sel1,sel2,sel3;
	output ansfin;
	
	wire mux1,mux2;
	
	mux_8x1 zgate1(I0,I1,I2,I3,I4,I5,I6,I7,sel0,sel1,sel2,mux1);
	mux_8x1 zgate2(I8,I9,I10,I11,I12,I13,I14,I15,sel0,sel1,sel2,mux2);
	Mux_2x1 zgate3(mux1,mux2,sel3,ansfin);

endmodule

//////////////8X1 MULTIPLEXER//////////////////////
module mux_8x1(I0,I1,I2,I3,I4,I5,I6,I7,sel0,sel1,sel2,ansfin);
	
	//INPUT AND OUTPUT DECLARATIONS
	input  I0,I1,I2,I3,I4,I5,I6,I7,sel0,sel1,sel2;
	output ansfin;
	
	wire w0,w1;
	
	//using previous muxes
	Mux_4x1 M0(I0,I1,I2,I3,sel1,sel0,w0);
	Mux_4x1 M1(I4,I5,I6,I7,sel1,sel0,w1);
	Mux_2x1 M2(w0,w1,sel2,ansfin);
	
endmodule

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

///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////OTHER REQ MODULES//////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////

///8 bit negator///////
module  Negator_8bit(input [7:0] A,output [7:0] notA);

	Negator_4bit gghatee1(A[3:0],notA[3:0]);
	Negator_4bit gghatee2(A[7:4],notA[7:4]);

endmodule

////////////4 bit negator////////
module  Negator_4bit(input [3:0] A,output [3:0] notA);

	Negator_2bit ggatee1(A[1:0],notA[1:0]);
	Negator_2bit ggatee2(A[3:2],notA[3:2]);

endmodule

////////2 bit negator/////////	
module Negator_2bit(input [1:0]A,output [1:0] notA);
	notg gatee1(notA[1],A[1]);
	notg gatee2(notA[0],A[0]);
endmodule


///////////HALF ADDER////////////////

module half_adder(a,b,sum,carry);

	input a,b;
	output sum,carry;
	andg A(carry,a,b);
	xorg X(sum,a,b);

endmodule

///////////FULL ADDER///////////////

module full_adder(m,n,cin,s,c);

	input m,n,cin;
	output c,s;
	wire p,q,r;
	
	half_adder HA0(.a(m),.b(n),.sum(p),.carry(q));
	half_adder HA1(.a(p),.b(cin),.sum(s),.carry(r));
	org O(c,q,r);
	
endmodule

/////////////RIPPLE CARRY ADDER 8 BIT///////////////
module ripple_carry_adder_8_bit(A,B,Cin,Sum,c8);
	
	//INPUT AND OUTPUT DECLARATIONS
	input [7:0] A,B;
	input Cin;
	output c8;
	output [7:0] Sum;
	wire c1,c2,c3,c4,c5,c6,c7;
	
	//Operations
	full_adder FA0(.m(A[0]),.n(B[0]),.cin(Cin),.s(Sum[0]),.c(c1));
	full_adder FA1(.m(A[1]),.n(B[1]),.cin(c1),.s(Sum[1]),.c(c2));
	full_adder FA2(.m(A[2]),.n(B[2]),.cin(c2),.s(Sum[2]),.c(c3));
	full_adder FA3(.m(A[3]),.n(B[3]),.cin(c3),.s(Sum[3]),.c(c4));
	full_adder FA4(.m(A[4]),.n(B[4]),.cin(c4),.s(Sum[4]),.c(c5));
	full_adder FA5(.m(A[5]),.n(B[5]),.cin(c5),.s(Sum[5]),.c(c6));
	full_adder FA6(.m(A[6]),.n(B[6]),.cin(c6),.s(Sum[6]),.c(c7));
	full_adder FA7(.m(A[7]),.n(B[7]),.cin(c7),.s(Sum[7]),.c(c8));
	
endmodule 

///GATES///
///////XOR GATE////////
module xorg(output ans,input a,b);

	wire w1,w2,w3;
	nand t1(w1,a,b);
	nand t2(w2,a,w1);
	nand t3(w3,b,w1);
	nand t4(ans,w2,w3);
	
endmodule 

////AND GATE////
module andg(output ans,input a,b);

	wire w1;
	nand h1(w1,a,b);
	nand h2(ans,w1,w1);

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
