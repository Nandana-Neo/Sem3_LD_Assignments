module tb();
	reg Clk,PRE,CLR,D;
	wire Q,Qbar;
	
	DFFpc g1(PRE,CLR,D,Clk,Q,Qbar);
	
	initial
	begin
		Clk=1;
		forever
			#5 Clk=!Clk;
	end
	
	initial
	begin
		D=0;
		PRE=0;
		CLR=0;
		
		#10 D=1;
		#10 D=0;
		#10 PRE=1;
		#10 CLR=1;
		#10 PRE=0;
		#10 CLR=0;
		#10 D=1;
		#10 PRE=1;
		#10 CLR=1;
		#10 PRE=0;
		#10 CLR=0;
		#10;
		$finish;
	end
endmodule