`timescale 1ns/1ps

module Mux (
  // 4 switches for data and 2 switches for selects
  input wire [5:0] sw,
  output wire [0:0] led
);

// data bits or lines
wire D, C, B, A;
assign A = sw[0];
assign B = sw[1];
assign C = sw[2];
assign D = sw[3];

// select bits
wire b, a;
assign a = sw[4];
assign b = sw[5];

// // 4-1 mux with boolean
assign led[0] = ~(~(~b & ~a & A) & ~(~b & a & B) & ~(b & ~a & C) & ~(b & a & D));
endmodule