module mux_8x1_tb();

	//Input output declarations
	reg I0,I1,I2,I3,I4,I5,I6,I7,s0,s1,s2;
	wire ans;
	integer s,I;
	
	
	//Instantiation
	mux_8x1 M(I0,I1,I2,I3,I4,I5,I6,I7,s0,s1,s2,ans);
	
	//Test Vector
	initial
		begin
		for(I=8'd0;I<256;I=I+1)							//for the same input cases
			begin										//changing the select lines for each set of input
			{I7,I6,I5,I4,I3,I2,I1,I0}=I;
			for(s=3'd0;s<8;s=s+1)
				begin
				{s2,s1,s0}=s;
				#50;
				end
			end
		end
		
endmodule

	