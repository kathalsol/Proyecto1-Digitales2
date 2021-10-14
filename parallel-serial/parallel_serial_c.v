module parallel_serial_c (
	input clk_32f,
	input reset,
	input valid_in,
	input [7:0] Data_in,
	output reg Data_out_c
);
	reg [7:0] data2send;
	reg [2:0] contador; 

	always @(*) begin
		if (reset == 0) begin
			Data_out_c <= 0;
			data2send <= 'hBC;
			contador <= 3'b000;
		end
	end

	always @(posedge clk_32f) begin
		if (reset) begin
			case (contador)
				3'b000:
				begin
					Data_out_c <= data2send[7];
					contador <= 3'b001;
				end
				3'b001:
				begin
					Data_out_c <= data2send[6];
					contador <= 3'b010;
				end
				3'b010:
				begin
					Data_out_c <= data2send[5];
					contador <= 3'b011;
				end
				3'b011:
				begin
					Data_out_c <= data2send[4];
					contador <= 3'b100;
				end
				3'b100:
				begin
					Data_out_c <= data2send[3];
					contador <= 3'b101;
				end
				3'b101:
				begin
					Data_out_c <= data2send[2];
					contador <= 3'b110;
				end
				3'b110:
				begin
					Data_out_c <= data2send[1];
					contador <= 3'b111;
				end
				3'b111:
				begin
					Data_out_c <= data2send[0];
					contador <= 3'b000;
					if (valid_in) data2send <= Data_in;
					else data2send <= 'hBC; 
				end
			endcase
		end
	end
endmodule