/* 
Material Circuitos Digitales 2

Archivo: fibonacci_tester.v

Descripcion: Testbench del sumador.


    ----------                  -----------
    |           |               |         |
    |   TEST    | <---------->  |   DUT   |
    |           |               |         |
    ----------                  ----------

Autor: Ing. Ana Eugenia Sanchez Villalobos
*/

`include "fibonacci.v"
`include "fibonacci_tester.v" 


module fibonacci_testbench;
    wire clk   ;
    wire rst   ;
    wire enb   ;
    wire [11:0] fibout;


    fibonacci DUT(
        .clk(clk),
        .rst(rst), 
        .enb(enb), 
        .fibout(fibout[11:0])
    );

    // Instantiate the tester module
    fibonacci_tester test(
        .clk(clk),
        .rst(rst), 
        .enb(enb), 
        .fibout(fibout[11:0])
    );

    /* Para generar las ondas y
    y visualizar en gtkwave
    */
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars;
    end

    //Mostrar los valores
    always @(posedge clk) begin
        if(!rst) begin
            $display("Valor de Fibonacci: %b", fibout);
        end
    end

endmodule



