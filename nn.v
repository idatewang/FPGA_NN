module main;
 	// global vars
 	reg [7:0] a [0:3];
 	reg [7:0] b [0:3] [0:3];
 	reg [7:0] i,j;
 	reg [8*14:1] string_test = "ad";
 	// functions
	// function automatic [7:0] factorial;
 //    	input signed [7:0] i_Num; 
 //    	begin
 //      		if (i_Num == 1)
 //        		factorial = 1; 
 //      		else
 //        		factorial = i_Num * factorial(i_Num-1);
 //    	end
 //  	endfunction

	// function automatic [7:0] sigmoid_deriv;
 //  		input signed [7:0] x;
 //  		begin
 //  			sigmoid_deriv = x * (1-x);
 //  		end
 //  	endfunction


  	// main()
	initial begin
		for (i=0; i<=3; i++) begin
      		for (j=0; j<=3; j++) begin
          		b[i][j] = i*j;
          	end
        end

        for (i=0; i<=3; i++) begin
      		for (j=0; j<=3; j++) begin
          		$write(b[i][j]);
          	end
          	$display();
        end
    end
endmodule