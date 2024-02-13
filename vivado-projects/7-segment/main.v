`timescale 1ns/1ps

module TOP (
  // LED control switches
  input wire [3:0] sw,
  // segment display enable switch
  input wire [15] sw,
  // segment display
  output wire [6:0] seg,
  // 7 segment display first (from left) number enable
  output wire [0] an
  );
  
  // set segment LEDs based on sw states
  always @(sw[3:0]) begin
    // enable
    assign an[0] = sw[15];

    // all LEDs off
    for (i = 0; i < 7; i++) begin
      seg[i] = 0;
    end

    // case based on the four switches
    case (sw)
      4'b0001: { // 0
        // set all leds in segment other than horizontal center
        for (i = 0; i < 6; i++) begin
          seg[i] = 1;
        end
      };
      4'b0001: { // 1
        seg[1] = 1;
        seg[2] = 1;
      };
      4'b0010: { // 2
        seg[0] = 1;
        seg[1] = 1;
        seg[3] = 1;
        seg[4] = 1;
        seg[6] = 1;
      };
      4'b0011: { // 3
        seg[0] = 1;
        seg[1] = 1;
        seg[2] = 1;
        seg[3] = 1;
        seg[6] = 1;
      };
      4'b0100: { // 4
        seg[1] = 1;
        seg[2] = 1;
        seg[5] = 1;
        seg[6] = 1;
      };
      4'b0101: { // 5
        seg[0] = 1;
        seg[2] = 1;
        seg[3] = 1;
        seg[5] = 1;
        seg[6] = 1;
      };
      4'b0110: { // 6
        seg[0] = 1;
        seg[2] = 1;
        seg[3] = 1;
        seg[4] = 1;
        seg[5] = 1;
        seg[6] = 1;
      };
      4'b0111: { // 7
        seg[0] = 1;
        seg[1] = 1;
        seg[2] = 1;
      };
      4'b1000: { // 8
        for (i = 0; i < 7; i++) begin
          seg[i] = 1;
        end
      };
      4'b1001: { // 9
        seg[0] = 1;
        seg[1] = 1;
        seg[2] = 1;
        seg[3] = 1;
        seg[5] = 1;
        seg[6] = 1;
      };
    endcase
  end
endmodule