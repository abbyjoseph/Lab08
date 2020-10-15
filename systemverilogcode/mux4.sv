`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:02:26 PM
// Design Name: 
// Module Name: mux4
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


module mux4 #(parameter BITS = 4) ( 
    input reg [BITS-1:0] in0,
    input reg [BITS-1:0] in1,
    input reg [BITS-1:0] in2,
    input reg [BITS-1:0] in3,
    input reg [1:0] sel,
    output reg [BITS-1:0] out
    );
    
    always @*
    case(sel)
    2'b00: out = in0;
    2'b01: out = in1;
    2'b10: out = in2;
    2'b11: out = in3;
    endcase
    
    
    
endmodule
