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
    output wire led0,
    // output wire led1,
    output wire led2
    // output wire led3
    );

    assign led0 = sw[0] & sw[1];
    // assign led1 = sw[1];
    assign led2 = sw[2] & sw[3];
    // assign led3 = sw[3];    
endmodule
