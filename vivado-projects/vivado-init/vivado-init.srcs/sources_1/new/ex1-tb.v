`timescale 1ns / 1ps

module TOP_tb;
    // test bench internal signals
    reg [3:0] sw,
    wire led0, led1, led2, led3

    TOP uut (
        .sw(sw),
        .led0(led0),
        .led1(led1),
        .led2(led2),
        .led3(led3)
    );

    // tests
    initial begin
        // init inputs
        sw = 4'b0000;
        #100; // 100 ns delay

        for (i = 0; i < 4; i = i + 1) begin
            sw = 4'b0001 << i; // shift left i times
            #100
        end

        sw = 4'b1111; // test all LEDs ON
        #100;

        $finish; // end simulation
    end
endmodule
