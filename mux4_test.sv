`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:10:39 PM
// Design Name: 
// Module Name: mux4_test
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


module mux4_test();

localparam BITS = 16;

 //declare wires, reg, etc.
 
reg [BITS-1:0] in0_t;
reg [BITS-1:0] in1_t;
reg [BITS-1:0] in2_t;
reg [BITS-1:0] in3_t;
reg [1:0] sel_t;
wire [BITS-1:0] out_t;
 
 
 //instantiate dut
 
 mux4 #(.BITS(BITS))  dut (
    .in0(in0_t),
    .in1(in1_t),
    .in2(in2_t),
    .in3(in3_t),
    .sel(sel_t),
    .out(out_t)
    );
 
 
 //drive the inputs

initial begin
    sel_t=2'b00; in0_t=16'b0010; in1_t=16'b1001; in2_t=16'b1110; in3_t=16'b1011; #10
    sel_t=2'b01; in0_t=16'b0010; in1_t=16'b1001; in2_t=16'b1110; in3_t=16'b1011; #10
    sel_t=2'b00; in0_t=16'b0001; in1_t=16'b0100; in2_t=16'b1101; in3_t=16'b1010; #10
    sel_t=2'b01; in0_t=16'b0001; in1_t=16'b0100; in2_t=16'b1101; in3_t=16'b1010; #10
    sel_t=2'b10; in0_t=16'b0010; in1_t=16'b1001; in2_t=16'b1110; in3_t=16'b1011; #10
    sel_t=2'b11; in0_t=16'b0010; in1_t=16'b1001; in2_t=16'b1110; in3_t=16'b1011; #10
    sel_t=2'b10; in0_t=16'b0001; in1_t=16'b0100; in2_t=16'b1101; in3_t=16'b1010; #10
    sel_t=2'b11; in0_t=16'b0001; in1_t=16'b0100; in2_t=16'b1101; in3_t=16'b1010; #10

$finish;
end


endmodule
