module probador_byte_striping (
                                output reg clk_2f,
                                output reg valid_in,
                                output reg [31:0]data_in,
                                input valid_0,
                                input [31:0] lane_0,
                                input valid_1,
                                input [31:0] lane_1
                                                    );

    // Reloj
	initial	clk_2f 	<= 0;			// Valor inicial al reloj, sino siempre sera indeterminado
	always	#18 clk_2f 	<= ~clk_2f;		// Hace "toggle" cada 18*10ns

    initial 
    begin
        valid_in = 1'b0;
        data_in = 'h00000000;
    end

    initial begin
		$dumpfile("prueba_byte.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables

    //Sincronizacion con el flanco positivo del reloj. Asignar valores de las entradas
    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'hFFFFFFFF;
    
    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'h88888888;

    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'hDDDDDDDD;

    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'h77777777;

    @(posedge clk_2f)
        valid_in = 1'b0;
        data_in = 'h090D70F3;
    
    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'h11111111;

    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'hAAAAAAAA;

    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'h44444444;

    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'h33333333;

    @(posedge clk_2f)
        valid_in = 1'b1;
        data_in = 'h55555555;
    #50 	 // retartdo de 50 unidades antes de terminar
	//Finalizar la simulacion y guardar valores
    $finish;
    end
endmodule
