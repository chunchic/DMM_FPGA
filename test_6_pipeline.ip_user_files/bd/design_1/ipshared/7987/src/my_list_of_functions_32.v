 /**************************************************************************
 * Calculates clause function C_m, G_n, R_n                                         *
 **************************************************************************/
 module clause_funct
 (
        input wire [15:0] v1, v2, v3,
        input wire check_sign_1, check_sign_2, check_sign_3,
        input wire [15:0] v1_index, v2_index, v3_index,
        input wire check,
        input wire done,
        input wire [31:0] clause_counter,
        output reg [15:0] max_v_index_1, // max
        output reg [15:0] max_v_index_2, // second
        output reg [15:0] max_v_index_3, // min
        output reg [15:0] C_m, G_n_1, G_n_2, G_n_3, R_n
 );
 
 parameter n_clause = 15;
 
 wire [15:0] out_C_m, out_G_n_1, out_G_n_2, out_G_n_3, out_R_n; // G_n_1 - max, 2 - mid, 3 - min
// reg [15:0] current_v1, current_v2, current_v3;
 

 
 wire v1_2;
 wire v2_3;
 wire v1_3;
 reg [15:0] max_v,max_v_2,max_v_3; // max_v - max, max_v_2 - second
// wire [15:0] new_C_m, new_G_n_1, new_G_n_2, new_G_n_3, new_R_n;
 
 wire [15:0] new_v1, new_v2, new_v3;
 reg max_q, max_q_2, max_q_3; // sign of max, mid, min
 FpNegate w1 (v1,check_sign_1,new_v1);
 FpNegate w2 (v2,check_sign_2,new_v2);
 FpNegate w3 (v3,check_sign_3,new_v3);    
 
 FpCompare q1 (new_v1,new_v2,v1_2);
 FpCompare q2 (new_v2,new_v3,v2_3);
 FpCompare q3 (new_v1,new_v3,v1_3);


 
 reg [15:0] max_q_16bit; // for R_n
 reg max_q_neg;
 
// always @(negedge clk, posedge reset_n) begin
 always @(*) begin 
//    if (real_counter_x < n_clause) begin
    if (done == 0 && check == 1 && clause_counter != 0 && clause_counter != 1) begin
        C_m = out_C_m;
        G_n_1 = out_G_n_1;
        G_n_2 = out_G_n_2;
        G_n_3 = out_G_n_3;
        R_n = out_R_n;
    end else begin
        C_m = 16'b0;
        G_n_1 = 16'b0;
        G_n_2 = 16'b0;
        G_n_3 = 16'b0;
        R_n = 16'b0;
    end
 end
 
 

 
 always @(*) // finding max v in each clause
 begin
    max_v = 15'b0; // removing latches
    max_v_2 = 15'b0;
    max_v_3 = 15'b0;
    max_q = 1'b0;
    max_q_2 = 1'b0;
    max_q_3 = 1'b0;
    max_v_index_1 = 16'b0;
    max_v_index_2 = 16'b0;
    max_v_index_3 = 16'b0;
    max_q_16bit = 16'b0;
    max_q_neg = 2'b00;
 if (v1_2 == 1 && v1_3 == 1 && v2_3 == 1) begin
    max_v = new_v1;
    max_v_2 = new_v2;
    max_v_3 = new_v3;
    max_q = check_sign_1;
    max_q_2 = check_sign_2;
    max_q_3 = check_sign_3;
    max_v_index_1 = v1_index;
    max_v_index_2 = v2_index;
    max_v_index_3 = v3_index;
 end else if (v1_2 == 1 && v1_3 == 1 && v2_3 == 0) begin
    max_v = new_v1;
    max_v_2 = new_v3;
    max_v_3 = new_v2;
    max_q = check_sign_1;
    max_q_2 = check_sign_3;
    max_q_3 = check_sign_2;
    max_v_index_1 = v1_index;
    max_v_index_2 = v3_index;
    max_v_index_3 = v2_index;
 end else if(v1_2 == 0 && v2_3 == 1 && v1_3 == 1) begin
    max_v = new_v2;
    max_v_2 = new_v1;
    max_v_3 = new_v3;
    max_q = check_sign_2;
    max_q_2 = check_sign_1;
    max_q_3 = check_sign_3;
    max_v_index_1 = v2_index;
    max_v_index_2 = v1_index;
    max_v_index_3 = v3_index;
 end else if(v1_2 == 0 && v2_3 == 1 && v1_3 == 0) begin
    max_v = new_v2;
    max_v_2 = new_v3;
    max_v_3 = new_v1;
    max_q = check_sign_2;
    max_q_2 = check_sign_3;
    max_q_3 = check_sign_1;
    max_v_index_1 = v2_index;
    max_v_index_2 = v3_index;
    max_v_index_3 = v1_index;
 end else if(v1_3 == 0 && v2_3 == 0 && v1_2 == 1) begin
    max_v = new_v3;
    max_v_2 = new_v1;
    max_v_3 = new_v2;
    max_q = check_sign_3;
    max_q_2 = check_sign_1;
    max_q_3 = check_sign_2;
    max_v_index_1 = v3_index;
    max_v_index_2 = v1_index;
    max_v_index_3 = v2_index;
 end else if(v1_3 == 0 && v2_3 == 0 && v1_2 == 0) begin
    max_v = new_v3;
    max_v_2 = new_v2;
    max_v_3 = new_v1;
    max_q = check_sign_3;
    max_q_2 = check_sign_2;
    max_q_3 = check_sign_1;
    max_v_index_1 = v3_index;
    max_v_index_2 = v2_index;
    max_v_index_3 = v1_index;
 end
