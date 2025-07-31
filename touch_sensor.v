module TOUCH (
    input [3:0] TOUCH_IN,  // Touch Sensors (1 bit per sensor)
    output reg [3:0] TOUCH_OUT  // Binary output (1-4)
);

always @(*) begin
    case (TOUCH_IN)
        4'b0001: TOUCH_OUT = 4'b0001; // Only Sensor 1 touched → Output 1
        4'b0010: TOUCH_OUT = 4'b0010; // Only Sensor 2 touched → Output 2
        4'b0100: TOUCH_OUT = 4'b0011; // Only Sensor 3 touched → Output 3
        4'b1000: TOUCH_OUT = 4'b0100; // Only Sensor 4 touched → Output 4
        default: TOUCH_OUT = 4'b0000; // No valid single touch → Output 0
    endcase
end

endmodule
