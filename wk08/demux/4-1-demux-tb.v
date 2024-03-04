`timescale 1ns / 1ps

module Demux_TestBench();
  reg [2:0] sw;
  wire [3:0] led;

  Demux dut(.sw(sw), .led(led));

  initial begin
    sw = 3'b000; #10
    sw = 3'b001; #10
    sw = 3'b010; #10
    sw = 3'b011; #10
    
    sw = 3'b100; #10
    sw = 3'b101; #10
    sw = 3'b110; #10
    sw = 3'b111; #10

    $finish;
  end
endmodule
