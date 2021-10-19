module probador_clk (
	output reg clk_32f,
	output reg reset,
	input clk_4f_c,
	input clk_2f_c,
	input clk_f_c,
	input clk_4f_e,
	input clk_2f_e,
	input clk_f_e
);
	initial clk_32f = 0;
	always #1 clk_32f = ~clk_32f;

	initial begin
		$dumpfile ("prueba_clk.vcd");
		$dumpvars;
		
		reset <= 0;
		@(posedge clk_32f);
		reset <= 1;
		#128 $finish;
	end

	// Se guarda el checkeo de cada frecuencia
	// checker[2] para clk_4f_c y clk_4f_e
	// checker[1] para clk_4f_c y clk_4f_e
	// checker[0] para clk_4f_c y clk_4f_e
	reg [2:0] checker; 
	always @(*) begin
		if (clk_4f_c == clk_4f_e) checker[2] = 1;
		else checker[2] = 0;

		if (clk_2f_c == clk_2f_e) checker[1] = 1;
		else checker[1] = 0;

		if (clk_f_c == clk_f_e) checker[0] = 1;
		else checker[0] = 0;
	end
endmodule