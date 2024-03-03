module Negator_16bit_tb();

	reg [15:0] x;
	wire [15:0] notx;
	
	Negator_16bit nvv(x,notx);
	
	initial
	begin
		x=0;#50;
		repeat(65535)
		begin
			x=x+1;
			#50;
		end
	end
endmodule
