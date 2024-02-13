`timescale 1ns / 1ps
module XnorGate(input a, b, output y);
  assign y = a ~^ b;
endmodule
