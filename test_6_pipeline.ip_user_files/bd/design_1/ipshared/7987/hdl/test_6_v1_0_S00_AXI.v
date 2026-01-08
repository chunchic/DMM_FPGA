
`timescale 1 ns / 1 ps

	module test_6_v1_0_S00_AXI #
	(
		// Users to add parameters here
        
        parameter integer n = 5, 
        parameter integer n_clause = 15,
        
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here
        output wire start,
//        output wire [31:0] n_clause,
        output wire [n-1:0] solution,
        output wire [31:0] steps,
        output wire done,
        output wire [31:0] clause_counter,
        output wire [31:0] clause_counter_total,
        output wire clause_counter_looped,
        input wire [2:0] state,
        input wire start_solving,

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
        output wire [15:0] test_x_l_1, test_x_l_2, test_x_l_3, test_x_s_1, test_x_s_2, test_x_s_3,
        output wire [15:0] test_x_l_1_new, test_x_l_2_new, test_x_l_3_new, test_x_s_1_new, test_x_s_2_new, test_x_s_3_new,
        output wire [15:0] test_current_x_l, test_current_x_s, funct_x_l, funct_x_s, euler_x_l, euler_x_s, new_x_l, new_x_s,
        
        output wire [15:0] all_full_Gs_1, all_full_Gs_2, all_full_Gs_3, all_full_Gs_4, all_full_Gs_5, all_full_Gs_last, all_full_Gs_second_last,
        output wire [15:0] all_full_G_R_temp, all_full_Gs_temp_2, all_full_Gs_temp_3,
        
        output wire [15:0] all_full_Gs_tmp, test_v_new_tmp, test_v_tmp,
        output wire [15:0] qwe1, qwe2, qwe3, qwe4 ,qwe5, qwe6, qwe7, qwe8, qwe9, qwe10,
        
        
        input wire [31:0] bram1_dout_b,
        input wire [31:0] bram2_dout_b,
        output wire [31:0] bram_addr_b,
        output wire bram_en_b,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 10
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	      slv_reg8 <= 0;
	      slv_reg9 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          4'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h4:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h5:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h6:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h7:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h8:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 8
	                slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h9:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 9
	                slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                      slv_reg8 <= slv_reg8;
	                      slv_reg9 <= slv_reg9;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        4'h0   : reg_data_out <= slv_reg0;
	        4'h1   : reg_data_out <= {31'b0, done};
	        4'h2   : reg_data_out <= steps;
	        4'h3   : reg_data_out <= slv_reg3;
	        4'h4   : reg_data_out <= slv_reg4;
	        4'h5   : reg_data_out <= slv_reg5;
	        4'h6   : reg_data_out <= slv_reg6;
	        4'h7   : reg_data_out <= slv_reg7;
	        4'h8   : reg_data_out <= slv_reg8;
	        4'h9   : reg_data_out <= slv_reg9;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
    
    wire [n-1:0] solution;
    wire [31:0] out1, out2, out3, out4, out5, out6, out7;
    wire [31:0] steps;
//    assign out1 = solution[99:96];
//    assign out2 = solution[95:62];
//    assign out3 = solution[63:32];
    assign out4 = solution;
    assign start = slv_reg0;
    
    DMM_3SAT_test_pipeline # (
        .n(n),
        .n_clause(n_clause)
    ) core (
        .clk(S_AXI_ACLK), // inputs
        .reset(S_AXI_ARESETN),
        .start_solving(start_solving), 
        
        .clause_counter(clause_counter), // outputs
        .clause_counter_total(clause_counter_total),
        .done(done),
        .solution(solution),
        .steps(steps),

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
        
        .test_x_l_1(test_x_l_1),
        .test_x_l_2(test_x_l_2),
        .test_x_l_3(test_x_l_3),
        .test_x_s_1(test_x_s_1),
        .test_x_s_2(test_x_s_2),
        .test_x_s_3(test_x_s_3),
        .test_x_l_1_new(test_x_l_1_new),
        .test_x_l_2_new(test_x_l_2_new),
        .test_x_l_3_new(test_x_l_3_new),
        .test_x_s_1_new(test_x_s_1_new),
        .test_x_s_2_new(test_x_s_2_new),
        .test_x_s_3_new(test_x_s_3_new),
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
        .bram_addr_b(bram_addr_b), // bram inputs and outputs        
        .bram_en_b(bram_en_b)
    );
    
	// User logic ends

	endmodule
