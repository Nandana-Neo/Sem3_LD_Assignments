module tb();

	//inputs
	reg Clk,CLR,PRE,D;
	//outputs
	wire Q,Qbar;
	
	//Instantiation
	DFFlevel jhj(PRE,CLR,D,Clk,Q,Qbar);
	
	//Clock generation
	initial
	begin
		Clk=0;
		forever
		begin
			#5 Clk=~Clk;
		end
	end
	
	//Test Vectors
	initial
	begin
		PRE=0;
		CLR=0;
		D=0;
		#10 D=1;
		#10 D=0;
		#10 PRE=1;
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
		$stop;
	end
endmodule
	