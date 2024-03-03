module demux_8x1_tb();
	//Input and output declarations
	reg Data,sel0,sel1,sel2;
	wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
	integer s;
	
	//Instantiation
	demux_8x1 DM(Data,sel0,sel1,sel2,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
	
	//Test vector
	initial
		begin
		for(s=3'd0;s<8;s=s+1)		//Select line iterates while data 2 cases are tested for each set
			begin
			{sel2,sel1,sel0}=s;
			Data=0;
			repeat(2)
				begin
				#50;
				Data=Data+1;
				end
			end
		end
		
endmodule
