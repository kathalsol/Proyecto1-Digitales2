module probador_byte_un_striping ( 
                            output reg clk_2f,
                            output reg clk,
                            output reg valid_0,
                            output reg [31:0]lane_0,
                            output reg valid_1,
                            output reg [31:0]lane_1,
                            input [31:0]data_out,
                            input valid_out 
                                                    );

    // Reloj
	initial	clk_2f 	<= 0;			// Valor inicial al reloj, sino siempre sera indeterminado
	always	#18 clk_2f 	<= ~clk_2f;		// Hace "toggle" cada 18*10ns

    initial	clk	<= 0;			// Valor inicial al reloj, sino siempre sera indeterminado
	always @(posedge clk_2f ) begin
        clk <= ~clk;
    end
    //always	#36 clk 	<= ~clk;		 Hace "toggle" cada 36*10ns

    initial 
    begin
        valid_0 = 1'b0;
        lane_0 = 'h00000000;
        valid_1 = 1'b0;
        lane_1 = 'h00000000;
    end

    initial begin
		$dumpfile("prueba_unbyte.vcd");	// Nombre de archivo del "dump"
		$dumpvars;			// Directiva para "dumpear" variables

    //Sincronizacion con el flanco positivo del reloj. Asignar valores de las entradas
   // @(posedge clk_2f)
     //   valid_1 = 1'b1;
       // lane_1 = 'h44444444;
    @(posedge clk)
        valid_0 = 1'b1;
        lane_0 = 'hFFFFFFFF;
        
    @(posedge clk_2f)
        //valid_0 = 1'b1;
        //lane_0 = 'hAAAAAAAA;
        valid_1 = 1'b1;
        lane_1 = 'h88888888;

    @(posedge clk_2f)
        valid_0 = 1'b1;
        lane_0 = 'h77777777;
        //valid_1 = 1'b1;
        //lane_1 = 'hBBBBBBBB;

    @(posedge clk_2f)
        valid_0 = 1'b1;
        lane_0 = 'h99999999;
        valid_1 = 1'b1;
        lane_1 = 'h55555555;

    @(posedge clk_2f)
        valid_0 = 1'b0;
        lane_0 = 'hFFFFFFFF;
        valid_1 = 1'b1;
        lane_1 = 'h44444444;
    
    @(posedge clk_2f)
        valid_0 = 1'b0;
        lane_0 = 'h33333333;
        valid_1 = 1'b0;
        lane_1 = 'h66666666;

    @(posedge clk_2f)
        valid_0 = 1'b1;
        lane_0 = 'hFFFFFFFF;
        valid_1 = 1'b0;
        lane_1 = 'h22222222;

    @(posedge clk_2f)
        valid_0 = 1'b1;
        lane_0 = 'hCCCCCCCC;
        valid_1 = 1'b1;
        lane_1 = 'h44444444;

    @(posedge clk_2f)
        valid_0 = 1'b1;
        lane_0 = 'hFFFFFFFF;
        valid_1 = 1'b1;
        lane_1 = 'h99999999;

    @(posedge clk_2f)
        valid_0 = 1'b1;
        lane_0 = 'h99999999;
        valid_1 = 1'b1;
        lane_1 = 'h44444444;
    #50 	 // retartdo de 50 unidades antes de terminar
	//Finalizar la simulacion y guardar valores
    $finish;
    end
endmodule