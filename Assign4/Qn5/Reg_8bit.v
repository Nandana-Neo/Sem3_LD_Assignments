//Parallel in parallel out
//Load is synchrocnous set
module Reg_8bit(data_in,load,reset,Clk,stored);

	//inputs and outputs
	input [7:0] data_in;
	input load,reset;
	input Clk;
	output reg [7:0] stored;
	
	//Function
	always@(posedge Clk or posedge reset)
	begin
		
		if(reset==1)
		begin
			stored<=8'd0;
		end
	
		else if(load==1)
		begin
			stored<=data_in;
		end
		
	end
	
endmodule
