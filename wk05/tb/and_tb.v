`timescale 1ns / 1ps
module AndGate_TestBench();
  reg a, b; // only reg type variable can be assigned into a state
  wire y; // wire is just simple wire

  AndGate dut(a,b,y);

  initial begin

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
  end
endmodule