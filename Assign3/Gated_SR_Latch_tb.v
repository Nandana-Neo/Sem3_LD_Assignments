module Gated_SR_Latch_tb;

	reg S,R,En;
	wire Q,Qn;
	
	Gated_SR_Latch shd(En,S,R,Q,Qn);
	
	initial
	begin
		En=0;
		S=1;R=0;
		#50 S=0;R=0;
		#50 S=0;R=1;
		#50 S=0;R=0;
		#50 S=1;R=1;
		#50 S=1;R=0;
		#50 S=0;R=0;
		#50;
		En=1;
		S=1;R=0;
		#50 S=0;R=0;
		#50 S=0;R=1;
		#50 S=1;R=1;
		#50 S=0;R=1;
		#50 S=0;R=0;
		#50; En=0; 
		#50 S=1;R=1;
		#50 S=1;R=0;
		#50 S=0;R=0;
		#50; En=1;
		#50 S=1;R=0;
		#50 S=0;R=0;
		#50;
	end
endmodule
