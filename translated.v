module main;
  `include "tasks.v"
 	// global vars
 	reg [7:0] a [0:3];
 	reg [7:0] b [0:3] [0:3];
 	reg signed [7:0] i = 2;
  reg signed [7:0] j;
 	reg [8*14:1] string_test = "ad";
 	
  // Include all tasks


  // main()
	initial begin
    for (i=0; i<=3; i++) begin
      sigmoid_deriv(i,j); // demonstrating task in for loop
      $display(j);
    end


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