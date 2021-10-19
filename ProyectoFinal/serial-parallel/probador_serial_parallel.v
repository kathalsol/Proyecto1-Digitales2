module probador_serial_parallel (
	output reg clk_32f,
	output reg reset,
	output reg Data_in,
	input valid_out_c,
	input [7:0] Data_out_c,
	input valid_out_e,
	input [7:0] Data_out_e
);
	initial clk_32f = 0;
	always #1 clk_32f = ~clk_32f;

	initial begin
		$dumpfile ("prueba_serial_parallel.vcd");
		$dumpvars;

		reset <= 0;
		Data_in <= 0;
		@(posedge clk_32f);
		reset <= 1;
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 0;

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		Data_in <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in <= 0;
		@(posedge clk_32f);
		@(posedge clk_32f);
		$finish;
	end

	// Se guarda el checkeo de las salidas
	// checker[1] para Data_out_c y Data_out_e
	// checker[0] para valid_out_c y valid_out_e
	reg [1:0] checker; 
	always @(*) begin
		if (Data_out_c == Data_out_e) checker[1] = 1;
		else checker[1] = 0;

		if (valid_out_c == valid_out_e) checker[0] = 1;
		else checker[0] = 0;
	end
endmodule