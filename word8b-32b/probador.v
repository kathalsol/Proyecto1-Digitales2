module probador (
	output reg clk_32f,
	output reg reset,
	output reg valid_in,
	output reg [31:0] Data_in,
	input clk_4f_c,
	input clk_2f_c,
	input clk_f_c,
	input valid_out_c,
	input [31:0] Data_out_c,
	input valid_out_e,
	input [31:0] Data_out_e
);
	initial clk_32f = 0;
	always #1 clk_32f = ~clk_32f;

	initial begin
		$dumpfile ("pruebas.vcd");
		$dumpvars;
		
		reset <= 0;
		valid_in <= 0;
		Data_in <= 8'h0;
		@(posedge clk_4f_c);
		reset <= 1;
		valid_in <= 1;
		Data_in <= 'hFFAAFFBB;
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		Data_in <= 'hDDCCDDEE;
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		valid_in <= 0;
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		valid_in <= 1;
		Data_in <= 'h010F0A03;
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		@(posedge clk_4f_c);
		Data_in <= 8'h0;
		valid_in <= 0;
		#256 $finish;
	end
endmodule