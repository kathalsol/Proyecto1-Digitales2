/* ***********************************************************
                    Universidad de Costa Rica
                 Escuela de Ingenieria Electrica 
                             IE0523 
                    Circuitos Digitales 2

                           byte_un_striping.v

Autores: Alexa Carmona Buzo <alexa.carmona@ucr.ac.cr>
        Katharina Alfaro Solis <katharina.alfaro@ucr.ac.cr>
        Kevin Chen Wu 
        Raquel Corrales 
Fecha: 04/10/2021

Descripcion:
  Contiene el modulo de bit striping. Recibe senal de clk_2f, data_in, valid_in y 
  separa las senales en dos canales a una frecuencia mas baja. 

*********************************************************** */

module byte_un_striping (
                            input clk_2f,
                            input clk,
                            input valid_0,
                            input [31:0]lane_0,
                            input valid_1,
                            input [31:0]lane_1,
                            output reg [31:0]data_out,
                            output reg valid_out  );

   reg [1:0] counter ;

 
	
    always @(posedge clk_2f ) begin
		if (valid_0 == 0 )begin
            counter <= 2'b10;
	    end
        else begin
            counter <= counter +1;
        end
    end

    always @(*) begin
        if(valid_0 == 0) begin
            valid_out = 0;
            data_out = 'h00000000;
        end

        else begin
            case (counter)
                2'b00 :  begin
                    data_out  = lane_0;
                    valid_out = valid_0;
                end
                

                2'b01 :  begin
                    data_out  = lane_1;
                    valid_out = valid_0;
                end
                
                2'b10 :  begin
                    data_out  = lane_0;
                    valid_out = valid_0;
                end
                
                2'b11 :  begin
                    data_out  = lane_1;
                    valid_out = valid_0;
                end
            endcase
        end
    
        
    end
     
endmodule