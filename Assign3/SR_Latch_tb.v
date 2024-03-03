module SR_Latch_tb;

	reg S,R;
	wire Q,Qn;
	
	SR_Latch shd(S,R,Q,Qn);
	
	initial
	begin
		S=0;R=0;
		#100 S=1;R=0;
		#100 S=0;R=0;
		#100 S=0;R=1;
		#100 S=0;R=0;
		#100 S=1;R=1;
		#100 S=1;R=0;
		#100 S=0;R=0;
		#100 S=1;R=1;
		#100 S=0;R=1;
		#100 S=1;R=0;
		#100 S=0;R=0;
		#100;
	end
endmodule
