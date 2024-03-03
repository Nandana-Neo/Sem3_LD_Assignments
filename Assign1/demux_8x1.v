////////////////1x2 demux////////////////////////
module demux_2x1(data,s,Y0,Y1);
	//INPUT AND OUTPUT DECLARATIONS
	input data,s;
	output Y0,Y1;
	wire nots;
	
	//NEW OPERATIONS
	not A0(nots,s);
	and A1(Y0,nots,data);
	and A2(Y1,s,data);

endmodule 

////////////////1x4 demux////////////////////////
module demux_4x1(data,sel0,sel1,Y0,Y1,Y2,Y3);
	//INPUT AND OUTPUT DECLARATIONS
	input data,sel0,sel1;
	output Y0,Y1,Y2,Y3;
	wire k0,k1;
	
	//OPERATIIONS
	demux_2x1 demux1(.data(data),.s(sel1),.Y0(k0),.Y1(k1));
	demux_2x1 demux2(.data(k0),.s(sel0),.Y0(Y0),.Y1(Y1));
	demux_2x1 demux3(.data(k1),.s(sel0),.Y0(Y2),.Y1(Y3));
	
endmodule

////////////////1x8 demux////////////////////////
module demux_8x1(D,s0,s1,s2,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
	//INPUT AND OUTPUT DECLARATIONS
	input D,s0,s1,s2;
	output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
	wire k0,k1;
	
	//OPERATIONS
	demux_2x1 DM1(.data(D),.s(s2),.Y0(k0),.Y1(k1));
	demux_4x1 DM2(.data(k0),.sel0(s0),.sel1(s1),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3));
	demux_4x1 DM3(.data(k1),.sel0(s0),.sel1(s1),.Y0(Y4),.Y1(Y5),.Y2(Y6),.Y3(Y7));
	
endmodule
