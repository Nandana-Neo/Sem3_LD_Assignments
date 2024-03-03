module tb();
	
	//input
	reg Clk,reset,load;
	reg [7:0] data_in;
	
	//output
	wire  [7:0]data;
	
	//module instantantion
	Reg_8bit ggj(data_in,load,reset,Clk,data);
	
	//Clock
	initial
	begin
		Clk=0;
		forever
		begin
			# 5 Clk=~Clk;
		end
	end
	
	//Test vectors
	initial
	begin
		reset=0;
		load=0;
		#10 data_in=8'b11010011;
		#10 load=1;
		#10 reset=1;
		#10 reset=0;
		#10 data_in=8'b10101010;
		#10 load=0;
		#10 data_in=8'b11111110;
		#10;
		$finish;
	end
endmodule
