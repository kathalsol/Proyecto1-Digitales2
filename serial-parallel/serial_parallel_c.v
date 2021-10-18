module serial_parallel_c (
	input clk_32f,
	input reset,
	input Data_in,
	output reg valid_out_c,
	output reg [7:0] Data_out_c
);
	reg [7:0] memoria;
	reg [2:0] contador;
	reg [1:0] BC_count;
	reg active;

	always @(*) begin
		if (reset == 0) begin
			valid_out_c <= 0;
			Data_out_c <= 8'b0;
			memoria <= 8'b0;
			contador <= 'b111;
			BC_count <= 2'b0;
			active <= 0;
		end
	end

	always @(posedge clk_32f) begin
		if (active) begin
			case (contador)
				3'b000:
				begin
					if (memoria == 'hBC) begin
						valid_out_c <= 0;
						Data_out_c <= 8'b0;
					end
					else begin
						valid_out_c <= 1;
						Data_out_c <= memoria;
					end
					contador <= 3'b001;
					memoria <= {Data_in, 7'b0};
				end
				3'b001:
				begin
					contador <= 3'b010;
					memoria <= {memoria[7], Data_in, 6'b0};
				end
				3'b010:
				begin
					contador <= 3'b011;
					memoria <= {memoria[7:6], Data_in, 5'b0}; 
				end
				3'b011:
				begin
					contador <= 3'b100;
					memoria <= {memoria[7:5], Data_in, 4'b0};
				end
				3'b100:
				begin
					contador <= 3'b101;
					memoria <= {memoria[7:4], Data_in, 3'b0};
				end
				3'b101:
				begin
					contador <= 3'b110;
					memoria <= {memoria[7:3], Data_in, 2'b0};
				end
				3'b110:
				begin
					contador <= 3'b111;
					memoria <= {memoria[7:2], Data_in, 1'b0};
				end
				3'b111:
				begin
					contador <= 3'b000;
					memoria <= {memoria[7:1], Data_in};
				end
			endcase
		end
		else begin
			case (contador)
				3'b000:
				begin
					if (memoria == 'hBC) begin
						case (BC_count)
							2'b00: BC_count <= 2'b01;
							2'b01: BC_count <= 2'b10;
							2'b10: BC_count <= 2'b11;
							2'b11: active <= 1;
						endcase
					end
					contador <= 3'b001;
					memoria <= {Data_in, 7'b0};
				end
				3'b001:
				begin
					contador <= 3'b010;
					memoria <= {memoria[7], Data_in, 6'b0};
				end
				3'b010:
				begin
					contador <= 3'b011;
					memoria <= {memoria[7:6], Data_in, 5'b0}; 
				end
				3'b011:
				begin
					contador <= 3'b100;
					memoria <= {memoria[7:5], Data_in, 4'b0};
				end
				3'b100:
				begin
					contador <= 3'b101;
					memoria <= {memoria[7:4], Data_in, 3'b0};
				end
				3'b101:
				begin
					contador <= 3'b110;
					memoria <= {memoria[7:3], Data_in, 2'b0};
				end
				3'b110:
				begin
					contador <= 3'b111;
					memoria <= {memoria[7:2], Data_in, 1'b0};
				end
				3'b111:
				begin
					contador <= 3'b000;
					memoria <= {memoria[7:1], Data_in};
				end
			endcase
		end
	end
endmodule