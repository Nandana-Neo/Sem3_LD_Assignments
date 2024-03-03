module FSM(input in,reset,clk,
				output reg out);
	
	reg[1:0] state;
	//reg out;
	parameter A=2'b00,B=2'b01,C=2'b10;
	
	always@(posedge clk or posedge reset)
	begin
		if(reset==1)
		begin
			out<=0;
			state<=A;
		end
		
		else
		begin
			if(state==A)
				begin
				if(in==0)
				begin
					state<=B;
					out<=0;
				end
				
				else
				begin
					state<=C;
					out<=0;
				end
				end
			else if(state==B)
				begin
				if(in==0)
				begin
					state<=B;
					out<=0;
				end
				
				else
				begin
					state<=C;
					out<=1;
				end
				end
			else if(state==C)
			begin
				if(in==0)
				begin
					state<=B;
					out<=1;
				end
				
				else
				begin
					state<=C;
					out<=0;
				end
			end
		end
	end
	
	
endmodule