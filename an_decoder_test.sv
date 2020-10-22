`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2020 05:55:12 PM
// Design Name: 
// Module Name: an_decoder_test
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


module an_decoder_test();

reg [1:0] in_t;
wire [3:0] out_t;

an_decoder dut(
    .in(in_t),
    .out(out_t)
    );

initial begin

    in_t=2'b00; #10
    in_t=2'b01; #10
    in_t=2'b10; #10
    in_t=2'b11; #10
    
$finish;
end

endmodule
