/* 
Material Circuitos Digitales 2

Archivo: fibonacci_tester.v 

Descripcion: Este archivo contiene el tester de un sumador.
Aqui se realizan las pruebas, en este caso, nuestras salidas en el DUT van a ser nuestras entradas, y
nuestras entradas en el DUT seran nuestras salidas. 

Autor: Ing. Ana Eugenia Sanchez Villalobos
*/

`timescale 1ns/1ns // Escala de tiempo

module fibonacci_tester (
    output reg clk   ,
    output reg rst   ,
    output reg enb   ,
    input [11:0] fibout
);


// Definiendo el clk
always begin 
    #5 clk = !clk; 
end

initial begin
    clk = 0;
    enb = 1;
end

initial begin
    rst = 1;
    #15;

    rst = 0;
    #100;

    $finish;
end


endmodule