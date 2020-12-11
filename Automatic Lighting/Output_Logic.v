`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2020 19:53:49
// Design Name: 
// Module Name: Output_Logic
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


module Output_Logic(
    input [1:0] Present_State,
    output reg Output
    );
    always @(Present_State) Output = Present_State[1] || Present_State[0];
endmodule
