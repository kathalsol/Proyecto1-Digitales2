module probador_byte_striping (
	output reg clk_2f,
	output reg reset,
	output reg valid_in,
	output reg [31:0] Data_in,
	input valid_0_c,
	input [31:0] lane_0_c,
	input valid_1_c,
	input [31:0] lane_1_c,
	input valid_0_e,
	input [31:0] lane_0_e,
	input valid_1_e,
	input [31:0] lane_1_e
);
	initial clk_2f = 0;
	always #1 clk_2f = ~clk_2f;

	initial begin
		$dumpfile ("prueba_byte_striping.vcd");
		$dumpvars;

		reset <= 0;
		valid_in <= 0;
		Data_in <= 32'b0;
		@(posedge clk_2f);
		reset <= 1;
		valid_in <= 1;
		Data_in <= 'hFFFFFFFF;
		@(posedge clk_2f);
		Data_in <= 'hEEEEEEEE;
		@(posedge clk_2f);
		Data_in <= 'hDDDDDDDD;
		@(posedge clk_2f);
		Data_in <= 'hCCCCCCCC;
		@(posedge clk_2f);
		valid_in <= 0;
		Data_in <= 32'b0;
		@(posedge clk_2f);
		@(posedge clk_2f);
		@(posedge clk_2f);
		valid_in <= 1;
		Data_in <= 'h00000003;
		@(posedge clk_2f);
		Data_in <= 'h00000004;
		@(posedge clk_2f);
		valid_in <= 0;
		Data_in <= 32'b0;
		@(posedge clk_2f);
		@(posedge clk_2f);
		valid_in <= 1;
		Data_in <= 'hAAAAAAAA;
		@(posedge clk_2f);
		Data_in <= 'h99999999;
		@(posedge clk_2f);
		valid_in <= 0;
		Data_in <= 32'b0;
		@(posedge clk_2f);
		@(posedge clk_2f);
		valid_in <= 1;
		Data_in <= 'h00000007;
		@(posedge clk_2f);
		Data_in <= 'h00000008;
		@(posedge clk_2f);
		valid_in <= 0;
		Data_in <= 32'b0;
		@(posedge clk_2f);
		@(posedge clk_2f);
		@(posedge clk_2f);
		$finish;
	end

	// Se guarda el checkeo de cada salida
	// checker[3] para lane_0_c y lane_0_e
	// checker[2] para valid_0_c y valid_0_e
	// checker[1] para lane_1_c y lane_1_e
	// checker[0] para valid_1_c y valid_1_e
	reg [3:0] checker; 
	always @(*) begin
		if (lane_0_c == lane_0_e) checker[3] = 1;
		else checker[3] = 0;

		if (valid_0_c == valid_0_e) checker[2] = 1;
		else checker[2] = 0;

		if (lane_1_c == lane_1_e) checker[1] = 1;
		else checker[1] = 0;

		if (valid_1_c == valid_1_e) checker[0] = 1;
		else checker[0] = 0;
	end
endmodule