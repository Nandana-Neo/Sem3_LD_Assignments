module DFFpc(input PRE,CLR,D,Clk,
				output reg Q,Qbar);
	always@(posedge Clk or posedge CLR or posedge PRE)
	begin
	if(PRE==1)
		begin
		if(CLR==1)
			begin
			Q<=1'bx;
			Qbar<=1'bx;
			end
		else
			begin
			Q<=1;
			Qbar<=0;
			end
		end
	else if(CLR==1)
		begin
		Q<=1'b0;
		Qbar<=1'b1;
		end
	else
		begin
		Q<=D;
		Qbar<=!D;
		end
	end
endmodule
