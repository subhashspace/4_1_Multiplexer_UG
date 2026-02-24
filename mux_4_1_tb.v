`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2026 04:04:30 AM
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb;

    reg a,b,c,d,s1,s0;
    wire y;

    mux_4_1_str dut (a,b,c,d,s1,s0,y);

    initial 
    begin
        a=1'b0;
        b=1'b1;
        c=1'b1;
        d=1'b0;
        s1=1'b0;
        s0=1'b1;
    #100
        a=1'b1;
        b=1'b0;
        c=1'b0;
        d=1'b1;
        s1=1'b1;
        s0=1'b0;
    #100 $stop;
    end

endmodule
