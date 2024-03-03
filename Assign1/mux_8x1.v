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
