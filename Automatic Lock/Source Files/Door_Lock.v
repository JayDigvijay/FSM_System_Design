`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2020 18:03:30
// Design Name: 
// Module Name: Door_Lock
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


module Door_Lock(
    input PB_0,
    input PB_1,
    input Clock,
    input Reset,
    output [1:0] Output
    );
wire [1:0] Input;
wire [3:0] Present_State, Next_State;
wire Div_Clock;
reg Sig_1, Sig_0, In_1, In_0;
parameter k = 19;
reg [k:0] Clk = 0;
always@(posedge Clock)begin 
Clk = Clk + 1;
end
assign Div_Clock = Clk[k];
always @(posedge Div_Clock)begin
    if(Sig_1 == PB_1) In_1 <= 0;
    else begin
        Sig_1 <= PB_1;
        In_1 <= PB_1;
    end 
    if(Sig_0 == PB_0) In_0 <= 0;
    else begin
        Sig_0 <= PB_0;
        In_0 <= PB_0;
    end 
end
assign Input = {In_1,In_0};
Next_State_Logic NSL (Input, Present_State, Next_State);
State_Register SR (Div_Clock, Reset, Next_State, Present_State);
Output_Logic OL (Present_State, Output);  
endmodule
