//Task version

task automatic sigmoid_deriv_task;
	input [7:0] x;
	output [7:0] y;
 	begin
 		y = x * (1-x);
 	end
endtask

//Function version

function automatic [7:0] sigmoid_deriv_func;
	input signed [7:0] x;
 	begin
 		sigmoid_deriv_func = x * (1-x);
	end
 endfunction

function automatic [7:0] sigmoid;
	input signed [7:0] x;
	begin
		sigmoid = 1 / (1+ 2.71828**(-x));
	end
endfunction