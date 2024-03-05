`timescale 1ns / 1ps

module Mux_TestBench();
  reg [5:0] sw;
  wire led;

  Mux dut(.sw(sw), .led(led));

  initial begin
    // led 0
    sw = 6'b000000; #10

    sw = 6'b000000; #10
    sw = 6'b010000; #10
    sw = 6'b100000; #10
    sw = 6'b110000; #10

    sw = 6'b000010; #10
    sw = 6'b000100; #10
    sw = 6'b001000; #10

    sw = 6'b010001; #10
    sw = 6'b010100; #10
    sw = 6'b011000; #10

    sw = 6'b100001; #10
    sw = 6'b100010; #10
    sw = 6'b101000; #10

    sw = 6'b110001; #10
    sw = 6'b110010; #10
    sw = 6'b110100; #10

    // led 1 (#170)
    sw = 6'b001111; #10
    sw = 6'b011111; #10
    sw = 6'b101111; #10
    sw = 6'b111111; #10

    sw = 6'b000001; #10
    sw = 6'b010010; #10
    sw = 6'b100100; #10
    sw = 6'b111000; #10

    $finish;
  end
  
endmodule
