`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:35:26 PM
// Design Name: 
// Module Name: sseg4
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


module sseg4(
    input [15:0] data,
    input hex_dec,
    input sign,
    input [1:0] digit_sel,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    localparam BITS = 16;
    localparam BITS1 = 4;
    localparam BITS2 = 7;
    wire [15:0] BCD_out, mux2_out;
    wire [3:0] mux4_out;
    wire [6:0] ssegdec_out;
    wire sign_sel;
    wire [3:0] an_i;
    
    BCD11b my_BCD11b(
    .B(data[10:0]),
    .BCD_out(BCD_out)
    );
    
    mux2 #(.BITS(BITS)) my_mux2 (
    .in0(BCD_out),
    .in1(data),
    .sel(hex_dec),
    .out(mux2_out)
    );
    
    mux4 #(.BITS(BITS1)) my_mux4 ( 
    .in0(mux2_out[3:0]),
    .in1(mux2_out[7:4]),
    .in2(mux2_out[11:8]),
    .in3(mux2_out[15:12]),
    .sel(digit_sel),
    .out(mux4_out)
    );
    
    sseg_decoder my_sseg_decoder (
    .num(mux4_out),
    .sseg(ssegdec_out)
    );
    
    an_decoder my_an_decoder (
    .in(digit_sel),
    .out(an_i)
    );
    
    assign sign_sel = sign & ~an_i[3];
    assign dp = 1'b1;
    assign an = an_i;
    
    mux2 #(.BITS(BITS2)) my_mux2_1 (
    .in0(ssegdec_out),
    .in1(7'b0111111),
    .sel(sign_sel),
    .out(seg)
    );
    
endmodule
