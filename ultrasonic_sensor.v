module Top_Range_Sensor (
    input wire pulse_pin,
    input wire reset,
    input wire clock,
    output wire trigger_pin,
    output wire [2:0] an,
    output wire [7:0] sseg
);
 
wire [3:0] Ai;
wire [3:0] Bi;
wire [3:0] Ci;
 
Range_sensor range_sens (
    .fpgaclk(clock), 
    .pulse(pulse_pin), 
    .trigger_out(trigger_pin), 
    .meters(Ai), 
    .decimeters(Bi), 
    .centimeters(Ci)
);
 
display_ctr display (
    .clk(clock),
    .Display_reset(reset), 
    .in2(Ai), 
    .in1(Bi), 
    .in0(Ci), 
    .an(an), 
    .sseg(sseg)
);

endmodule
