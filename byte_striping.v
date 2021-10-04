/* ***********************************************************
                    Universidad de Costa Rica
                 Escuela de Ingenieria Electrica 
                             IE0523 
                    Circuitos Digitales 2

                           byte_striping.v

Autores: Alexa Carmona Buzo <alexa.carmona@ucr.ac.cr>
        Katharina Alfaro Solis <katharina.alfaro@ucr.ac.cr>
        Kevin Chen Wu 
        Raquel Corrales 
Fecha: 04/10/2021

Descripcion:
  Contiene el modulo de bit striping. Recibe senal de clk_2f, data_in, valid_in y 
  separa las senales en dos canales a una frecuencia mas baja. 

*********************************************************** */

module byte_striping (
                      input clk_2f,
                      input valid_in,
                      input [31:0]data_in,
                      output reg valid_0,
                      output reg [31:0] lane_0,
                      output reg valid_1,
                      output reg [31:0] lane_1
                                                );
    

    reg [1:0] counter = 2'b01;
	always @(posedge clk_2f ) begin
		counter <= counter +1;
	end

	always @(counter) begin
		if (valid_in) begin
			case (counter)
	
				2'b00: begin
					lane_0 = data_in;
					valid_0 = valid_in;
				end
				2'b01: begin
					lane_1 = data_in;
					valid_1 = valid_in;
				end
				2'b10: begin
					lane_0 = data_in;
					valid_0 = valid_in;
				end
				2'b11: begin
					lane_1 = data_in;
					valid_1 = valid_in;
				end
			
				default: begin
					lane_0 = 'h00000000; 
					lane_1 = 'h00000000;
				end			
			endcase	
			end
		else begin
			counter = 2'b01;
			lane_0 = 'h00000000;
			lane_1 = 'h00000000;
			valid_0 = valid_in;
			valid_1 = valid_in;
		end
		
	end
endmodule