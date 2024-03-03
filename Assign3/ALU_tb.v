module ALU_tb();
	
	reg [15:0]x,y;
	reg [3:0] sel;
	wire [15:0] ans;
	
	//Instantiation//
	ALU gategate(x,y,sel,ans);
	
	//Test Vectors
	initial
	begin
		repeat(10)
		begin
			x=$random;
			y=$random;
			sel=0;
			#50;
			repeat(15)
			begin
				sel=sel+1;
				#50;
			end
		end
	end
endmodule
