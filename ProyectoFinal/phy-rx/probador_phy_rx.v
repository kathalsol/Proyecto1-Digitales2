module probador_phy_rx (
	output reg clk_32f,
	output reg clk_2f,
	output reg clk_4f,
	output reg reset,
	output reg Data_in_0,
	output reg Data_in_1,
	input valid_out_c,
	input [31:0] Data_out_c,
	input valid_out_e,
	input [31:0] Data_out_e
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
		$dumpfile ("prueba_phy_rx.vcd");
		$dumpvars;

		reset <= 0;
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		
		@(posedge clk_32f);
		reset <= 1;
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		// 0: FF, 1: BC
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		
		// 0: FF, 1: BC
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: FF, 1: EE
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: FF, 1: EE
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: DD, 1: EE
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: DD, 1: EE
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: DD, 1: CC
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: DD, 1: CC
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: BC, 1: CC
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;

		// 0: BC, 1: CC
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		// 0: 00, 1: BC
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;

		// 0: 00, 1: BC
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;

		// 0: 00, 1: 00
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;

		// 0: 07, 1: 00
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;

		// 0: BC, 1: 00
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;

		// 0: BC, 1: 08
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);

		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
		@(posedge clk_32f);
		Data_in_0 <= 1;
		Data_in_1 <= 1;
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		@(posedge clk_32f);
		Data_in_0 <= 0;
		Data_in_1 <= 0;
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