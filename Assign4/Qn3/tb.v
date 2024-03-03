module tb();
	reg in,reset,Clk;
	wire outp;
	
	FSM ghq(in,reset,Clk,outp);
	
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
		reset=1;
		#10 in=0;
		#10 reset=0;
		#10 in=0;
		#10 in=1;
		#10 in=0;
		#10 in=1;
		#10 in=1;
		#10 in=0;
		#10 in=0;
		#10 reset=1;
		#10 in=1;
		#10 in=0;
		#10 reset=0;
		#10 in=1;
		#10 in=1;
		#10 in=0;
		#20 $stop;
	end
endmodule