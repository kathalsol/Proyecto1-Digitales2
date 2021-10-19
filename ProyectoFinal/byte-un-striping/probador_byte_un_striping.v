module probador_byte_un_striping (
	output reg clk_2f,
	output reg reset,
	output reg valid_0,
	output reg [31:0] lane_0,
	output reg valid_1,
	output reg [31:0] lane_1,
	input valid_out_c,
	input [31:0] Data_out_c,
	input valid_out_e,
	input [31:0] Data_out_e
);
	initial clk_2f = 0;
	always #1 clk_2f = ~clk_2f;

	initial begin
		$dumpfile ("prueba_byte_un_striping.vcd");
		$dumpvars;

		reset <= 0;
		valid_0 <= 0;
		lane_0 <= 0;
		valid_1 <= 0;
		lane_1 <= 0;
		@(posedge clk_2f);
		reset <= 1;
		valid_0 <= 1;
		lane_0 <= 'hFFFFFFFF;
		@(posedge clk_2f);
		valid_1 <= 1;
		lane_1 <= 'hEEEEEEEE;
		@(posedge clk_2f);
		lane_0 <= 'hDDDDDDDD;
		@(posedge clk_2f);
		lane_1 <= 'hCCCCCCCC;
		@(posedge clk_2f);
		valid_0 <= 0;
		lane_0 <= 32'b0;
		@(posedge clk_2f);
		valid_1 <= 0;
		lane_1 <= 32'b0;
		@(posedge clk_2f);
		valid_0 <= 1;
		lane_0 <= 'h00000003;
		@(posedge clk_2f);
		valid_1 <= 1;
		lane_1 <= 'h00000004;
		@(posedge clk_2f);
		valid_0 <= 0;
		lane_0 <= 32'b0;
		@(posedge clk_2f);
		valid_1 <= 0;
		lane_1 <= 32'b0;
		@(posedge clk_2f);
		valid_0 <= 1;
		lane_0 <= 'hAAAAAAAA;
		@(posedge clk_2f);
		valid_1 <= 1;
		lane_1 <= 'h99999999;
		@(posedge clk_2f);
		valid_0 <= 0;
		lane_0 <= 'h11111111;
		@(posedge clk_2f);
		valid_1 <= 0;
		lane_1 <= 32'b0;
		@(posedge clk_2f);
		valid_0 <= 1;
		lane_0 <= 'h00000007;
		@(posedge clk_2f);
		valid_1 <= 1;
		lane_1 <= 'h00000008;
		@(posedge clk_2f);
		valid_0 <= 0;
		lane_0 <= 32'b0;
		@(posedge clk_2f);
		valid_1 <= 1;
		lane_1 <= 'h22222222;
		@(posedge clk_2f);
		@(posedge clk_2f);
		@(posedge clk_2f);
		$finish;
	end

	// Se guarda el checkeo de cada salida
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