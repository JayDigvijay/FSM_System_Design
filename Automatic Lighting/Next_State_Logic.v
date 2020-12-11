`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2020 19:51:20
// Design Name: 
// Module Name: Next_State_Logic
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


module Next_State_Logic(
    input [1:0] Input,
    input [1:0] Present_State,
    output reg [1:0] Next_State
    );
    //integer k = 300;
    always @ (Input, Present_State) begin
    case(Input)
    2'b00:case(Present_State)
        2'b01, 2'b10, 2'b11: Next_State = Present_State - 1;
        default :Next_State = 2'b00;
        endcase
    2'b01:Next_State = 2'b11;
    default:Next_State = 2'b00;
    endcase
    end
endmodule
