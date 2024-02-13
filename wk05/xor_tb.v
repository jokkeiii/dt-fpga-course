`timescale 1ns / 1ps
module XorGate_TestBench();
  reg a, b;
  wire y;

  XorGate dut(a, b, y);

  initial begin

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
  end
endmodule