`timescale 1ns/1ps

module TOP (
  // LED control switches and enable switch
  input wire [4:0] sw,
  // segment display
  output reg [6:0] seg,
  output reg dp,
  // 7 segment display enable
  output wire [3:0] an
  );

  // for-loop iterator
  integer i;

  // enable (inverted)
  assign an[0] = ~sw[4]; // on
  assign an[1] = ~1'b0; // off
  assign an[2] = ~1'b0;
  assign an[3] = ~1'b0;

  // set segment LEDs based on sw states
  always @(sw[4:0]) begin
    // decimal dot off
    dp = ~1'b0;

    // all LEDs off
    // for (i = 0; i < 7; i = i + 1) begin
    //   seg[i] = 0;
    // end
    
    // case based on the four switches
    case (sw)
      4'b0000: begin // 0
        // set all leds in segment other than horizontal center
        for (i = 0; i < 6; i = i + 1) begin
          seg[i] = ~1'b1;
        end
      end
      4'b0001: begin // 1
        seg = ~7'b0000110;
        // seg[1] = 1;
        // seg[2] = 1;
      end
      4'b0010: begin // 2
        seg = ~7'b1011011;
        // seg[0] = 1;
        // seg[1] = 1;
        // seg[3] = 1;
        // seg[4] = 1;
        // seg[6] = 1;
      end
      4'b0011: begin // 3
        seg = ~7'b1001111;
        // seg[0] = 1;
        // seg[1] = 1;
        // seg[2] = 1;
        // seg[3] = 1;
        // seg[6] = 1;
      end
      4'b0100: begin // 4
        seg = ~7'b1100110;
        // seg[1] = 1;
        // seg[2] = 1;
        // seg[5] = 1;
        // seg[6] = 1;
      end
      4'b0101: begin // 5
        seg = ~7'b1101101;
        // seg[0] = 1;
        // seg[2] = 1;
        // seg[3] = 1;
        // seg[5] = 1;
        // seg[6] = 1;
      end
      4'b0110: begin // 6
        seg = ~7'b1111101;
        // seg[0] = 1;
        // seg[2] = 1;
        // seg[3] = 1;
        // seg[4] = 1;
        // seg[5] = 1;
        // seg[6] = 1;
      end
      4'b0111: begin // 7
        seg = ~7'b0000111;
        // seg[0] = 1;
        // seg[1] = 1;
        // seg[2] = 1;
      end
      4'b1000: begin // 8
        seg = ~7'b1111111;
        // for (i = 0; i < 7; i = i + 1) begin
        //   seg[i] = 1;
        // end
      end
      4'b1001: begin // 9
        seg = ~7'b1101111;
        // seg[0] = 1;
        // seg[1] = 1;
        // seg[2] = 1;
        // seg[3] = 1;
        // seg[5] = 1;
        // seg[6] = 1;
      end
    endcase
  end
endmodule