`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 11:47:15 AM
// Design Name: 
// Module Name: mux2_test
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


module mux2_test();
localparam BITS = 16;

 //declare wires, reg, etc.
 
reg [BITS-1:0] in0_t;
reg [BITS-1:0] in1_t;
reg sel_t;
wire [BITS-1:0] out_t;
 
 
 //instantiate dut
 
 mux2 #(.BITS(BITS))  dut (
    .in0(in0_t),
    .in1(in1_t),
    .sel(sel_t),
    .out(out_t)
    );
 
 
 //drive the inputs

initial begin
    sel_t=1'b0; in0_t=16'b0010; in1_t=16'b1001; #10
    sel_t=1'b1; in0_t=16'b0010; in1_t=16'b1001; #10
    sel_t=1'b0; in0_t=16'b0001; in1_t=16'b0100; #10
    sel_t=1'b1; in0_t=16'b0001; in1_t=16'b0100; #10

$finish;
end


endmodule
