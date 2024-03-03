module half_subtractor(num1,num2,diff,borrow);

	input num1,num2;
	output diff,borrow;
	wire x;
	
	xor g1(diff,num1,num2);
	not g2(x,num1);
	and g3(borrow,x,num2);
	
endmodule
