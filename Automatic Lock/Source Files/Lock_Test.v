`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2020 20:03:03
// Design Name: 
// Module Name: Lock_Test
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


module Lock_Test();
reg PB_0, PB_1, Clock, Reset;
wire [1:0] Output;
wire Right, Wrong;
//wire [3:0] State;
//wire [1:0] Signal;
Door_Lock uut (PB_0,PB_1, Clock, Reset, Output);
assign Right = Output[0];
assign Wrong = Output[1];
initial begin
Clock = 1;
repeat(40000)
#0.05 Clock = ~Clock; 
$finish;
end
///////////////////////////////////////////////////////////////////////////////////////
initial begin
Reset = 0; PB_0 = 0; PB_1 = 0;
//////// Reset ////////////////
#100
repeat (5)
# (1) 
Reset = ~Reset; 
Reset = 1;
#(200) Reset = 0;
repeat (4)
# (1) 
Reset = ~Reset;



/////////////// 1 ////////////
PB_1 = 0; PB_0 = 0;
#100
repeat (5)
# (1)  
PB_1 = ~PB_1; 
# (200) PB_1 = 0;                                                         ///// PB Hold Time
repeat (4)
# (1)  
PB_1 = ~PB_1; 
/////////////// 0 /////////////
PB_1 = 0; PB_0 = 0;
#(100)
repeat (5)
# (1) PB_0 = ~PB_0; 
# (200) PB_0 = 0;                                                         ///// PB Hold Time
repeat (4)
# (1)  
PB_0 = ~PB_0; 
/////////////// 0 /////////////
PB_1 = 0; PB_0 = 0;
#(100)
repeat (5)
# (1) PB_0 = ~PB_0; 
# (200) PB_0 = 0;                                                         ///// PB Hold Time
repeat (4)
# (1)  
PB_0 = ~PB_0; 
/////////////// 1 ////////////
PB_1 = 0; PB_0 = 0;
#100
repeat (5)
# (1)  
PB_1 = ~PB_1; 
# (200) PB_1 = 0;                                                         ///// PB Hold Time
repeat (4)
# (1)  
PB_1 = ~PB_1; 

//////// Reset ////////////////
#100
repeat (5)
# (1) 
Reset = ~Reset; 
Reset = 1;
#(200) Reset = 0;
repeat (4)
# (1) 
Reset = ~Reset;

///////////////////////////////
end
endmodule
