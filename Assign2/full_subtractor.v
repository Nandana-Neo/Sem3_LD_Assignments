///////HALF SUBTRACTOR//////
module half_subtractor(num1,num2,diff,borrow);

	input num1,num2;
	output diff,borrow;
	wire x;
	
	xor g1(diff,num1,num2);
	not g2(x,num1);
	and g3(borrow,x,num2);
	
endmodule

///FULL SUBTRACTOR
module full_subtractor(num1,num2,bin,diff,bout);
	input num1,num2,bin;
	output diff, bout;
	wire d1,b1,b2;
	
	half_subtractor HS1(num1,num2,d1,b1);
	half_subtractor HS2(d1,bin,diff,b2);
	or g1(bout,b1,b2);
	
endmodule
