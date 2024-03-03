//Right Sift register SIPO
module Shift_reg8(input in_data,reset,Clk,
					   output reg [7:0] data);
	
	always@(posedge Clk or posedge reset)
	begin
	
		if(reset==1)
		begin
			data<=8'b00000000;
		end
		
		else
		begin
			data<={in_data,data[7:1]};
		end
		
	end
	
endmodule
