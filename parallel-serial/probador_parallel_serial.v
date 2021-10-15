module probador_parallel_serial (
	output reg clk_32f,
	output reg reset,
	output reg valid_in,
	output reg [7:0] Data_in,
	input Data_out_c,
	input Data_out_e
);
	initial clk_32f = 0;
	always #1 clk_32f = ~clk_32f;

	initial begin
		$dumpfile ("prueba_parallel_serial.vcd");
		$dumpvars;

		reset <= 0;
		valid_in <= 0;
		Data_in <= 8'b0;
		@(posedge clk_32f);
		reset <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		valid_in <= 1;
		Data_in <= 'hFF;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 'hEE;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 'hAA;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		valid_in <= 0;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		valid_in <= 1;
		Data_in <= 'hCC;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		valid_in <= 0;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		$finish; 
	end

	// Se guarda el checkeo de las salidas
	// checker para Data_out_c y Data_out_e
	reg checker; 
	always @(*) begin
		if (Data_out_c == Data_out_e) checker = 1;
		else checker = 0;
	end
endmodule