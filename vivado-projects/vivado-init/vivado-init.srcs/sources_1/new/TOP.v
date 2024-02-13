`timescale 1ns / 1ps

module TOP(
    input wire [3:0] sw,
    output wire led0, led1, led2, led3
    );

    assign led0 = sw[0];
    assign led1 = sw[1];
    assign led2 = sw[2];
    assign led3 = sw[3];    
endmodule
