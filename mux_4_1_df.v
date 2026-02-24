`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2026 04:03:51 AM
// Design Name: 
// Module Name: mux_4_1_df
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


module mux_4_1_df(a,b,c,d,s1,s0,y);
    input a,b,c,d,s1,s0;
    output y;
    
    assign y =   (s1 == 0 && s0 == 0) ? a:
                 (s1 == 0 && s0 == 1) ? b:
                 (s1 == 1 && s0 == 0) ? c: 
                 (s1 == 1 && s0 == 1) ? d: 1'b0;
                                         
endmodule
