module probador_word32_8bits (
	output reg clk_4f,
	output reg reset,
	output reg valid_in,
	output reg [31:0] Data_in,
	input valid_out_c,
	input [7:0] Data_out_c,
	input valid_out_e,
	input [7:0] Data_out_e
);
	initial clk_4f = 0;
	always #1 clk_4f = ~clk_4f;

	initial begin
		$dumpfile ("prueba_word32_8bits.vcd");
		$dumpvars;
		
		reset <= 0;
		valid_in <= 0;
		Data_in <= 8'h0;
		@(posedge clk_4f);
		reset <= 1;
		valid_in <= 1;
		Data_in <= 'hFFAAFFBB;
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		Data_in <= 'hDDCCDDEE;
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		valid_in <= 0;
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		valid_in <= 1;
		Data_in <= 'h010F0A03;
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		@(posedge clk_4f);
		Data_in <= 8'h0;
		valid_in <= 0;
		#32 $finish;
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