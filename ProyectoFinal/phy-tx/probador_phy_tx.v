module probador_phy_tx (
	output reg clk_32f,
	output reg clk_2f,
	output reg clk_4f,
	output reg reset,
	output reg valid_in,
	output reg [31:0] Data_in,
	input  Data_out_1bit_0_c,
	input  Data_out_1bit_1_c,
    input  Data_out_1bit_0_e,
	input  Data_out_1bit_1_e
);
	reg [1:0] conteo_4;
	reg [2:0] conteo_2;
	initial begin
		clk_32f = 0;
		clk_4f = 0;
		clk_2f = 0;
		conteo_4 = 'b11;
		conteo_2 = 'b111;
	end 
	always #1 clk_32f = ~clk_32f;

	always @(posedge clk_32f) begin
		case (conteo_4)
			2'b00: conteo_4 <= 2'b01;
			2'b01: conteo_4 <= 2'b10;
			2'b10: conteo_4 <= 2'b11;
			2'b11:
			begin
				conteo_4 <= 2'b00;
				case (clk_4f)
					1'b0: clk_4f <= 1;
					1'b1: clk_4f <= 0;
				endcase
			end 
		endcase
		case (conteo_2)
			3'b000: conteo_2 <= 3'b001;
			3'b001: conteo_2 <= 3'b010;
			3'b010: conteo_2 <= 3'b011;
			3'b011: conteo_2 <= 3'b100;
			3'b100: conteo_2 <= 3'b101;
			3'b101: conteo_2 <= 3'b110;
			3'b110: conteo_2 <= 3'b111;
			3'b111:
			begin
				conteo_2 <= 3'b000;
				case (clk_2f)
					1'b0: clk_2f <= 1;
					1'b1: clk_2f <= 0;
				endcase
			end 
		endcase
	end

	initial begin
		$dumpfile ("prueba_phy_tx.vcd");
		$dumpvars;

		reset <= 0;
		valid_in <= 0;
		Data_in <= 32'b0;

		@(posedge clk_32f);
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
		@(posedge clk_2f);
		@(posedge clk_2f);
		$finish;
	end

	// Se guarda el checkeo de cada salida
	// checker[1] para Data_out_1bit_0_c y Data_out_1bit_0_e
	// checker[0] para Data_out_1bit_1_c y Data_out_1bit_1_e
	reg [1:0] checker; 
	always @(*) begin
		if (Data_out_1bit_0_c == Data_out_1bit_0_e) checker[1] = 1;
		else checker[1] = 0;

		if (Data_out_1bit_1_c == Data_out_1bit_1_e) checker[0] = 1;
		else checker[0] = 0;
	end
endmodule