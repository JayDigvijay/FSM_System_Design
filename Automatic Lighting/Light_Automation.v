`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2020 21:02:08
// Design Name: 
// Module Name: Light_Automation
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


module Light_Automation(
    input A,
    input P,
    input Clock,
    input Reset,
    output O
    );
wire [1:0] Input, Present_State, Next_State;
reg [26:0] Clk;
always @(posedge Clock, posedge Reset)begin
if(Reset == 1) Clk = 0;
else Clk = Clk + 1;
end 
assign Input = {A,P};
Next_State_Logic C1 (Input, Present_State, Next_State);
State_Register S1 (Clk[26], Reset, Next_State, Present_State);
Output_Logic C2 (Present_State, O);
endmodule