// end
 
 

// always @(*)
// begin
    if (max_q) begin
        max_q_16bit = 16'hbc00;
        max_q_neg = 1'b0;
    end else begin
        max_q_16bit = 16'h3c00;
        max_q_neg = 1'b1;
    end
 end
 
 
 wire [15:0] inv_max_v,inv_max_vv; // for C_m
 wire [15:0] inv_max_v_2,inv_max_vv_2; // for G_n_1
// wire [15:0] inv_max_v_2_2,inv_max_vv_2_2,inv_inv_max_vv_2_2; // for G_n_2 and G_n_3
 wire [15:0] v_real_max; // for R_n
 
 FpNegate q4 (max_v,1'b1,inv_max_v);
 FpAdd_c q5 (inv_max_v,16'h3c00,inv_max_vv);
 FpMul q6 (inv_max_vv,16'h3800,out_C_m); // C_m , G_n_2 = G_n_3 = C_m
// FpHalf q6 (inv_max_vv,4'b1, out_C_m);
 
 FpNegate q18 (inv_max_vv,max_q_2,out_G_n_2);
 FpNegate q19 (inv_max_vv,max_q_3,out_G_n_3);
 
 FpNegate q7 (max_v_2,1'b1,inv_max_v_2);
 FpAdd_c q8 (inv_max_v_2,16'h3c00,inv_max_vv_2);
 FpNegate q9 (inv_max_vv_2,max_q,out_G_n_1);
// FpMul q10 (inv_inv_max_vv_2,32'h3f000000,new_G_n_1); // G_n_1
 
 FpNegate q15 (max_v,max_q_neg,v_real_max);
 FpAdd_c q16 (v_real_max,max_q_16bit,out_R_n);
// FpMul q17 (v_real_max_2,32'h3f000000,new_R_n); // R_n
 
 endmodule
 
 
 /*module calc_C
 (
    input [15:0] max_v,
    output reg [15:0] C   
 );
 
 wire [15:0] inv_max_v;
 wire [15:0] inv_max_v_2;
 
 FpNegate q1(max_v,inv_max_v);
 FpAdd_c q2(inv_max_v,32'h3f800000,inv_max_v_2);
 FpMul q3(inv_max_v_2,32'h3f000000,C);
 
 endmodule*/
 
 /**************************************************************************
 * Floating Point compare                                             *
 * Combinational     
 * output=1 if A>=B
 **************************************************************************/
 module FpCompare(
		input	 [15:0]	iA,
		input	 [15:0]	iB,
		output reg oA_larger
 );
		// Extract fields of A and B.
    wire        A_s;
    wire [4:0]  A_e;
    wire [9:0] A_f;
	wire        B_s;
    wire [4:0]  B_e;
    wire [9:0] B_f;
    
    assign A_s = iA[15];
    assign A_e = iA[14:10];
    assign A_f = iA[9:0];
	 assign B_s = iB[15];
    assign B_e = iB[14:10];
    assign B_f = iB[9:0];
	 
	 // Determine which of A, B is larger
	 wire A_mag_larger ;
    assign A_mag_larger =(A_e > B_e)                   ? 1'b1  :
                         ((A_e == B_e) && (A_f >= B_f)) ? 1'b1  :
                         1'b0;
								 
	 // now do the sign checks
	 always @(*) begin
			if (A_s==0 && B_s==1) begin  // A positive, B negative
				oA_larger = 1'b1 ;
			end
			else if (A_s==1 && B_s==0) begin  // A negative, B positive
				oA_larger = 1'b0 ;
			end
			else if (A_s==0 && B_s==0) begin  // A positive, B positive
				oA_larger = A_mag_larger ;
			end
			else if (A_s==1 && B_s==1) begin  // A negative, B negative
				oA_larger = ~A_mag_larger ;
			end
			else oA_larger  = 0; // make sure no inferred latch
	 end
 endmodule //FpCompare
 
/**************************************************************************

 * Floating Point sign negation                                             *
 * Combinational                                                          *
 *************************************************************************/
 module FpNegate(
		input	 [15:0]	iA,
		input check,
		output reg [15:0]	oNegative
 );
		// Extract fields of A and B.
    wire        A_s;
    wire [4:0]  A_e;
    wire [9:0] A_f;
    assign A_s = iA[15];
    assign A_e = iA[14:10];
    assign A_f = iA[9:0];
	 // Flip bit 26
	 
	 always @(*)
	 begin
	   if (check)
	       oNegative <= {~A_s, A_e, A_f};
	   else 
	       oNegative <= {A_s, A_e, A_f};
	 end
	 
    	
 endmodule //FpNegate

 /**************************************************************************
 * Floating Point absolute                                             *
 * Combinational                                                          *
 *************************************************************************/
 module FpAbs(
		input	 [15:0]	iA,
		output [15:0]	oAbs
 );
		// Extract fields of A and B.
    wire        A_s;
    wire [4:0]  A_e;
    wire [9:0] A_f;
    assign A_s = iA[15];
    assign A_e = iA[14:10];
    assign A_f = iA[9:0];
	 // zero bit 26
    assign oAbs = {1'b0, A_e, A_f};	
 endmodule //Fp absolute
 
 /**************************************************************************

 * Floating Point Multiplier                                              *
 * Combinational                                                          *
 *************************************************************************/
module FpMul (
    input      [15:0] iA,    // First input
    input      [15:0] iB,    // Second input
    output     [15:0] oProd  // Product
);

    // Extract fields of A and B.
    wire        A_s;
    wire [4:0]  A_e;
    wire [9:0] A_f;
    wire        B_s;
    wire [4:0]  B_e;
    wire [9:0] B_f;
    assign A_s = iA[15];
    assign A_e = iA[14:10];
    assign A_f = {1'b1, iA[9:1]};
    assign B_s = iB[15];
    assign B_e = iB[14:10];
    assign B_f = {1'b1, iB[9:1]};

    // XOR sign bits to determine product sign.
    wire        oProd_s;
    assign oProd_s = A_s ^ B_s;

    // Multiply the fractions of A and B
    wire [19:0] pre_prod_frac;
    assign pre_prod_frac = A_f * B_f;

    // Add exponents of A and B
    wire [5:0]  pre_prod_exp;
    assign pre_prod_exp = A_e + B_e;

    // If top bit of product frac is 0, shift left one
    wire [4:0]  oProd_e;
    wire [9:0] oProd_f;
    assign oProd_e = pre_prod_frac[19] ? (pre_prod_exp-6'd14) : (pre_prod_exp - 6'd15);
    assign oProd_f = pre_prod_frac[19] ? pre_prod_frac[18:9] : pre_prod_frac[17:8];

    // Detect underflow
    wire        underflow;
//    assign underflow = pre_prod_exp < 6'h1;
    assign underflow = (A_e < 5'b1111) && (B_e < 5'b1111) && (oProd_e > 6'b1111);

    // Detect zero conditions (either product frac doesn't start with 1, or underflow)
    assign oProd = underflow        ? 16'b0 :
                   (iA == 16'h3c00) ? iB :
                   (iB == 16'h3c00) ? iA :
                   (B_e == 5'b0 && B_f == 10'b1000000000)    ? 16'b0 :
                   (A_e == 5'b0 && A_f == 10'b1000000000)    ? 16'b0 :
//                   (A_e < 5'b10 && B_e < 5'b10) ? 16'b0 :
                   {oProd_s, oProd_e, oProd_f};

endmodule


/**************************************************************************
 * Floating Point Adder                                                   *
 * combinatorial                                                      *
 *************************************************************************/
module FpAdd_c (
    input      [15:0] iA,
    input      [15:0] iB,
    output wire [15:0] result
);
 //   reg [15:0] new_iA,new_iB;
    // Extract fields of A and B.
    
    wire        A_s;
    wire [4:0]  A_e;
    wire [9:0] A_f;
    wire        B_s;
    wire [4:0]  B_e;
    wire [9:0] B_f;
    
    assign A_s = iA[15];
    assign A_e = iA[14:10];
    assign A_f = {1'b1, iA[9:1]};
    assign B_s = iB[15];
    assign B_e = iB[14:10];
    assign B_f = {1'b1, iB[9:1]};
    wire A_larger;

    // Shift fractions of A and B so that they align.
    wire [4:0]  exp_diff_A;
    wire [4:0]  exp_diff_B;
    wire [4:0]  larger_exp;
    wire [20:0] A_f_shifted;
    wire [20:0] B_f_shifted;

    assign exp_diff_A = B_e - A_e; // if B bigger
    assign exp_diff_B = A_e - B_e; // if A bigger

    assign larger_exp = (B_e > A_e) ? B_e : A_e;

    assign A_f_shifted = A_larger             ? {1'b0,  A_f, 10'b0} :
                         (exp_diff_A > 6'd11) ? 20'b0 :
                         ({1'b0, A_f, 10'b0} >> exp_diff_A);
    assign B_f_shifted = ~A_larger            ? {1'b0,  B_f, 10'b0} :
                         (exp_diff_B > 6'd11) ? 20'b0 :
                         ({1'b0, B_f, 10'b0} >> exp_diff_B);

    // Determine which of A, B is larger
    assign A_larger =    (A_e > B_e)                   ? 1'b1  :
                         ((A_e == B_e) && (A_f > B_f)) ? 1'b1  :
                         1'b0;

    // Calculate sum or difference of shifted fractions.
    wire [20:0] pre_sum;
//    assign pre_sum = ((A_s^B_s) &  A_larger) ? A_f_shifted - B_f_shifted : // old
//                     ((A_s^B_s) & ~A_larger) ? B_f_shifted - A_f_shifted :
//                     A_f_shifted + B_f_shifted;


    wire do_sub = A_s^B_s; // new
    wire [20:0] sum_val = A_f_shifted + B_f_shifted;
    wire [20:0] diff_val = A_larger ? A_f_shifted - B_f_shifted :
                                  B_f_shifted - A_f_shifted;
    assign pre_sum = do_sub ? diff_val : sum_val;                              

    // buffer midway results
    reg  [20:0] buf_pre_sum;
    reg  [4:0]  buf_larger_exp;
    reg         buf_A_e_zero;
    reg         buf_B_e_zero;
    reg  [15:0] buf_A;
    reg  [15:0] buf_B;
    reg         buf_oSum_s;
	 
    // Convert to positive fraction and a sign bit.
    wire [20:0] pre_frac;
    //assign pre_frac = buf_pre_sum;
	 // comb
	 assign pre_frac = pre_sum;

    // Determine output fraction and exponent change with position of first 1.
    wire [9:0] oSum_f;
    wire [4:0]  shft_amt;
    assign shft_amt = pre_frac[20] ? 8'd0 : pre_frac[19] ? 8'd1 :
                      pre_frac[18] ? 8'd2 : pre_frac[17] ? 8'd3 :
                      pre_frac[16] ? 8'd4 : pre_frac[15] ? 8'd5 :
                      pre_frac[14] ? 8'd6 : pre_frac[13] ? 8'd7 :
                      pre_frac[12] ? 8'd8 : pre_frac[11] ? 8'd9 :
                      pre_frac[10] ? 8'd10 : pre_frac[9]  ? 8'd11 :
                      pre_frac[8]  ? 8'd12 : pre_frac[7]  ? 8'd13 :
                      pre_frac[6]  ? 8'd14 : pre_frac[5]  ? 8'd15 :
                      pre_frac[4]  ? 8'd16 : pre_frac[3]  ? 8'd17 :
                      pre_frac[2]  ? 8'd18 : pre_frac[1]  ? 8'd19 :
                      pre_frac[0]  ? 8'd20 : 8'd21;

    wire [29:0] pre_frac_shft, uflow_shift;
	 // the shift +1 is because high order bit is not stored, but implied
//    assign pre_frac_shft = {pre_frac, 9'b0} << (shft_amt+1); //? shft_amt+1 // old
//	 assign uflow_shift = {pre_frac, 9'b0} << (shft_amt); //? shft_amt for overflow

    wire [29:0] frac_extended = {pre_frac, 9'b0}; // new
    wire [29:0] shifted_once  = frac_extended << shft_amt;
    assign pre_frac_shft = shifted_once << 1;
    assign uflow_shift   = shifted_once;



    assign oSum_f = pre_frac_shft[29:20];

    wire [4:0] oSum_e;
    //assign oSum_e = buf_larger_exp - shft_amt + 8'b1;
	 // comb
	 assign oSum_e = larger_exp - shft_amt + 5'b1;

    // Detect underflow
    wire underflow;
	 // this incorrectly sets uflow for 10-10.1
    //assign underflow = ~oSum_e[7] && buf_larger_exp[7] && (shft_amt != 8'b0);
	 
	 // if top bit of matissa is not set, then denorm
	 assign underflow = ~uflow_shift[29]; 
	 
	 
	 wire [15:0] oSum;
	 assign oSum = underflow                        ? 16'b0 :
//	               ((A_e == 5'b0) && (B_e == 5'b0))  ? 16'b0 :
                   (B_e == 5'b0 && B_f == 10'b1000000000)    ? iA :
                   (A_e == 5'b0 && A_f == 10'b1000000000)    ? iB :               
                   (pre_frac == 0)                  ? 16'b0 :
                   {(A_larger ? A_s : B_s), oSum_e, oSum_f};
	 
	 wire qq1, qq2;
	 FpCompare zz1 (oSum,16'h7000,qq1);
	 FpCompare zz2 (oSum,16'hf000,qq2);
	 assign result = (qq1 == 1 || qq2 == 0) ? 16'b0:
	               oSum;
	 
endmodule

/// end /////////////////////////////////////////////////////////////////////
/// division by power of 2
////////////////////////////////////////////////////////////////////////////
/*module FpHalf ( this does not work
    input wire [15:0] A,
    input wire [3:0] n,
    output wire [15:0] B
);

    wire [14:0] shifted_number;
    assign shifted_number = A[14:0] >> n;
    assign B = {A[15], shifted_number};

endmodule */ 