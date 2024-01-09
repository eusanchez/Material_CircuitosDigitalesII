/* 
Material Circuitos Digitales 2

Archivo: fibonacci.v 

Descripcion: Este archivo contiene el DUT de un sumador.

Autor: Ing. Ana Eugenia Sanchez Villalobos
*/


module fibonacci (
    input clk   ,
    input rst   ,
    input enb   ,
    output [11:0] fibout
);

reg [11:0] valor_previo;
reg [11:0] valor_actual;

always @(posedge clk) begin
    if(enb) begin
        if(!rst) begin
            valor_previo <= valor_actual; 
            valor_actual <= valor_actual + valor_previo;
    end else begin // Volver a iniciar
            valor_previo <= 0;
            valor_actual <= 1;
    end
    end
end

assign fibout = valor_previo;
    
endmodule