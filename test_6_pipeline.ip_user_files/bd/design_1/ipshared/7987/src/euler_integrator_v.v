`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2025 03:26:56 AM
// Design Name: 
// Module Name: euler_integrator_v
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


module euler_integrator_v(
    input clk,
//    input [15:0] clause_counter_total,
    input valid_out_v_new,
    input [15:0] initial_in, // initial state of v
    output reg [15:0] out
    );
    
//    wire [15:0] new_v1;
//    reg [15:0] v1;
    wire check_1, check_2; // 1 - check with 1, 2 - check with -1
    
    always @(posedge clk) begin
        if (valid_out_v_new) begin
            if (check_1 == 1 && check_2 == 1) begin
                out <= 16'h3c00;
            end else if (check_1 == 0 && check_2 == 0) begin
                out <= 16'hbc00;
            end else begin
                out <= initial_in;
            end    
        end
    end
    
//    FpAdd_c integrator_sum(initial_in, funct, new_v1);
    FpCompare check_new_v1_1(new_v1,16'h3c00,check_1); // checking boundary conditions
    FpCompare check_new_v1_2(new_v1,16'hbc00,check_2);    
        
    
endmodule
