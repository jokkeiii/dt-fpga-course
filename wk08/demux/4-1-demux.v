`timescale 1ns/1ps

module Demux (
  // 2 switches for selects and 1 switch for data
  input wire [2:0] sw,
  output wire [3:0] led
);

// data bits or lines
wire D, C, B, A;
assign led[0] = A;
assign led[1] = B;
assign led[2] = C;
assign led[3] = D;

// select bits
wire b, a;
assign a = sw[0];
assign b = sw[1];

// // 4-1 mux with boolean
assign A = ~b & ~a & sw[2];
assign B = ~b & a & sw[2];
assign C = b & ~a & sw[2];
assign D = b & a & sw[2];
endmodule