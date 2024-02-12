`timescale 1ns / 1ps
module NotGate_TestBench();
  reg a;
  wire y;

  NotGate dut(a, y);

  initial begin

    a=0; #10;
    a=1; #10;
  end
endmodule