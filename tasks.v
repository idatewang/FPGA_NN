task automatic sigmoid_deriv;
	input [7:0] x;
	output [7:0] y;
 	begin
 		y = x * (1-x);
 	end
endtask
