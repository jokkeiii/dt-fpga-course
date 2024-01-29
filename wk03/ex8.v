`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
// 
// Create Date: 01/16/2024 10:40:14 AM
// Design Name: 
// Module Name: TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP(
    input wire [3:0] sw,
    output reg led0,
    output reg led1,
    output reg led2
    );
    
    always @(sw) begin
        // reset all LEDs
        led0 = 0;
        led1 = 0;
        led2 = 0;

        // conditions
        if (sw <= 4'b0011) begin
            led0 = 1;
        end else if (sw <= 4'b1001 && sw > 4'b0011) begin
            led1 = 1;
        end else if (sw <= 4'b1111 && sw > 4'b1001) begin
            led2 = 1;
        end
    end
endmodule
