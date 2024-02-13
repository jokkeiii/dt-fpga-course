`timescale 1ns / 1ps
module NandGate(input a, b, output y);
  assign y = !(a & b);
endmodule