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
    input [3:0] Present_State,
    output reg [3:0] Next_State
    );
    //integer k = 300; 
    always @ (Input, Present_State) begin
    case(Present_State)
        4'b1111:begin
            if(Input == 2'b10) Next_State = 4'b0100;
            else if (Input == 2'b01) Next_State = 4'b0000;
            else Next_State = Present_State;
        end
        4'b0100:begin
            if(Input == 2'b10) Next_State = 4'b0001;
            else if (Input == 2'b01) Next_State = 4'b0101;
            else Next_State = Present_State;
        end
        4'b0101:begin
            if(Input == 2'b10) Next_State = 4'b0010;
            else if (Input == 2'b01) Next_State = 4'b0110;
             else Next_State = Present_State;
        end
        4'b0110:begin
            if(Input == 2'b10) Next_State = 4'b0111;
            else if (Input == 2'b01) Next_State = 4'b0011;
            else Next_State = Present_State;
        end
        4'b0111:begin
            if(Input == 2'b10) Next_State = 4'b0111;
            else if (Input == 2'b01) Next_State = 4'b0111;
            else Next_State = Present_State;
        end
        4'b0000:begin
            if(Input == 2'b10 || Input == 2'b01) Next_State = 4'b0001;
            else Next_State = Present_State; 
        end
        4'b0001:begin 
            if(Input == 2'b10 || Input == 2'b01) Next_State = 4'b0010;
            else Next_State = Present_State;
        end
        4'b0010:begin
            if(Input == 2'b10 || Input == 2'b01) Next_State = 4'b0011;
            else Next_State = Present_State;
        end
        4'b0011: begin
            if(Input == 2'b10) Next_State = 4'b0100;
            else if (Input == 2'b01) Next_State = 4'b0000;
            else Next_State = Present_State;
        end
        default: Next_State = 4'b1111;
    endcase
    end
endmodule
