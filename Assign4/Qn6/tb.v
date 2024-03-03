module tb();
	
	//Inputs
	reg in_data,reset,Clk;
	
	//Outputs
	wire [7:0] data;
	
	//Instantiation
	Shift_reg8 gq(in_data,reset,Clk, data);
	
	initial
	begin
		Clk=0;
		forever
		begin
			#5 Clk=~Clk;
		end
	end
	
	initial
	begin
		in_data=0;
		#10;
		reset=0;
		#10 in_data=1;
		#10 in_data=0;
		#10 in_data=1;
		#10 in_data=1;
		#10 reset=1;
		#10 in_data=1;
		#10 reset=0;
		#10 in_data=0;
		#10 in_data=1;
		#10 in_data=1;
		#10 in_data=1;
		#10 in_data=1;
		#10 in_data=0;
		#10 in_data=1;
		#10 in_data=1;
		#10;
		$finish;
	end
endmodule
