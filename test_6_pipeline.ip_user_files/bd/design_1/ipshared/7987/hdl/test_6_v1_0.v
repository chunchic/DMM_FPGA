
`timescale 1 ns / 1 ps

	module test_6_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here
        
        input wire [31:0] bram1_dout_b,
        input wire [31:0] bram2_dout_b,
        output wire [31:0] bram_addr_b,     
        output wire bram_en_b,
        
        output reg start_solving, // temporary for ILA
        output reg [2:0] state,
        output wire [4:0] solution,
        output wire [31:0] steps,
        output wire [31:0] clause_counter,
        output wire [31:0] clause_counter_total,
        output wire start,
        
        output wire done,
        output wire check,
        output wire [31:0] check_out,
        output wire check_clauses,
        
        output wire valid_in_1, check_v_new, check_x_new,
        output wire valid_out_s1, valid_out_s2, valid_out_s3, valid_out_q5, valid_out_q8, valid_out_q16, valid_out_s5, valid_out_s6, valid_out_q6, valid_out_q20, valid_out_s7, valid_out_s8, valid_out_s9, valid_out_s10, 
        output wire valid_out_s11, valid_out_s12, valid_out_s13, valid_out_s14, valid_out_s15, valid_out_s16, valid_out_s17, valid_out_s18, valid_out_s19, valid_out_s20, valid_out_s21, valid_out_s22, valid_out_s26, valid_out_s27, valid_out_s28, valid_out_v_new,
        
        output wire [15:0] v1_index, v2_index, v3_index,
        output wire v1_sign, v2_sign, v3_sign,
        output wire [15:0] C_m, G_n_1, G_n_2, G_n_3, R_n,
        output wire [15:0] G_n_2_full_2, G_n_3_full_2, G_R_1_full_2,
        output wire [15:0] max_v_index_1, max_v_index_2, max_v_index_3,
        output wire [15:0] test_v_1, test_v_2, test_v_3, test_v_4, test_v_5,
        output wire [15:0] test_v_1_new, test_v_2_new, test_v_3_new, test_v_4_new, test_v_5_new,
        output wire [15:0] test_v_1_new_tmp, test_v_2_new_tmp, test_v_3_new_tmp, test_v_4_new_tmp, test_v_5_new_tmp,
        output wire [15:0] test_current_x_l, test_current_x_s, funct_x_l, funct_x_s, euler_x_l, euler_x_s, new_x_l, new_x_s,
        
        output wire [15:0] all_full_Gs_1, all_full_Gs_2, all_full_Gs_3, all_full_Gs_4, all_full_Gs_5, all_full_Gs_last, all_full_Gs_second_last,
        output wire [15:0] all_full_G_R_temp, all_full_Gs_temp_2, all_full_Gs_temp_3,
        
        output wire [15:0] all_full_Gs_tmp, test_v_new_tmp, test_v_tmp,
        output wire [15:0] qwe1, qwe2, qwe3, qwe4 ,qwe5, qwe6, qwe7, qwe8, qwe9, qwe10,
        
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	test_6_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) test_6_v1_0_S00_AXI_inst (
	
	    .start(start),
	    .done(done),
	    .solution(solution),
	    .steps(steps),
	    .clause_counter(clause_counter),
	    .clause_counter_total(clause_counter_total),
	    .state(state),
	    .start_solving(start_solving),
	    
	    .check(check),
	    .check_out(check_out),
        .check_clauses(check_clauses),
        
        .valid_in_1(valid_in_1),
        .check_v_new(check_v_new),
        .check_x_new(check_x_new),
        .valid_out_s1(valid_out_s1),
        .valid_out_s2(valid_out_s2),
        .valid_out_s3(valid_out_s3),
        .valid_out_q5(valid_out_q5),
        .valid_out_q8(valid_out_q8),
        .valid_out_q16(valid_out_q16),
        .valid_out_s5(valid_out_s5),
        .valid_out_s6(valid_out_s6),
        .valid_out_q6(valid_out_q6),
        .valid_out_q20(valid_out_q20),
        .valid_out_s7(valid_out_s7),
        .valid_out_s8(valid_out_s8),
        .valid_out_s9(valid_out_s9),
        .valid_out_s10(valid_out_s10),
        .valid_out_s11(valid_out_s11),
        .valid_out_s12(valid_out_s12),
        .valid_out_s13(valid_out_s13),
        .valid_out_s14(valid_out_s14),
        .valid_out_s15(valid_out_s15),
        .valid_out_s16(valid_out_s16),
        .valid_out_s17(valid_out_s17),
        .valid_out_s18(valid_out_s18),
        .valid_out_s19(valid_out_s19),
        .valid_out_s20(valid_out_s20),
        .valid_out_s21(valid_out_s21),
        .valid_out_s22(valid_out_s22),
        .valid_out_s26(valid_out_s26),
        .valid_out_s27(valid_out_s27),
        .valid_out_s28(valid_out_s28),
        .valid_out_v_new(valid_out_v_new),
        
        .v1_index(v1_index),
        .v2_index(v2_index),
        .v3_index(v3_index),
        .v1_sign(v1_sign),
        .v2_sign(v2_sign),
        .v3_sign(v3_sign),
        .C_m(C_m),
        .G_n_1(G_n_1),
        .G_n_2(G_n_2),
        .G_n_3(G_n_3),
        .R_n(R_n),
        .G_n_2_full_2(G_n_2_full_2),
        .G_n_3_full_2(G_n_3_full_2),
        .G_R_1_full_2(G_R_1_full_2),
        .max_v_index_1(max_v_index_1),
        .max_v_index_2(max_v_index_2),
        .max_v_index_3(max_v_index_3),
        .test_v_1(test_v_1),
        .test_v_2(test_v_2),
        .test_v_3(test_v_3),
        .test_v_4(test_v_4),
        .test_v_5(test_v_5),
        .test_v_1_new(test_v_1_new),
        .test_v_2_new(test_v_2_new),
        .test_v_3_new(test_v_3_new),
        .test_v_4_new(test_v_4_new),
        .test_v_5_new(test_v_5_new),
        .test_v_1_new_tmp(test_v_1_new_tmp),
        .test_v_2_new_tmp(test_v_2_new_tmp),
        .test_v_3_new_tmp(test_v_3_new_tmp),
        .test_v_4_new_tmp(test_v_4_new_tmp),
        .test_v_5_new_tmp(test_v_5_new_tmp),   
        
        .test_current_x_l(test_current_x_l),
        .test_current_x_s(test_current_x_s),
        .funct_x_l(funct_x_l),
        .funct_x_s(funct_x_s),
        .euler_x_l(euler_x_l),
        .euler_x_s(euler_x_s),
        .new_x_l(new_x_l),
        .new_x_s(new_x_s),
	    
	    .all_full_Gs_1(all_full_Gs_1),
        .all_full_Gs_2(all_full_Gs_2),
        .all_full_Gs_3(all_full_Gs_3),
        .all_full_Gs_4(all_full_Gs_4),
        .all_full_Gs_5(all_full_Gs_5),
        .all_full_Gs_last(all_full_Gs_last),
        .all_full_Gs_second_last(all_full_Gs_second_last),
        .all_full_G_R_temp(all_full_G_R_temp),
        .all_full_Gs_temp_2(all_full_Gs_temp_2),
        .all_full_Gs_temp_3(all_full_Gs_temp_3),
        
	    
	    .all_full_Gs_tmp(all_full_Gs_tmp),
        .test_v_new_tmp(test_v_new_tmp),
        .test_v_tmp(test_v_tmp),
	    .qwe1(qwe1),
        .qwe2(qwe2),
        .qwe3(qwe3),
        .qwe4(qwe4),
        .qwe5(qwe5),
        .qwe6(qwe6),
        .qwe7(qwe7),
        .qwe8(qwe8),
        .qwe9(qwe9),
        .qwe10(qwe10),
	    
	    .bram1_dout_b(bram1_dout_b),
	    .bram2_dout_b(bram2_dout_b),
	    .bram_addr_b(bram_addr_b),	    
	    .bram_en_b(bram_en_b),
	
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here
    
    localparam IDLE = 3'b111;
    localparam LOAD = 3'b001;
    localparam SOLVE = 3'b010;
    localparam SEND_RESULTS = 3'b011;
    localparam DONE = 3'b100;
    
    always @(posedge s00_axi_aclk) begin // FSM
        if (s00_axi_aresetn == 0) begin
            state <= IDLE;
            start_solving <= 0;
        end else begin
            case (state)
            
            
            IDLE: begin
                if (start) begin   // start comes from AXI CTRL register
                    state <= LOAD;
                end
            end

            LOAD: begin
                state <= SOLVE;         
            end

            SOLVE: begin
                start_solving <= 1;               
                if (done == 0) begin
                    
                end else begin
                    start_solving <= 0;
                    state <= DONE;
                end
                
            end

            DONE: begin
                if (!start) // wait for software to clear start bit
                    state <= IDLE;
            end
            
            default: state <= IDLE;
            endcase
        end
    end
    
    
    
    
	// User logic ends

	endmodule
