`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2025 04:53:52 PM
// Design Name: 
// Module Name: DMM_3SAT_test_pipeline
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


module DMM_3SAT_test_pipeline #(
    parameter integer n = 50,
    parameter integer n_clause = 350

)(
    input wire clk,
    input wire reset,
    input wire start_solving,
    
    output reg [31:0] clause_counter,
    output reg [31:0] clause_counter_total, // count from 0 to n_clause + pipeline_stages + pipeline_latency. maybe +1 or +2 extra for new_x_l
    //  all_full_Gs = 0 when clause_counter_total == 0
    output reg clause_counter_looped,
    output reg [n-1:0] solution,
    output reg done,
    output reg [31:0] steps,
    output reg check,
    output reg [31:0] check_out,
    output wire check_clauses,
    
    output reg valid_in_1, check_v_new, check_x_new,
    output wire valid_out_s1, valid_out_s2, valid_out_s3, valid_out_q5, valid_out_q8, valid_out_q16, valid_out_s5, valid_out_s6, valid_out_q6, valid_out_q20, valid_out_s7, valid_out_s8, valid_out_s9, valid_out_s10, 
    output wire valid_out_s11, valid_out_s12, valid_out_s13, valid_out_s14, valid_out_s15, valid_out_s16, valid_out_s17, valid_out_s18, valid_out_s19, valid_out_s20, valid_out_s21, valid_out_s22, valid_out_s26, valid_out_s27, valid_out_s28, valid_out_v_new_1,
    
    output wire [15:0] v1_index, v2_index, v3_index,
    output wire v1_sign, v2_sign, v3_sign,
    output reg [15:0] C_m, G_n_1, G_n_2, G_n_3, R_n,
    output wire [15:0] G_n_2_full_2, G_n_3_full_2, G_R_1_full_2,
    output reg [15:0] max_v_index_1, max_v_index_2, max_v_index_3,
    output wire [15:0] test_v_1, test_v_2, test_v_3, test_v_4, test_v_5,
    output wire [15:0] test_v_1_new, test_v_2_new, test_v_3_new, test_v_4_new, test_v_5_new,
    output wire [15:0] test_v_1_new_tmp, test_v_2_new_tmp, test_v_3_new_tmp, test_v_4_new_tmp, test_v_5_new_tmp,
    output wire [15:0] test_x_l_1, test_x_l_2, test_x_l_3, test_x_s_1, test_x_s_2, test_x_s_3,
    output wire [15:0] test_x_l_1_new, test_x_l_2_new, test_x_l_3_new, test_x_s_1_new, test_x_s_2_new, test_x_s_3_new,
    output wire [15:0] test_current_x_l, test_current_x_s, funct_x_l, funct_x_s, euler_x_l, euler_x_s,
    output reg [15:0] new_x_l, new_x_s,
    
    output wire [15:0] all_full_Gs_1, all_full_Gs_2, all_full_Gs_3, all_full_Gs_4, all_full_Gs_5, all_full_Gs_last, all_full_Gs_second_last,
    output wire [15:0] all_full_G_R_temp, all_full_Gs_temp_2, all_full_Gs_temp_3,
    
    output wire [15:0] all_full_Gs_tmp, test_v_new_tmp, test_v_tmp,
    output wire [15:0] qwe1, qwe2, qwe3, qwe4 ,qwe5, qwe6, qwe7, qwe8, qwe9, qwe10,
    
    input wire [31:0] bram1_dout_b,
    input wire [31:0] bram2_dout_b,
    output reg bram_en_b,
    output reg [31:0] bram_addr_b
    );
    
    reg [15:0] v [0:n-1];
    wire [15:0] v_new [0:n-1];
    wire [15:0] v_new_tmp [0:n-1];
//    wire [15:0] v1_index, v2_index, v3_index;
//    wire v1_sign, v2_sign, v3_sign;
    
    reg [15:0] alpha = 16'h3800;
    reg [15:0] beta = 16'h4000;
    reg [15:0] gamma = 16'hb400;
    reg [15:0] delta = 16'haa66;
    reg [15:0] eps = 16'h1418;
    reg [15:0] zeta = 16'h2e66; // 2e66 == 0.1 // 1418 == 0.1
    
    reg [15:0] x_l [0:n_clause-1];
    reg [15:0] x_s [0:n_clause-1];
    reg [15:0] x_l_new [0:n_clause-1];
    reg [15:0] x_s_new [0:n_clause-1];
    reg [15:0] current_x_l;
    reg [15:0] current_x_s;
    wire [15:0] funct_x_l, funct_x_s, euler_x_l, euler_x_s;
    reg [15:0] all_full_Gs [0:n-1];
    
    
//    assign v1_index = bram1_dout_b[31:24]; // 1 BRAM
//    assign v2_index = bram1_dout_b[23:16];
//    assign v3_index = bram1_dout_b[15:8];
//    assign v1_sign = bram1_dout_b[2];
//    assign v2_sign = bram1_dout_b[1];
//    assign v3_sign = bram1_dout_b[0];
    
    assign v1_index = bram1_dout_b[31:16]; // 2 BRAMS
    assign v2_index = bram1_dout_b[15:0];
    assign v3_index = bram2_dout_b[31:16];
    assign v1_sign = bram2_dout_b[2];
    assign v2_sign = bram2_dout_b[1];
    assign v3_sign = bram2_dout_b[0];
    
    
    
    
    assign test_v_1 = v[0];
    assign test_v_2 = v[1];
    assign test_v_3 = v[2];
    assign test_v_4 = v[n-2];
    assign test_v_5 = v[n-1];
    assign test_v_1_new = v_new[0];
    assign test_v_2_new = v_new[1];
    assign test_v_3_new = v_new[2];
    assign test_v_4_new = v_new[n-2];
    assign test_v_5_new = v_new[n-1];
    assign test_v_1_new_tmp = v_new_tmp[0];
    assign test_v_2_new_tmp = v_new_tmp[1];
    assign test_v_3_new_tmp = v_new_tmp[2];
    assign test_v_4_new_tmp = v_new_tmp[n-2];
    assign test_v_5_new_tmp = v_new_tmp[n-1];
    
    assign test_x_l_1 = x_l[0];
    assign test_x_l_2 = x_l[1];
    assign test_x_l_3 = x_l[2];
    assign test_x_s_1 = x_s[n_clause-3];
    assign test_x_s_2 = x_s[n_clause-2];
    assign test_x_s_3 = x_s[n_clause-1];
    reg [15:0] tmp_x_s = 0;
    reg [15:0] tmp_x_l = 0;
    assign test_x_l_1_new = tmp_x_s;
    assign test_x_l_2_new = tmp_x_l;
    assign test_x_l_3_new = x_l_new[2];
    assign test_x_s_1_new = x_s_new[n_clause-3];
    assign test_x_s_2_new = x_s_new[n_clause-2];
    assign test_x_s_3_new = x_s_new[n_clause-1];
    assign test_current_x_l = current_x_l;
    assign test_current_x_s = current_x_s;
    
    
    
    assign all_full_Gs_1 = all_full_Gs[0];
    assign all_full_Gs_2 = all_full_Gs[1];
    assign all_full_Gs_3 = all_full_Gs[2];
    assign all_full_Gs_4 = all_full_Gs[3];
    assign all_full_Gs_5 = all_full_Gs[4];
    assign all_full_Gs_last = all_full_Gs[n-1];
    assign all_full_Gs_second_last = all_full_Gs[n-2];
    
    assign test_v_tmp = v[0];
    assign test_v_new_tmp = v_new[0];
    assign all_full_Gs_tmp = all_full_Gs[0];
    wire valid_out_v_new [0:n-1];
    assign valid_out_v_new_1 = valid_out_v_new[0];
    
    integer i;
    
    always @(posedge clk) begin
        if (reset == 0) begin
            clause_counter <= 0;
            clause_counter_total <= 0;
            clause_counter_looped <= 0;
            done <= 0;
            steps <= 0;
            check <= 0;
            check_out <= 0;
            valid_in_1 <= 0;
            
            bram_en_b <= 0;
            bram_addr_b <= 0;
            
            for (i=0;i<n;i=i+1) begin
                v[i] <= 16'h3800; // initial condition
            end
            
            for (i=0;i<n_clause;i=i+1) begin
                x_l[i] <= 16'h3c00;
                x_s[i] <= 16'h3800;
                x_l_new[i] <= 16'h3c00;
                x_s_new[i] <= 16'h3800;
            end
            
        end else begin
            if (start_solving == 1) begin
                valid_in_1 <= 1;
                if (bram_en_b == 1) begin
                    check <= 1;
                end
                if (done == 0) begin
                    bram_en_b <= 1;
                    
                    if (clause_counter < n_clause+1 && clause_counter_looped == 0) begin
                        bram_addr_b <= clause_counter << 2;
                        clause_counter <= clause_counter + 1;
                        
                        
                        
                    end else begin
                        clause_counter_looped <= 1;
                        clause_counter <= 0;
                    end
                    
                    if (clause_counter_total == 0) begin
                        for (i=0;i<n;i=i+1) begin
                            v[i] <= v_new[i];
                        end     
                    end
                    
                    if (clause_counter_total < n_clause + 21) begin // + 11 latency + 9 stages + 1. same as n_clause + 1 in old code
                        clause_counter_total <= clause_counter_total + 1;
                        if (check_x_new == 1) begin
                            x_l[clause_counter_total - 12] <= new_x_l;
                            x_s[clause_counter_total - 12] <= new_x_s;
                        end
                    end else begin
                        clause_counter_total <= 0;
                        steps <= steps + 1;
                        clause_counter_looped <= 0;
                    end
                    
                end
            end
        end
    end
    
    integer sol;
    always @(posedge clk) begin
        if (done == 0) begin
            solution <= 0;
        end else begin
            for (sol = 0; sol < n; sol = sol+1) begin
                solution[sol] <= v[sol][15];
            end
        end
    end
    
    // STAGE 1 - finding max, max_2, max_3 values. qwe5, qwe2, qwe6, qwe8
    
//    reg [15:0] qwe1_reg, qwe2_reg, qwe3_reg, qwe4_reg;   
//    FpAdd_c s1 (current_x_s,eps,qwe1); // qwe2
//    FpMul s2 (current_x_l,current_x_s,qwe2); // qwe5
//    FpMul s3 (current_x_l,zeta,qwe3); // qwe6
//    FpNegate s4 (current_x_s,1'b1,qwe4); // qwe8

    floating_point_0 s1 
    (
        .aclk(clk),
        .s_axis_a_tdata(current_x_s),
        .s_axis_b_tdata(eps),
        .s_axis_a_tvalid(valid_in_1),
        .s_axis_b_tvalid(valid_in_1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s1),
        .m_axis_result_tdata(qwe1)
    );
    floating_point_1 s2 
    (
        .aclk(clk),
        .s_axis_a_tdata(current_x_l),
        .s_axis_b_tdata(current_x_s),
        .s_axis_a_tvalid(valid_in_1),
        .s_axis_b_tvalid(valid_in_1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s2),
        .m_axis_result_tdata(qwe2)
    );
    floating_point_1 s3 
    (
        .aclk(clk),
        .s_axis_a_tdata(current_x_l),
        .s_axis_b_tdata(zeta),
        .s_axis_a_tvalid(valid_in_1),
        .s_axis_b_tvalid(valid_in_1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s3),
        .m_axis_result_tdata(qwe3)
    );
    FpNegate s4 (current_x_s,1'b1,qwe4);
    
    wire v1_2, v2_3, v1_3;
    reg [15:0] max_v, max_v_2, max_v_3;
    wire [15:0] new_v1, new_v2, new_v3;
    reg max_q, max_q_2, max_q_3;
    FpNegate w1 (v1,check_sign_1,new_v1);
    FpNegate w2 (v2,check_sign_2,new_v2);
    FpNegate w3 (v3,check_sign_3,new_v3);         
    FpCompare q1 (new_v1,new_v2,v1_2);
    FpCompare q2 (new_v2,new_v3,v2_3);
    FpCompare q3 (new_v1,new_v3,v1_3);    
    reg [15:0] max_q_16bit; // for R_n
    reg max_q_neg;
    
    reg [15:0] counter_1 = 0;
    always @(posedge clk) begin // finding max v in each clause
        if (reset == 0 && counter_1 < 10) begin
            max_v <= 15'b0; // removing latches
            max_v_2 <= 15'b0;
            max_v_3 <= 15'b0;
            max_q <= 1'b0;
            max_q_2 <= 1'b0;
            max_q_3 <= 1'b0;
            max_v_index_1 <= 16'b0;
            max_v_index_2 <= 16'b0;
            max_v_index_3 <= 16'b0;
            max_q_16bit <= 16'b0;
            max_q_neg <= 1'b0;
            counter_1 = counter_1 + 1;
        end else begin           
//            qwe1_reg <= qwe1; // qwe2
//            qwe2_reg <= qwe2; // qwe5
//            qwe3_reg <= qwe3; // qwe6
//            qwe4_reg <= qwe4; // qwe8
            if (v1_2 == 1 && v1_3 == 1 && v2_3 == 1) begin
                max_v <= new_v1;
                max_v_2 <= new_v2;
                max_v_3 <= new_v3;
                max_q <= check_sign_1;
                max_q_2 <= check_sign_2;
                max_q_3 <= check_sign_3;
                max_v_index_1 <= v1_index;
                max_v_index_2 <= v2_index;
                max_v_index_3 <= v3_index;
            end else if (v1_2 == 1 && v1_3 == 1 && v2_3 == 0) begin
                max_v <= new_v1;
                max_v_2 <= new_v3;
                max_v_3 <= new_v2;
                max_q <= check_sign_1;
                max_q_2 <= check_sign_3;
                max_q_3 <= check_sign_2;
                max_v_index_1 <= v1_index;
                max_v_index_2 <= v3_index;
                max_v_index_3 <= v2_index;
            end else if(v1_2 == 0 && v2_3 == 1 && v1_3 == 1) begin
                max_v <= new_v2;
                max_v_2 <= new_v1;
                max_v_3 <= new_v3;
                max_q <= check_sign_2;
                max_q_2 <= check_sign_1;
                max_q_3 <= check_sign_3;
                max_v_index_1 <= v2_index;
                max_v_index_2 <= v1_index;
                max_v_index_3 <= v3_index;
            end else if(v1_2 == 0 && v2_3 == 1 && v1_3 == 0) begin
                max_v <= new_v2;
                max_v_2 <= new_v3;
                max_v_3 <= new_v1;
                max_q <= check_sign_2;
                max_q_2 <= check_sign_3;
                max_q_3 <= check_sign_1;
                max_v_index_1 <= v2_index;
                max_v_index_2 <= v3_index;
                max_v_index_3 <= v1_index;
            end else if(v1_3 == 0 && v2_3 == 0 && v1_2 == 1) begin
                max_v <= new_v3;
                max_v_2 <= new_v1;
                max_v_3 <= new_v2;
                max_q <= check_sign_3;
                max_q_2 <= check_sign_1;
                max_q_3 <= check_sign_2;
                max_v_index_1 <= v3_index;
                max_v_index_2 <= v1_index;
                max_v_index_3 <= v2_index;
            end else if(v1_3 == 0 && v2_3 == 0 && v1_2 == 0) begin
                max_v <= new_v3;
                max_v_2 <= new_v2;
                max_v_3 <= new_v1;
                max_q <= check_sign_3;
                max_q_2 <= check_sign_2;
                max_q_3 <= check_sign_1;
                max_v_index_1 <= v3_index;
                max_v_index_2 <= v2_index;
                max_v_index_3 <= v1_index;
            end
            if (max_q) begin
                max_q_16bit <= 16'hbc00;
                max_q_neg <= 1'b0;
            end else begin
                max_q_16bit <= 16'h3c00;
                max_q_neg <= 1'b1;
            end
        end
    end
    
    // STAGE 2 - computing 2*C_m, 2*G_n, 2*R_n, qwe7
    
    wire [15:0] inv_max_v,inv_max_vv; // for C_m
    wire [15:0] inv_max_v_2,inv_max_vv_2; // for G_n_1
    wire [15:0] v_real_max, v_real_max_neg; // for R_n
    FpNegate q4 (max_v,1'b1,inv_max_v);
//    FpAdd_c q5 (inv_max_v,16'h3c00,inv_max_vv);
    floating_point_0 q5 
    (
        .aclk(clk),
        .s_axis_a_tdata(inv_max_v),
        .s_axis_b_tdata(16'h3c00),
        .s_axis_a_tvalid(valid_out_s1),
        .s_axis_b_tvalid(valid_out_s1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_q5),
        .m_axis_result_tdata(inv_max_vv)
    );
    FpNegate q7 (max_v_2,1'b1,inv_max_v_2);
//    FpAdd_c q8 (inv_max_v_2,16'h3c00,inv_max_vv_2);
    floating_point_0 q8
    (
        .aclk(clk),
        .s_axis_a_tdata(inv_max_v_2),
        .s_axis_b_tdata(16'h3c00),
        .s_axis_a_tvalid(valid_out_s1),
        .s_axis_b_tvalid(valid_out_s1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_q8),
        .m_axis_result_tdata(inv_max_vv_2)
    );
    FpNegate q15 (max_v,max_q_neg,v_real_max);
//    FpAdd_c q16 (v_real_max,max_q_16bit,v_real_max_neg);
//    FpAdd_c s5 (qwe3_reg,16'h3c00,qwe5); // qwe7
//    FpAdd_c s6 (qwe4_reg,16'h3c00,qwe6); // qwe9
    floating_point_0 q16
    (
        .aclk(clk),
        .s_axis_a_tdata(v_real_max),
        .s_axis_b_tdata(max_q_16bit),
        .s_axis_a_tvalid(valid_out_s1),
        .s_axis_b_tvalid(valid_out_s1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_q16),
        .m_axis_result_tdata(v_real_max_neg)
    );
    floating_point_0 s5
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe3),
        .s_axis_b_tdata(16'h3c00),
        .s_axis_a_tvalid(valid_out_s1),
        .s_axis_b_tvalid(valid_out_s1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s5),
        .m_axis_result_tdata(qwe5)
    );
    floating_point_0 s6
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe4),
        .s_axis_b_tdata(16'h3c00),
        .s_axis_a_tvalid(valid_out_s1),
        .s_axis_b_tvalid(valid_out_s1),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s6),
        .m_axis_result_tdata(qwe6)
    );
    
    
//    reg [15:0] inv_max_vv_reg, inv_max_vv_2_reg, v_real_max_neg_reg, qwe5_reg, qwe6_reg;
//    always @(posedge clk) begin
//        inv_max_vv_reg <= inv_max_vv;
//        inv_max_vv_2_reg <= inv_max_vv_2;
//        v_real_max_neg_reg <= v_real_max_neg;
//        qwe5_reg <= qwe5; // qwe7
//        qwe6_reg <= qwe6; // qwe9
//    end
    
    // STAGE 3 - computing C_m, G_n, R_n, qwe10
    
//    FpMul q6 (inv_max_vv_reg,16'h3800,out_C_m);
    floating_point_1 q6
    (
        .aclk(clk),
        .s_axis_a_tdata(inv_max_vv),
        .s_axis_b_tdata(16'h3800),
        .s_axis_a_tvalid(valid_out_q5),
        .s_axis_b_tvalid(valid_out_q5),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_q6),
        .m_axis_result_tdata(out_C_m)
    );
    FpCompare q0 (out_C_m,16'h3800,check_clauses);
    FpNegate q18 (out_C_m,max_q_2,out_G_n_2);
    FpNegate q19 (out_C_m,max_q_3,out_G_n_3);
    FpNegate q9 (inv_max_vv_2_reg,out_G_n_1);
//    FpMul q20 (v_real_max_neg_reg,16'h3800,out_R_n);
//    FpMul s7 (qwe5_reg,qwe6_reg,qwe7); // qwe10
    
    floating_point_1 q20
    (
        .aclk(clk),
        .s_axis_a_tdata(v_real_max_neg),
        .s_axis_b_tdata(16'h3800),
        .s_axis_a_tvalid(valid_out_q5),
        .s_axis_b_tvalid(valid_out_q5),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_q20),
        .m_axis_result_tdata(out_R_n)
    );
    floating_point_1 s7
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe5),
        .s_axis_b_tdata(qwe6),
        .s_axis_a_tvalid(valid_out_q5),
        .s_axis_b_tvalid(valid_out_q5),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s7),
        .m_axis_result_tdata(qwe7)
    );
    
    
//    reg [15:0] qwe7_reg;
//    always @(posedge clk) begin
//        C_m <= out_C_m;
//        G_n_1 <= out_G_n_1;
//        G_n_2 <= out_G_n_2;
//        G_n_3 <= out_G_n_3;
//        R_n <= out_R_n;
//        qwe7_reg <= qwe7; // qwe10
//    end
    
    // STAGE 4 - computing G_n_full, R_n_full, qwe1, qwe3
    
//    FpMul s8 (qwe2_reg,G_n_1,G_n_1_full);
//    FpMul s9 (qwe2_reg,G_n_2,G_n_2_full);
//    FpMul s10 (qwe2_reg,G_n_3,G_n_3_full);
//    FpMul s11 (qwe7_reg,R_n,R_n_full);
//    FpAdd_c s12 (C_m,delta,qwe8); // qwe1
//    FpAdd_c s13 (C_m,gamma,qwe9); // qwe3
    floating_point_1 s8
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe2),
        .s_axis_b_tdata(out_G_n_1),
        .s_axis_a_tvalid(valid_out_s7),
        .s_axis_b_tvalid(valid_out_s7),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s8),
        .m_axis_result_tdata(G_n_1_full)
    );
    floating_point_1 s9
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe2),
        .s_axis_b_tdata(out_G_n_2),
        .s_axis_a_tvalid(valid_out_s7),
        .s_axis_b_tvalid(valid_out_s7),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s9),
        .m_axis_result_tdata(G_n_2_full)
    );
    floating_point_1 s10
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe2),
        .s_axis_b_tdata(out_G_n_3),
        .s_axis_a_tvalid(valid_out_s7),
        .s_axis_b_tvalid(valid_out_s7),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s10),
        .m_axis_result_tdata(G_n_3_full)
    );
    floating_point_1 s11
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe7),
        .s_axis_b_tdata(out_R_n),
        .s_axis_a_tvalid(valid_out_s7),
        .s_axis_b_tvalid(valid_out_s7),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s11),
        .m_axis_result_tdata(R_n_full)
    );
    floating_point_0 s12
    (
        .aclk(clk),
        .s_axis_a_tdata(out_C_m),
        .s_axis_b_tdata(delta),
        .s_axis_a_tvalid(valid_out_s7),
        .s_axis_b_tvalid(valid_out_s7),
        .m_axis_result_tready(valid_out_s7),
        .m_axis_result_tvalid(valid_out_s12),
        .m_axis_result_tdata(qwe8)
    );
    floating_point_0 s13
    (
        .aclk(clk),
        .s_axis_a_tdata(out_C_m),
        .s_axis_b_tdata(gamma),
        .s_axis_a_tvalid(valid_out_s7),
        .s_axis_b_tvalid(valid_out_s7),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s13),
        .m_axis_result_tdata(qwe9)
    );
    
//    reg [15:0] G_n_1_full_reg, G_n_2_full_reg, G_n_3_full_reg, R_n_full_reg,qwe8_reg,qwe9_reg;
//    always @(posedge clk) begin
//        G_n_1_full_reg <= G_n_1_full;
//        G_n_2_full_reg <= G_n_2_full;
//        G_n_3_full_reg <= G_n_3_full;
//        R_n_full_reg <= R_n_full;
//        qwe8_reg <= qwe8; // qwe1
//        qwe9_reg <= qwe9; // qwe3
//    end
    
    // STAGE 5 - computing G_R_1_full, qwe4
    
//    FpAdd_c s14 (G_n_1_full_reg,R_n_full_reg,G_R_1_full);
//    FpMul s15 (qwe1_reg,qwe9_reg,qwe10); // qwe4
    floating_point_0 s14
    (
        .aclk(clk),
        .s_axis_a_tdata(G_n_1_full),
        .s_axis_b_tdata(R_n_full),
        .s_axis_a_tvalid(valid_out_s13),
        .s_axis_b_tvalid(valid_out_s13),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s14),
        .m_axis_result_tdata(G_R_1_full)
    );
    floating_point_1 s15
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe1),
        .s_axis_b_tdata(qwe9),
        .s_axis_a_tvalid(valid_out_s13),
        .s_axis_b_tvalid(valid_out_s13),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s15),
        .m_axis_result_tdata(qwe10)
    );
    
//    reg [15:0] G_R_1_full_reg, qwe10_reg;
//    always @(posedge clk) begin
//        G_R_1_full_reg <= G_R_1_full;
//        qwe10_reg <= qwe10; // qwe4
//    end
    
    // STAGE 6 - computing G_R_1_full_2, G_n_2_full_2, G_n_3_full_2, funct_x_l, funct_x_s
    
    reg [15:0] dt_1 = 16'h2a66; // *dt * 1/2. 16'h2666 == 0.025, 16'h2a66 == 0.05, 16'h2e66 == 0.1
//    FpMul s16 (G_R_1_full,dt_1,G_R_1_full_2);
//    FpMul s17 (G_n_2_full,dt_1,G_n_2_full_2);
//    FpMul s18 (G_n_3_full,dt_1,G_n_3_full_2);
//    FpMul s19 (qwe8_reg,alpha,funct_x_l);
//    FpMul s20 (qwe10_reg,beta,funct_x_s);
    floating_point_1 s16
    (
        .aclk(clk),
        .s_axis_a_tdata(G_R_1_full),
        .s_axis_b_tdata(dt_1),
        .s_axis_a_tvalid(valid_out_s13),
        .s_axis_b_tvalid(valid_out_s13),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s16),
        .m_axis_result_tdata(G_R_1_full_2)
    );
    floating_point_1 s17
    (
        .aclk(clk),
        .s_axis_a_tdata(G_n_2_full),
        .s_axis_b_tdata(dt_1),
        .s_axis_a_tvalid(valid_out_s13),
        .s_axis_b_tvalid(valid_out_s13),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s17),
        .m_axis_result_tdata(G_n_2_full_2)
    );
    floating_point_1 s18
    (
        .aclk(clk),
        .s_axis_a_tdata(G_n_3_full),
        .s_axis_b_tdata(dt_1),
        .s_axis_a_tvalid(valid_out_s13),
        .s_axis_b_tvalid(valid_out_s13),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s18),
        .m_axis_result_tdata(G_n_3_full_2)
    );
    floating_point_1 s19
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe8),
        .s_axis_b_tdata(alpha),
        .s_axis_a_tvalid(valid_out_s13),
        .s_axis_b_tvalid(valid_out_s13),
        .m_axis_result_tready(valid_out_s13),
        .m_axis_result_tvalid(valid_out_s19),
        .m_axis_result_tdata(funct_x_l)
    );
    floating_point_1 s20
    (
        .aclk(clk),
        .s_axis_a_tdata(qwe10),
        .s_axis_b_tdata(beta),
        .s_axis_a_tvalid(valid_out_s13),
        .s_axis_b_tvalid(valid_out_s13),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s20),
        .m_axis_result_tdata(funct_x_s)
    );
    
//    reg G_R_1_full_2_reg, G_n_2_full_2_reg, G_n_3_full_2_reg, funct_x_l_reg, funct_x_s_reg;
//    always @(posedge clk) begin
//        G_R_1_full_2_reg <= G_R_1_full_2;
//        G_n_2_full_2_reg <= G_n_2_full_2;
//        G_n_3_full_2_reg <= G_n_3_full_2;
//        funct_x_l_reg <= funct_x_l;
//        funct_x_s_reg <= funct_x_s;
//    end
    
    // STAGE 7 - computing euler_x_l, euler_x_s, all_full_Gs with boundaries and assigning new values
    
    wire check_x_l_1, check_x_s_1, check_x_s_2;
//    FpAdd_c s21 (current_x_l,funct_x_l,euler_x_l);
//    FpAdd_c s22 (current_x_s,funct_x_s,euler_x_s);
    floating_point_0 s21
    (
        .aclk(clk),
        .s_axis_a_tdata(current_x_l),
        .s_axis_b_tdata(funct_x_l),
        .s_axis_a_tvalid(valid_out_s20),
        .s_axis_b_tvalid(valid_out_s20),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s21),
        .m_axis_result_tdata(euler_x_l)
    );
    floating_point_0 s22
    (
        .aclk(clk),
        .s_axis_a_tdata(current_x_s),
        .s_axis_b_tdata(funct_x_s),
        .s_axis_a_tvalid(valid_out_s20),
        .s_axis_b_tvalid(valid_out_s20),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s22),
        .m_axis_result_tdata(euler_x_s)
    );
    FpCompare s23 (euler_x_l,16'h3c00,check_x_l_1);
    FpCompare s24 (euler_x_s,16'h0,check_x_s_1);
    FpCompare s25 (euler_x_s,16'h3c00,check_x_s_2);
    
    
    always @(posedge clk) begin
        if (reset == 0) begin
            new_x_l <= 16'hbc00;
            new_x_s <= 16'hb800;
            check_x_new <= 0;
        end else begin
            check_x_new <= valid_out_s22; // same as valid_out_s22 but 1 cycle delay
            if (check_x_l_1 == 0) begin
                new_x_l <= 16'h3c00;
            end else begin
                new_x_l <= euler_x_l;
            end
            if (check_x_s_1 == 0 && check_x_s_2 == 0) begin
                new_x_s <= 16'h0;
            end else if (check_x_s_1 == 1 && check_x_s_2 == 1) begin
                new_x_s <= 16'h3c00;
            end else begin
                new_x_s <= euler_x_s;
            end
        end
    end
    
    // STAGE 8 computing all_full_Gs_temp and assigning them to all_full_Gs
    
    floating_point_0 s26
    (
        .aclk(clk),
        .s_axis_a_tdata(G_R_1_full_2),
        .s_axis_b_tdata(all_full_Gs[max_v_index_1]),
        .s_axis_a_tvalid(valid_out_s22),
        .s_axis_b_tvalid(valid_out_s22),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s26),
        .m_axis_result_tdata(all_full_G_R_temp)
    );
    floating_point_0 s27
    (
        .aclk(clk),
        .s_axis_a_tdata(G_n_2_full_2),
        .s_axis_b_tdata(max_v_index_2),
        .s_axis_a_tvalid(valid_out_s22),
        .s_axis_b_tvalid(valid_out_s22),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s27),
        .m_axis_result_tdata(all_full_Gs_temp_2)
    );
    floating_point_0 s28
    (
        .aclk(clk),
        .s_axis_a_tdata(G_n_3_full_2),
        .s_axis_b_tdata(max_v_index_3),
        .s_axis_a_tvalid(valid_out_s22),
        .s_axis_b_tvalid(valid_out_s22),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_s28),
        .m_axis_result_tdata(all_full_Gs_temp_3)
    );
    
    integer p;
    always @(posedge clk) begin
        if (clause_counter_total == 0) begin
            for (p = 0; p < n; p = p + 1) begin
                all_full_Gs[p] <= 0;
            end
        end else begin
            all_full_Gs[max_v_index_1] <= all_full_G_R_temp;
            all_full_Gs[max_v_index_2] <= all_full_Gs_temp_2;
            all_full_Gs[max_v_index_3] <= all_full_Gs_temp_3;
        end
    end
    
    // STAGE 9 computing v_new
    
    genvar i_v;
    generate
    
    
    
    for(i_v=0;i_v<n;i_v=i_v+1) begin
        
        floating_point_0 s29
    (
        .aclk(clk),
        .s_axis_a_tdata(all_full_Gs[i_v]),
        .s_axis_b_tdata(v[i_v]),
        .s_axis_a_tvalid(check_v_new),
        .s_axis_b_tvalid(check_v_new),
        .m_axis_result_tready(valid_in_1),
        .m_axis_result_tvalid(valid_out_v_new[i_v]),
        .m_axis_result_tdata(v_new_tmp[i_v])
    );
        
        euler_integrator_v int_v(
//        .clause_counter_total(clause_counter_total),
//        .funct(all_full_Gs[i_v]),
        .valid_out_v_new(valid_out_v_new[i_v]),
        .clk(clk),
        .initial_in(v_new_tmp[i_v]),
        .out(v_new[i_v]) 
    );
        
    end
    
    endgenerate
    
endmodule
