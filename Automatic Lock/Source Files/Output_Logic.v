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
    input [3:0] Present_State,
    output reg [1:0] Output
    );
    always @(Present_State) begin 
    case (Present_State)
        4'b0011: Output = 2'b10;
        4'b0111: Output = 2'b01;
        default: Output = 2'b00;
    endcase
    end
endmodule
