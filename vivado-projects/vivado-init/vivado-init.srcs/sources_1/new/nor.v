`timescale 1ns / 1ps
module NorGate(input a, b, output y);
  assign y = !(a | b);
endmodule