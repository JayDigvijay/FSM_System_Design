`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2020 19:53:49
// Design Name: 
// Module Name: State_Register
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


module State_Register(
    input Clock, Reset,
    input [1:0] Next_State,
    output reg [1:0] Present_State
    );
    always @ (posedge Clock, posedge Reset) begin
    if(Reset == 1) Present_State = 2'b00;
    else Present_State = Next_State;
    end
endmodule
