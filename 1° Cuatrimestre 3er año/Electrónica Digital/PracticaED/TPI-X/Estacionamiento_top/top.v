
module estacionamiento_top(
    input wire clk,
    input wire reset,
    input wire a,b,
    output wire [2:0] count
);

wire ingreso, egreso;

    TPI detector ( //TPI es el detector de secuancia. Me detecta si un auto ingresa o sale y me lo envia en ingreso o egreso.
    .clk(clk),
    .reset(reset),
    .a(a),
    .b(b),
    .ingreso(ingreso),
    .egreso(egreso)
);

    ContadorUD contador( //Cuenta los vehiculos dentro del estacionamiento.
    .clk(clk),
    .reset(reset),
    .up(ingreso),
    .down(egreso),
    .count(count)
);



endmodule
