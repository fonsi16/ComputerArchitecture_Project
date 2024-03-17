////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Placa_Mae_synthesis.v
// /___/   /\     Timestamp: Mon Mar 11 16:58:05 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Placa_Mae.ngc Placa_Mae_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: Placa_Mae.ngc
// Output file	: D:\Users\afons\Desktop\TP1 Backup\netgen\synthesis\Placa_Mae_synthesis.v
// # of Modules	: 1
// Design Name	: Placa_Mae
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Placa_Mae (
  reset, clk, PIN, POUT
);
  input reset;
  input clk;
  input [7 : 0] PIN;
  output [7 : 0] POUT;
  wire PIN_7_IBUF_0;
  wire PIN_6_IBUF_1;
  wire PIN_5_IBUF_2;
  wire PIN_4_IBUF_3;
  wire PIN_3_IBUF_4;
  wire PIN_2_IBUF_5;
  wire PIN_1_IBUF_6;
  wire PIN_0_IBUF_7;
  wire reset_IBUF_8;
  wire clk_BUFGP_9;
  wire wr;
  wire \r_a_m/Dados_M_7_32 ;
  wire \r_a_m/Dados_M_6_33 ;
  wire \r_a_m/Dados_M_5_34 ;
  wire \r_a_m/Dados_M_4_35 ;
  wire \r_a_m/Dados_M_3_36 ;
  wire \r_a_m/Dados_M_2_37 ;
  wire \r_a_m/Dados_M_1_38 ;
  wire \r_a_m/Dados_M_0_39 ;
  wire N0;
  wire N1;
  wire \memInst/Mram__n0240 ;
  wire \memInst/Mram__n02401 ;
  wire \memInst/Mram__n02402 ;
  wire \memInst/Mram__n02403 ;
  wire \memInst/Mram__n02404 ;
  wire \memInst/Mram__n02405 ;
  wire \memInst/Mram__n02406 ;
  wire \memInst/Mram__n02407 ;
  wire \memInst/Mram__n02408 ;
  wire \memInst/Mram__n02409 ;
  wire \memInst/Mram__n024010 ;
  wire \proc/Banco_Reg/_n0011 ;
  wire \proc/r_o_m/Mram__n00452 ;
  wire \proc/r_o_m/Mram__n00451 ;
  wire \proc/r_o_m/Mram__n0045 ;
  wire \proc/pro_count/Mcount_contador_eqn_4 ;
  wire \proc/pro_count/Mcount_contador_eqn_3 ;
  wire \proc/pro_count/Mcount_contador_eqn_2 ;
  wire \proc/pro_count/Mcount_contador_eqn_1 ;
  wire \proc/pro_count/Mcount_contador_eqn_0 ;
  wire \proc/ual/Resultado_0_99 ;
  wire \proc/ual/Resultado_1_100 ;
  wire \proc/ual/Resultado_2_101 ;
  wire \proc/ual/Resultado_3_102 ;
  wire \proc/ual/Resultado_4_103 ;
  wire \proc/ual/Resultado_5_104 ;
  wire \proc/ual/Resultado_6_105 ;
  wire \proc/ual/Resultado_7_106 ;
  wire \proc/ual/E_FLAG_0_107 ;
  wire \proc/ual/E_FLAG_1_108 ;
  wire \proc/ual/E_FLAG_2_109 ;
  wire \proc/ual/E_FLAG_3_110 ;
  wire \proc/ual/E_FLAG_4_111 ;
  wire \proc/escr_p ;
  wire \proc/Per_Entrada/Temp_Dados_IN_0_131 ;
  wire \proc/Per_Entrada/Temp_Dados_IN_1_132 ;
  wire \proc/Per_Entrada/Temp_Dados_IN_2_133 ;
  wire \proc/Per_Entrada/Temp_Dados_IN_3_134 ;
  wire \proc/Per_Entrada/Temp_Dados_IN_4_135 ;
  wire \proc/Per_Entrada/Temp_Dados_IN_5_136 ;
  wire \proc/Per_Entrada/Temp_Dados_IN_6_137 ;
  wire \proc/Per_Entrada/Temp_Dados_IN_7_138 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o111 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_3_140 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_4_141 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_3_142 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_4_143 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_3_144 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_4_145 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_3_146 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_4_147 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_3_148 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_4_149 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_3_150 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_4_151 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_3_152 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_4_153 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_3_154 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_4_155 ;
  wire \proc/ual/Operando1[7]_Operando2[7]_LessThan_14_o1_156 ;
  wire \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 ;
  wire \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o1 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<6>_159 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<5>_160 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<4>_161 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<3>_162 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<2>_163 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<1>_164 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<0>_165 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<7>_166 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<6>_167 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<6>_168 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<5>_169 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<5>_170 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<4>_171 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<4>_172 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<3>_173 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<3>_174 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<2>_175 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<2>_176 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<1>_177 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<1>_178 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<0>_179 ;
  wire \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<0>_180 ;
  wire \proc/ual/SEL_ALU[3]_PWR_21_o_Mux_36_o ;
  wire \proc/ual/E_FLAG[4]_GND_19_o_MUX_53_o ;
  wire \proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ;
  wire \proc/ual/E_FLAG[4]_GND_19_o_MUX_50_o ;
  wire \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_33_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_31_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_29_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_27_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_25_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_23_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_21_o ;
  wire \proc/ual/SEL_ALU[3]_X_19_o_Mux_19_o ;
  wire \proc/ual/E_FLAG[4]_PWR_11_o_MUX_59_o ;
  wire \proc/ual/E_FLAG[4]_GND_19_o_MUX_56_o ;
  wire \proc/ual/Operando1[7]_Operando2[7]_equal_13_o ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<0> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<1> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<2> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<3> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<4> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<5> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<6> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<7> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<0> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<1> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<2> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<3> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<4> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<5> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<6> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<7> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<0> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<1> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<2> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<3> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<4> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<5> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<6> ;
  wire \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<7> ;
  wire \proc/pro_count/ESCR_PC_INV_29_o1_229 ;
  wire \proc/pro_count/ESCR_PC_INV_29_o2_230 ;
  wire \proc/pro_count/ESCR_PC_INV_29_o4_231 ;
  wire \proc/pro_count/ESCR_PC_INV_29_o5_232 ;
  wire \proc/pro_count/ESCR_PC_INV_29_o6_233 ;
  wire \proc/MuxR/Mmux_aux1 ;
  wire \proc/MuxR/Mmux_aux11_235 ;
  wire \proc/MuxR/Mmux_aux2 ;
  wire \proc/MuxR/Mmux_aux3 ;
  wire \proc/MuxR/Mmux_aux4 ;
  wire \proc/MuxR/Mmux_aux5 ;
  wire \proc/MuxR/Mmux_aux6 ;
  wire \proc/MuxR/Mmux_aux7 ;
  wire \proc/MuxR/Mmux_aux8 ;
  wire N2;
  wire \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o11_244 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o1 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o11_246 ;
  wire \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o12_247 ;
  wire N4;
  wire \proc/pro_count/Mcount_contador_cy<3>_rt_267 ;
  wire \proc/pro_count/Mcount_contador_cy<2>_rt_268 ;
  wire \proc/pro_count/Mcount_contador_cy<1>_rt_269 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<6>1_270 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<5>1_271 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<4>1_272 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<3>1_273 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<2>1_274 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<1>1_275 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<0>1_276 ;
  wire \proc/pro_count/Mcount_contador_xor<4>_rt_277 ;
  wire \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<7>1_278 ;
  wire N11;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N21;
  wire N22;
  wire N23;
  wire N24;
  wire N29;
  wire \proc/pro_count/contador_4_1_289 ;
  wire \proc/pro_count/contador_0_1_290 ;
  wire \proc/pro_count/contador_1_1_291 ;
  wire \memInst/Mram__n024061_292 ;
  wire \memInst/Mram__n024071_293 ;
  wire \memInst/Mram__n024051_294 ;
  wire \proc/pro_count/contador_0_2_295 ;
  wire \proc/pro_count/contador_4_2_296 ;
  wire \proc/pro_count/contador_1_2_297 ;
  wire \proc/pro_count/contador_2_1_298 ;
  wire N31;
  wire N32;
  wire N33;
  wire N34;
  wire [7 : 0] operando1;
  wire [4 : 0] \proc/pro_count/contador ;
  wire [7 : 0] \proc/Per_Saida/Pout ;
  wire [5 : 0] constante;
  wire [3 : 0] \proc/pro_count/Mcount_contador_cy ;
  wire [0 : 0] \proc/pro_count/Mcount_contador_lut ;
  wire [4 : 0] \proc/Result ;
  wire [4 : 0] \proc/Reg_Flags/aux ;
  wire [7 : 0] \proc/Banco_Reg/_n0013 ;
  wire [7 : 0] \proc/Banco_Reg/_n0014 ;
  wire [1 : 0] \proc/escr_r ;
  wire [7 : 0] \proc/operando2 ;
  wire [7 : 0] \proc/dados_r ;
  wire [7 : 0] \r_a_m/_n0016 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  XORCY   \proc/pro_count/Mcount_contador_xor<4>  (
    .CI(\proc/pro_count/Mcount_contador_cy [3]),
    .LI(\proc/pro_count/Mcount_contador_xor<4>_rt_277 ),
    .O(\proc/Result [4])
  );
  XORCY   \proc/pro_count/Mcount_contador_xor<3>  (
    .CI(\proc/pro_count/Mcount_contador_cy [2]),
    .LI(\proc/pro_count/Mcount_contador_cy<3>_rt_267 ),
    .O(\proc/Result [3])
  );
  MUXCY   \proc/pro_count/Mcount_contador_cy<3>  (
    .CI(\proc/pro_count/Mcount_contador_cy [2]),
    .DI(N0),
    .S(\proc/pro_count/Mcount_contador_cy<3>_rt_267 ),
    .O(\proc/pro_count/Mcount_contador_cy [3])
  );
  XORCY   \proc/pro_count/Mcount_contador_xor<2>  (
    .CI(\proc/pro_count/Mcount_contador_cy [1]),
    .LI(\proc/pro_count/Mcount_contador_cy<2>_rt_268 ),
    .O(\proc/Result [2])
  );
  MUXCY   \proc/pro_count/Mcount_contador_cy<2>  (
    .CI(\proc/pro_count/Mcount_contador_cy [1]),
    .DI(N0),
    .S(\proc/pro_count/Mcount_contador_cy<2>_rt_268 ),
    .O(\proc/pro_count/Mcount_contador_cy [2])
  );
  XORCY   \proc/pro_count/Mcount_contador_xor<1>  (
    .CI(\proc/pro_count/Mcount_contador_cy [0]),
    .LI(\proc/pro_count/Mcount_contador_cy<1>_rt_269 ),
    .O(\proc/Result [1])
  );
  MUXCY   \proc/pro_count/Mcount_contador_cy<1>  (
    .CI(\proc/pro_count/Mcount_contador_cy [0]),
    .DI(N0),
    .S(\proc/pro_count/Mcount_contador_cy<1>_rt_269 ),
    .O(\proc/pro_count/Mcount_contador_cy [1])
  );
  XORCY   \proc/pro_count/Mcount_contador_xor<0>  (
    .CI(N0),
    .LI(\proc/pro_count/Mcount_contador_lut [0]),
    .O(\proc/Result [0])
  );
  MUXCY   \proc/pro_count/Mcount_contador_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\proc/pro_count/Mcount_contador_lut [0]),
    .O(\proc/pro_count/Mcount_contador_cy [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_4  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_4 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_3  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_3 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_2  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_2 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_1  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_1 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_0  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_0 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria1  (
    .A0(\memInst/Mram__n02405 ),
    .A1(\memInst/Mram__n02406 ),
    .A2(\memInst/Mram__n02407 ),
    .A3(N0),
    .D(\proc/dados_r [0]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [0]),
    .DPO(\proc/Banco_Reg/_n0014 [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria8  (
    .A0(\memInst/Mram__n02405 ),
    .A1(\memInst/Mram__n024061_292 ),
    .A2(\memInst/Mram__n024071_293 ),
    .A3(N0),
    .D(\proc/dados_r [7]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [7]),
    .DPO(\proc/Banco_Reg/_n0014 [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria7  (
    .A0(\memInst/Mram__n024051_294 ),
    .A1(\memInst/Mram__n024061_292 ),
    .A2(\memInst/Mram__n024071_293 ),
    .A3(N0),
    .D(\proc/dados_r [6]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [6]),
    .DPO(\proc/Banco_Reg/_n0014 [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria6  (
    .A0(\memInst/Mram__n024051_294 ),
    .A1(\memInst/Mram__n024061_292 ),
    .A2(\memInst/Mram__n024071_293 ),
    .A3(N0),
    .D(\proc/dados_r [5]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [5]),
    .DPO(\proc/Banco_Reg/_n0014 [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria5  (
    .A0(\memInst/Mram__n02405 ),
    .A1(\memInst/Mram__n02406 ),
    .A2(\memInst/Mram__n02407 ),
    .A3(N0),
    .D(\proc/dados_r [4]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [4]),
    .DPO(\proc/Banco_Reg/_n0014 [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria4  (
    .A0(\memInst/Mram__n02405 ),
    .A1(\memInst/Mram__n02406 ),
    .A2(\memInst/Mram__n02407 ),
    .A3(N0),
    .D(\proc/dados_r [3]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [3]),
    .DPO(\proc/Banco_Reg/_n0014 [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria3  (
    .A0(\memInst/Mram__n024051_294 ),
    .A1(\memInst/Mram__n024061_292 ),
    .A2(\memInst/Mram__n024071_293 ),
    .A3(N0),
    .D(\proc/dados_r [2]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [2]),
    .DPO(\proc/Banco_Reg/_n0014 [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \proc/Banco_Reg/Mram_Memoria2  (
    .A0(\memInst/Mram__n02405 ),
    .A1(\memInst/Mram__n02406 ),
    .A2(\memInst/Mram__n02407 ),
    .A3(N0),
    .D(\proc/dados_r [1]),
    .DPRA0(\memInst/Mram__n02408 ),
    .DPRA1(\memInst/Mram__n02409 ),
    .DPRA2(\memInst/Mram__n024010 ),
    .DPRA3(N0),
    .WCLK(clk_BUFGP_9),
    .WE(\proc/escr_r [0]),
    .SPO(\proc/Banco_Reg/_n0013 [1]),
    .DPO(\proc/Banco_Reg/_n0014 [1])
  );
  FDE   \proc/Reg_Flags/aux_0  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_r [1]),
    .D(\proc/ual/E_FLAG_0_107 ),
    .Q(\proc/Reg_Flags/aux [0])
  );
  FDE   \proc/Reg_Flags/aux_1  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_r [1]),
    .D(\proc/ual/E_FLAG_1_108 ),
    .Q(\proc/Reg_Flags/aux [1])
  );
  FDE   \proc/Reg_Flags/aux_2  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_r [1]),
    .D(\proc/ual/E_FLAG_2_109 ),
    .Q(\proc/Reg_Flags/aux [2])
  );
  FDE   \proc/Reg_Flags/aux_3  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_r [1]),
    .D(\proc/ual/E_FLAG_3_110 ),
    .Q(\proc/Reg_Flags/aux [3])
  );
  FDE   \proc/Reg_Flags/aux_4  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_r [1]),
    .D(\proc/ual/E_FLAG_4_111 ),
    .Q(\proc/Reg_Flags/aux [4])
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_7  (
    .D(PIN_7_IBUF_0),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_7_138 )
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_0  (
    .D(PIN_0_IBUF_7),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_0_131 )
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_1  (
    .D(PIN_1_IBUF_6),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_1_132 )
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_2  (
    .D(PIN_2_IBUF_5),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_2_133 )
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_3  (
    .D(PIN_3_IBUF_4),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_3_134 )
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_4  (
    .D(PIN_4_IBUF_3),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_4_135 )
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_5  (
    .D(PIN_5_IBUF_2),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_5_136 )
  );
  LD_1   \proc/Per_Entrada/Temp_Dados_IN_6  (
    .D(PIN_6_IBUF_1),
    .G(\proc/escr_p ),
    .Q(\proc/Per_Entrada/Temp_Dados_IN_6_137 )
  );
  FDE   \proc/Per_Saida/Pout_7  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[7]),
    .Q(\proc/Per_Saida/Pout [7])
  );
  FDE   \proc/Per_Saida/Pout_6  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[6]),
    .Q(\proc/Per_Saida/Pout [6])
  );
  FDE   \proc/Per_Saida/Pout_5  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[5]),
    .Q(\proc/Per_Saida/Pout [5])
  );
  FDE   \proc/Per_Saida/Pout_4  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[4]),
    .Q(\proc/Per_Saida/Pout [4])
  );
  FDE   \proc/Per_Saida/Pout_3  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[3]),
    .Q(\proc/Per_Saida/Pout [3])
  );
  FDE   \proc/Per_Saida/Pout_2  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[2]),
    .Q(\proc/Per_Saida/Pout [2])
  );
  FDE   \proc/Per_Saida/Pout_1  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[1]),
    .Q(\proc/Per_Saida/Pout [1])
  );
  FDE   \proc/Per_Saida/Pout_0  (
    .C(clk_BUFGP_9),
    .CE(\proc/escr_p ),
    .D(operando1[0]),
    .Q(\proc/Per_Saida/Pout [0])
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_4_141 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_3_140 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_33_o )
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_4_143 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_3_142 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_29_o )
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_4_145 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_3_144 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_27_o )
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_4_147 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_3_146 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_31_o )
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_4_149 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_3_148 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_25_o )
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_4_151 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_3_150 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_23_o )
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_4_153 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_3_152 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_19_o )
  );
  MUXF7   \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_2_f7  (
    .I0(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_4_155 ),
    .I1(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_3_154 ),
    .S(\proc/r_o_m/Mram__n00452 ),
    .O(\proc/ual/SEL_ALU[3]_X_19_o_Mux_21_o )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<7>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<6>_159 ),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<7>1_278 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<7> )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<6>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<5>_160 ),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<6>1_270 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<6> )
  );
  MUXCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<6>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<5>_160 ),
    .DI(operando1[6]),
    .S(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<6>1_270 ),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<6>_159 )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<5>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<4>_161 ),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<5>1_271 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<5> )
  );
  MUXCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<5>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<4>_161 ),
    .DI(operando1[5]),
    .S(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<5>1_271 ),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<5>_160 )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<4>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<3>_162 ),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<4>1_272 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<4> )
  );
  MUXCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<4>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<3>_162 ),
    .DI(operando1[4]),
    .S(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<4>1_272 ),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<4>_161 )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<3>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<2>_163 ),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<3>1_273 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<3> )
  );
  MUXCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<3>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<2>_163 ),
    .DI(operando1[3]),
    .S(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<3>1_273 ),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<3>_162 )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<2>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<1>_164 ),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<2>1_274 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<2> )
  );
  MUXCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<2>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<1>_164 ),
    .DI(operando1[2]),
    .S(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<2>1_274 ),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<2>_163 )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<1>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<0>_165 ),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<1>1_275 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<1> )
  );
  MUXCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<1>  (
    .CI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<0>_165 ),
    .DI(operando1[1]),
    .S(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<1>1_275 ),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<1>_164 )
  );
  XORCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_xor<0>  (
    .CI(N1),
    .LI(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<0>1_276 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<0> )
  );
  MUXCY   \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<0>  (
    .CI(N1),
    .DI(operando1[0]),
    .S(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<0>1_276 ),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_cy<0>_165 )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<7>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<6>_167 ),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<7>_166 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<7> )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<6>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<5>_169 ),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<6>_168 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<6> )
  );
  MUXCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<6>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<5>_169 ),
    .DI(operando1[6]),
    .S(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<6>_168 ),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<6>_167 )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<5>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<4>_171 ),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<5>_170 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<5> )
  );
  MUXCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<5>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<4>_171 ),
    .DI(operando1[5]),
    .S(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<5>_170 ),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<5>_169 )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<4>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<3>_173 ),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<4>_172 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<4> )
  );
  MUXCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<4>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<3>_173 ),
    .DI(operando1[4]),
    .S(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<4>_172 ),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<4>_171 )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<3>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<2>_175 ),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<3>_174 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<3> )
  );
  MUXCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<3>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<2>_175 ),
    .DI(operando1[3]),
    .S(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<3>_174 ),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<3>_173 )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<2>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<1>_177 ),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<2>_176 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<2> )
  );
  MUXCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<2>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<1>_177 ),
    .DI(operando1[2]),
    .S(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<2>_176 ),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<2>_175 )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<1>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<0>_179 ),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<1>_178 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<1> )
  );
  MUXCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<1>  (
    .CI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<0>_179 ),
    .DI(operando1[1]),
    .S(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<1>_178 ),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<1>_177 )
  );
  XORCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_xor<0>  (
    .CI(N0),
    .LI(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<0>_180 ),
    .O(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<0> )
  );
  MUXCY   \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<0>  (
    .CI(N0),
    .DI(operando1[0]),
    .S(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<0>_180 ),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_cy<0>_179 )
  );
  LD   \proc/ual/E_FLAG_3  (
    .D(\proc/ual/E_FLAG[4]_GND_19_o_MUX_53_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_21_o_Mux_36_o ),
    .Q(\proc/ual/E_FLAG_3_110 )
  );
  LD   \proc/ual/E_FLAG_4  (
    .D(\proc/ual/E_FLAG[4]_GND_19_o_MUX_50_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_21_o_Mux_36_o ),
    .Q(\proc/ual/E_FLAG_4_111 )
  );
  LD   \proc/ual/E_FLAG_0  (
    .D(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_21_o_Mux_36_o ),
    .Q(\proc/ual/E_FLAG_0_107 )
  );
  LD   \proc/ual/Resultado_0  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_33_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_0_99 )
  );
  LD   \proc/ual/Resultado_1  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_31_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_1_100 )
  );
  LD   \proc/ual/Resultado_2  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_29_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_2_101 )
  );
  LD   \proc/ual/Resultado_3  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_27_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_3_102 )
  );
  LD   \proc/ual/Resultado_4  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_25_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_4_103 )
  );
  LD   \proc/ual/Resultado_5  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_23_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_5_104 )
  );
  LD   \proc/ual/Resultado_6  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_21_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_6_105 )
  );
  LD   \proc/ual/Resultado_7  (
    .D(\proc/ual/SEL_ALU[3]_X_19_o_Mux_19_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o ),
    .Q(\proc/ual/Resultado_7_106 )
  );
  LD   \proc/ual/E_FLAG_1  (
    .D(\proc/ual/E_FLAG[4]_PWR_11_o_MUX_59_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_21_o_Mux_36_o ),
    .Q(\proc/ual/E_FLAG_1_108 )
  );
  LD   \proc/ual/E_FLAG_2  (
    .D(\proc/ual/E_FLAG[4]_GND_19_o_MUX_56_o ),
    .G(\proc/ual/SEL_ALU[3]_PWR_21_o_Mux_36_o ),
    .Q(\proc/ual/E_FLAG_2_109 )
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM8  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[7]),
    .WE(wr),
    .O(\r_a_m/_n0016 [7]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM7  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[6]),
    .WE(wr),
    .O(\r_a_m/_n0016 [6]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM6  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[5]),
    .WE(wr),
    .O(\r_a_m/_n0016 [5]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM5  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[4]),
    .WE(wr),
    .O(\r_a_m/_n0016 [4]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM4  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[3]),
    .WE(wr),
    .O(\r_a_m/_n0016 [3]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM3  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[2]),
    .WE(wr),
    .O(\r_a_m/_n0016 [2]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM2  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[1]),
    .WE(wr),
    .O(\r_a_m/_n0016 [1]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  RAM256X1S #(
    .INIT ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \r_a_m/Mram_RAM1  (
    .WCLK(clk_BUFGP_9),
    .D(operando1[0]),
    .WE(wr),
    .O(\r_a_m/_n0016 [0]),
    .A({constante[5], constante[5], constante[5], constante[4], constante[3], constante[2], constante[1], constante[0]})
  );
  LD_1   \r_a_m/Dados_M_7  (
    .D(\r_a_m/_n0016 [7]),
    .G(wr),
    .Q(\r_a_m/Dados_M_7_32 )
  );
  LD_1   \r_a_m/Dados_M_0  (
    .D(\r_a_m/_n0016 [0]),
    .G(wr),
    .Q(\r_a_m/Dados_M_0_39 )
  );
  LD_1   \r_a_m/Dados_M_1  (
    .D(\r_a_m/_n0016 [1]),
    .G(wr),
    .Q(\r_a_m/Dados_M_1_38 )
  );
  LD_1   \r_a_m/Dados_M_2  (
    .D(\r_a_m/_n0016 [2]),
    .G(wr),
    .Q(\r_a_m/Dados_M_2_37 )
  );
  LD_1   \r_a_m/Dados_M_3  (
    .D(\r_a_m/_n0016 [3]),
    .G(wr),
    .Q(\r_a_m/Dados_M_3_36 )
  );
  LD_1   \r_a_m/Dados_M_4  (
    .D(\r_a_m/_n0016 [4]),
    .G(wr),
    .Q(\r_a_m/Dados_M_4_35 )
  );
  LD_1   \r_a_m/Dados_M_6  (
    .D(\r_a_m/_n0016 [6]),
    .G(wr),
    .Q(\r_a_m/Dados_M_6_33 )
  );
  LD_1   \r_a_m/Dados_M_5  (
    .D(\r_a_m/_n0016 [5]),
    .G(wr),
    .Q(\r_a_m/Dados_M_5_34 )
  );
  LUT5 #(
    .INIT ( 32'hC0C2A062 ))
  \memInst/Mram__n024041  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [1]),
    .I2(\proc/pro_count/contador [4]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n02404 )
  );
  LUT5 #(
    .INIT ( 32'h03110000 ))
  \memInst/Mram__n024031  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n02403 )
  );
  LUT5 #(
    .INIT ( 32'h2321441E ))
  \memInst/Mram__n024021  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n02402 )
  );
  LUT5 #(
    .INIT ( 32'hEDF8EF60 ))
  \memInst/Mram__n024016  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [1]),
    .I2(\proc/pro_count/contador [4]),
    .I3(\proc/pro_count/contador [3]),
    .I4(\proc/pro_count/contador [2]),
    .O(\memInst/Mram__n0240 )
  );
  LUT5 #(
    .INIT ( 32'h16330450 ))
  \memInst/Mram__n0240131  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [3]),
    .I4(\proc/pro_count/contador [2]),
    .O(constante[2])
  );
  LUT5 #(
    .INIT ( 32'h63234F22 ))
  \memInst/Mram__n024051  (
    .I0(\proc/pro_count/contador_4_1_289 ),
    .I1(\proc/pro_count/contador_1_1_291 ),
    .I2(\proc/pro_count/contador_0_2_295 ),
    .I3(\proc/pro_count/contador_2_1_298 ),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n02405 )
  );
  LUT5 #(
    .INIT ( 32'h3D763D0C ))
  \memInst/Mram__n024061  (
    .I0(\proc/pro_count/contador_0_1_290 ),
    .I1(\proc/pro_count/contador_4_1_289 ),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [3]),
    .I4(\proc/pro_count/contador [2]),
    .O(\memInst/Mram__n02406 )
  );
  LUT5 #(
    .INIT ( 32'hEF6576B0 ))
  \memInst/Mram__n0240112  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [3]),
    .I2(\proc/pro_count/contador [2]),
    .I3(\proc/pro_count/contador [1]),
    .I4(\proc/pro_count/contador [4]),
    .O(\memInst/Mram__n02401 )
  );
  LUT5 #(
    .INIT ( 32'hD2D2A3A2 ))
  \memInst/Mram__n0240151  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [1]),
    .I2(\proc/pro_count/contador [4]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [3]),
    .O(constante[4])
  );
  LUT5 #(
    .INIT ( 32'h1406A9F8 ))
  \memInst/Mram__n02401111  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [3]),
    .O(constante[0])
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \memInst/Mram__n024081  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [2]),
    .I2(\proc/pro_count/contador [4]),
    .I3(\proc/pro_count/contador [1]),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n02408 )
  );
  LUT5 #(
    .INIT ( 32'h20020002 ))
  \memInst/Mram__n024091  (
    .I0(\proc/pro_count/contador [3]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [0]),
    .I3(\proc/pro_count/contador [1]),
    .I4(\proc/pro_count/contador [2]),
    .O(\memInst/Mram__n02409 )
  );
  LUT5 #(
    .INIT ( 32'h00028000 ))
  \memInst/Mram__n0240101  (
    .I0(\proc/pro_count/contador [2]),
    .I1(\proc/pro_count/contador [0]),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [3]),
    .I4(\proc/pro_count/contador [4]),
    .O(\memInst/Mram__n024010 )
  );
  LUT5 #(
    .INIT ( 32'hD0A1D062 ))
  \memInst/Mram__n0240141  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [1]),
    .I2(\proc/pro_count/contador [4]),
    .I3(\proc/pro_count/contador [3]),
    .I4(\proc/pro_count/contador [2]),
    .O(constante[3])
  );
  LUT5 #(
    .INIT ( 32'hC1C46160 ))
  \memInst/Mram__n0240121  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [3]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [1]),
    .O(constante[1])
  );
  LUT5 #(
    .INIT ( 32'h5B513880 ))
  \memInst/Mram__n024071  (
    .I0(\proc/pro_count/contador_1_1_291 ),
    .I1(\proc/pro_count/contador_0_1_290 ),
    .I2(\proc/pro_count/contador [4]),
    .I3(\proc/pro_count/contador_2_1_298 ),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n02407 )
  );
  LUT5 #(
    .INIT ( 32'h10011800 ))
  \constante<5>1  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [1]),
    .I2(\proc/pro_count/contador [3]),
    .I3(\proc/pro_count/contador [4]),
    .I4(\proc/pro_count/contador [2]),
    .O(constante[5])
  );
  LUT5 #(
    .INIT ( 32'h01101010 ))
  \proc/r_o_m/Mram__n004512  (
    .I0(\memInst/Mram__n0240 ),
    .I1(\memInst/Mram__n02404 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02401 ),
    .I4(\memInst/Mram__n02402 ),
    .O(\proc/r_o_m/Mram__n0045 )
  );
  LUT5 #(
    .INIT ( 32'h00000010 ))
  \proc/r_o_m/Mram__n004541  (
    .I0(\memInst/Mram__n02401 ),
    .I1(\memInst/Mram__n02403 ),
    .I2(\memInst/Mram__n0240 ),
    .I3(\memInst/Mram__n02402 ),
    .I4(\memInst/Mram__n02404 ),
    .O(\proc/escr_p )
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \proc/WR1  (
    .I0(\memInst/Mram__n02402 ),
    .I1(\memInst/Mram__n02403 ),
    .I2(\memInst/Mram__n02404 ),
    .I3(\memInst/Mram__n0240 ),
    .I4(\memInst/Mram__n02401 ),
    .O(wr)
  );
  LUT5 #(
    .INIT ( 32'h02020220 ))
  \proc/r_o_m/Mram__n0045211  (
    .I0(\memInst/Mram__n02403 ),
    .I1(\memInst/Mram__n02404 ),
    .I2(\memInst/Mram__n02402 ),
    .I3(\memInst/Mram__n0240 ),
    .I4(\memInst/Mram__n02401 ),
    .O(\proc/r_o_m/Mram__n00452 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000981  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [7]),
    .I2(\proc/dados_r [7]),
    .O(operando1[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000911  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [0]),
    .I2(\proc/dados_r [0]),
    .O(operando1[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001211  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [0]),
    .I2(\proc/dados_r [0]),
    .O(\proc/operando2 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001221  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [1]),
    .I2(\proc/dados_r [1]),
    .O(\proc/operando2 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000921  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [1]),
    .I2(\proc/dados_r [1]),
    .O(operando1[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000931  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [2]),
    .I2(\proc/dados_r [2]),
    .O(operando1[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001231  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [2]),
    .I2(\proc/dados_r [2]),
    .O(\proc/operando2 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000941  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [3]),
    .I2(\proc/dados_r [3]),
    .O(operando1[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001241  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [3]),
    .I2(\proc/dados_r [3]),
    .O(\proc/operando2 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000951  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [4]),
    .I2(\proc/dados_r [4]),
    .O(operando1[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001251  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [4]),
    .I2(\proc/dados_r [4]),
    .O(\proc/operando2 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000961  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [5]),
    .I2(\proc/dados_r [5]),
    .O(operando1[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001261  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [5]),
    .I2(\proc/dados_r [5]),
    .O(\proc/operando2 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n000971  (
    .I0(\proc/escr_r [0]),
    .I1(\proc/Banco_Reg/_n0013 [6]),
    .I2(\proc/dados_r [6]),
    .O(operando1[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001271  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [6]),
    .I2(\proc/dados_r [6]),
    .O(\proc/operando2 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Banco_Reg/Mmux__n001281  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [7]),
    .I2(\proc/dados_r [7]),
    .O(\proc/operando2 [7])
  );
  LUT5 #(
    .INIT ( 32'h01414000 ))
  \proc/r_o_m/Mram__n0045111  (
    .I0(\memInst/Mram__n02404 ),
    .I1(\memInst/Mram__n0240 ),
    .I2(\memInst/Mram__n02401 ),
    .I3(\memInst/Mram__n02402 ),
    .I4(\memInst/Mram__n02403 ),
    .O(\proc/r_o_m/Mram__n00451 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \proc/escr_r<1>1  (
    .I0(\memInst/Mram__n0240 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02401 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\memInst/Mram__n02403 ),
    .O(\proc/escr_r [1])
  );
  LUT6 #(
    .INIT ( 64'h4D44DD4D4D444D44 ))
  \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o3  (
    .I0(operando1[2]),
    .I1(\proc/operando2 [2]),
    .I2(operando1[1]),
    .I3(\proc/operando2 [1]),
    .I4(operando1[0]),
    .I5(\proc/operando2 [0]),
    .O(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o1 )
  );
  LUT6 #(
    .INIT ( 64'h4D44DD4D4D444D44 ))
  \proc/ual/Operando1[7]_Operando2[7]_LessThan_14_o1  (
    .I0(\proc/operando2 [2]),
    .I1(operando1[2]),
    .I2(\proc/operando2 [1]),
    .I3(operando1[1]),
    .I4(\proc/operando2 [0]),
    .I5(operando1[0]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_LessThan_14_o1_156 )
  );
  LUT5 #(
    .INIT ( 32'hB222BBB2 ))
  \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o21  (
    .I0(operando1[7]),
    .I1(\proc/operando2 [7]),
    .I2(\proc/operando2 [6]),
    .I3(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 ),
    .I4(operando1[6]),
    .O(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o1111  (
    .I0(\proc/r_o_m/Mram__n00452 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/r_o_m/Mram__n00451 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o111 )
  );
  LUT6 #(
    .INIT ( 64'h555500005F770F33 ))
  \proc/pro_count/ESCR_PC_INV_29_o2  (
    .I0(\proc/Reg_Flags/aux [0]),
    .I1(\proc/Reg_Flags/aux [2]),
    .I2(\proc/Reg_Flags/aux [4]),
    .I3(\memInst/Mram__n02401 ),
    .I4(\memInst/Mram__n02403 ),
    .I5(\memInst/Mram__n02402 ),
    .O(\proc/pro_count/ESCR_PC_INV_29_o2_230 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \proc/pro_count/ESCR_PC_INV_29_o4  (
    .I0(\proc/Banco_Reg/_n0013 [2]),
    .I1(\proc/Banco_Reg/_n0013 [1]),
    .I2(\proc/Banco_Reg/_n0013 [0]),
    .I3(\proc/Banco_Reg/_n0013 [4]),
    .I4(\proc/Banco_Reg/_n0013 [3]),
    .O(\proc/pro_count/ESCR_PC_INV_29_o4_231 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AA00F0CC ))
  \proc/MuxR/Mmux_aux11  (
    .I0(\r_a_m/Dados_M_0_39 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_0_131 ),
    .I2(constante[0]),
    .I3(\memInst/Mram__n02401 ),
    .I4(\memInst/Mram__n0240 ),
    .I5(\memInst/Mram__n02404 ),
    .O(\proc/MuxR/Mmux_aux1 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux13  (
    .I0(\proc/ual/Resultado_0_99 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux1 ),
    .O(\proc/dados_r [0])
  );
  LUT6 #(
    .INIT ( 64'h00000000AA00F0CC ))
  \proc/MuxR/Mmux_aux21  (
    .I0(\r_a_m/Dados_M_1_38 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_1_132 ),
    .I2(constante[1]),
    .I3(\memInst/Mram__n02401 ),
    .I4(\memInst/Mram__n0240 ),
    .I5(\memInst/Mram__n02404 ),
    .O(\proc/MuxR/Mmux_aux2 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux23  (
    .I0(\proc/ual/Resultado_1_100 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux2 ),
    .O(\proc/dados_r [1])
  );
  LUT6 #(
    .INIT ( 64'h00000000AA00F0CC ))
  \proc/MuxR/Mmux_aux31  (
    .I0(\r_a_m/Dados_M_2_37 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_2_133 ),
    .I2(constante[2]),
    .I3(\memInst/Mram__n02401 ),
    .I4(\memInst/Mram__n0240 ),
    .I5(\memInst/Mram__n02404 ),
    .O(\proc/MuxR/Mmux_aux3 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux33  (
    .I0(\proc/ual/Resultado_2_101 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux3 ),
    .O(\proc/dados_r [2])
  );
  LUT6 #(
    .INIT ( 64'h00000000AA00F0CC ))
  \proc/MuxR/Mmux_aux41  (
    .I0(\r_a_m/Dados_M_3_36 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_3_134 ),
    .I2(constante[3]),
    .I3(\memInst/Mram__n02401 ),
    .I4(\memInst/Mram__n0240 ),
    .I5(\memInst/Mram__n02404 ),
    .O(\proc/MuxR/Mmux_aux4 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux43  (
    .I0(\proc/ual/Resultado_3_102 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux4 ),
    .O(\proc/dados_r [3])
  );
  LUT6 #(
    .INIT ( 64'h00000000AA00F0CC ))
  \proc/MuxR/Mmux_aux51  (
    .I0(\r_a_m/Dados_M_4_35 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_4_135 ),
    .I2(constante[4]),
    .I3(\memInst/Mram__n02401 ),
    .I4(\memInst/Mram__n0240 ),
    .I5(\memInst/Mram__n02404 ),
    .O(\proc/MuxR/Mmux_aux5 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux53  (
    .I0(\proc/ual/Resultado_4_103 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux5 ),
    .O(\proc/dados_r [4])
  );
  LUT6 #(
    .INIT ( 64'h0000A0FC0000A00C ))
  \proc/MuxR/Mmux_aux61  (
    .I0(\r_a_m/Dados_M_5_34 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_5_136 ),
    .I2(\memInst/Mram__n02401 ),
    .I3(\memInst/Mram__n0240 ),
    .I4(\memInst/Mram__n02404 ),
    .I5(constante[5]),
    .O(\proc/MuxR/Mmux_aux6 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux63  (
    .I0(\proc/ual/Resultado_5_104 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux6 ),
    .O(\proc/dados_r [5])
  );
  LUT6 #(
    .INIT ( 64'h0000A0FC0000A00C ))
  \proc/MuxR/Mmux_aux71  (
    .I0(\r_a_m/Dados_M_6_33 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_6_137 ),
    .I2(\memInst/Mram__n02401 ),
    .I3(\memInst/Mram__n0240 ),
    .I4(\memInst/Mram__n02404 ),
    .I5(constante[5]),
    .O(\proc/MuxR/Mmux_aux7 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux73  (
    .I0(\proc/ual/Resultado_6_105 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux7 ),
    .O(\proc/dados_r [6])
  );
  LUT6 #(
    .INIT ( 64'h0000A0FC0000A00C ))
  \proc/MuxR/Mmux_aux81  (
    .I0(\r_a_m/Dados_M_7_32 ),
    .I1(\proc/Per_Entrada/Temp_Dados_IN_7_138 ),
    .I2(\memInst/Mram__n02401 ),
    .I3(\memInst/Mram__n0240 ),
    .I4(\memInst/Mram__n02404 ),
    .I5(constante[5]),
    .O(\proc/MuxR/Mmux_aux8 )
  );
  LUT6 #(
    .INIT ( 64'hABABABABAAAAAAA8 ))
  \proc/MuxR/Mmux_aux83  (
    .I0(\proc/ual/Resultado_7_106 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02403 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/MuxR/Mmux_aux11_235 ),
    .I5(\proc/MuxR/Mmux_aux8 ),
    .O(\proc/dados_r [7])
  );
  LUT6 #(
    .INIT ( 64'h2002000000002002 ))
  \proc/Banco_Reg/_n0011<0>  (
    .I0(\proc/escr_r [0]),
    .I1(N2),
    .I2(\memInst/Mram__n02406 ),
    .I3(\memInst/Mram__n02409 ),
    .I4(\memInst/Mram__n024010 ),
    .I5(\memInst/Mram__n02407 ),
    .O(\proc/Banco_Reg/_n0011 )
  );
  LUT5 #(
    .INIT ( 32'hB222BBB2 ))
  \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o12  (
    .I0(\proc/operando2 [5]),
    .I1(operando1[5]),
    .I2(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o11_244 ),
    .I3(\proc/operando2 [4]),
    .I4(operando1[4]),
    .O(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 )
  );
  LUT5 #(
    .INIT ( 32'hB222BBB2 ))
  \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o12  (
    .I0(operando1[5]),
    .I1(\proc/operando2 [5]),
    .I2(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o1 ),
    .I3(operando1[4]),
    .I4(\proc/operando2 [4]),
    .O(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o11_246 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF6FF6 ))
  \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o13  (
    .I0(\proc/operando2 [7]),
    .I1(operando1[7]),
    .I2(\proc/operando2 [6]),
    .I3(operando1[6]),
    .I4(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 ),
    .I5(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o11_246 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o12_247 )
  );
  IBUF   PIN_7_IBUF (
    .I(PIN[7]),
    .O(PIN_7_IBUF_0)
  );
  IBUF   PIN_6_IBUF (
    .I(PIN[6]),
    .O(PIN_6_IBUF_1)
  );
  IBUF   PIN_5_IBUF (
    .I(PIN[5]),
    .O(PIN_5_IBUF_2)
  );
  IBUF   PIN_4_IBUF (
    .I(PIN[4]),
    .O(PIN_4_IBUF_3)
  );
  IBUF   PIN_3_IBUF (
    .I(PIN[3]),
    .O(PIN_3_IBUF_4)
  );
  IBUF   PIN_2_IBUF (
    .I(PIN[2]),
    .O(PIN_2_IBUF_5)
  );
  IBUF   PIN_1_IBUF (
    .I(PIN[1]),
    .O(PIN_1_IBUF_6)
  );
  IBUF   PIN_0_IBUF (
    .I(PIN[0]),
    .O(PIN_0_IBUF_7)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_8)
  );
  OBUF   POUT_7_OBUF (
    .I(\proc/Per_Saida/Pout [7]),
    .O(POUT[7])
  );
  OBUF   POUT_6_OBUF (
    .I(\proc/Per_Saida/Pout [6]),
    .O(POUT[6])
  );
  OBUF   POUT_5_OBUF (
    .I(\proc/Per_Saida/Pout [5]),
    .O(POUT[5])
  );
  OBUF   POUT_4_OBUF (
    .I(\proc/Per_Saida/Pout [4]),
    .O(POUT[4])
  );
  OBUF   POUT_3_OBUF (
    .I(\proc/Per_Saida/Pout [3]),
    .O(POUT[3])
  );
  OBUF   POUT_2_OBUF (
    .I(\proc/Per_Saida/Pout [2]),
    .O(POUT[2])
  );
  OBUF   POUT_1_OBUF (
    .I(\proc/Per_Saida/Pout [1]),
    .O(POUT[1])
  );
  OBUF   POUT_0_OBUF (
    .I(\proc/Per_Saida/Pout [0]),
    .O(POUT[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/pro_count/Mcount_contador_cy<3>_rt  (
    .I0(\proc/pro_count/contador [3]),
    .O(\proc/pro_count/Mcount_contador_cy<3>_rt_267 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/pro_count/Mcount_contador_cy<2>_rt  (
    .I0(\proc/pro_count/contador [2]),
    .O(\proc/pro_count/Mcount_contador_cy<2>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/pro_count/Mcount_contador_cy<1>_rt  (
    .I0(\proc/pro_count/contador [1]),
    .O(\proc/pro_count/Mcount_contador_cy<1>_rt_269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/pro_count/Mcount_contador_xor<4>_rt  (
    .I0(\proc/pro_count/contador [4]),
    .O(\proc/pro_count/Mcount_contador_xor<4>_rt_277 )
  );
  LUT5 #(
    .INIT ( 32'h28462E02 ))
  \proc/MuxR/Mmux_aux12  (
    .I0(\proc/pro_count/contador [3]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [0]),
    .I4(\proc/pro_count/contador [2]),
    .O(\proc/MuxR/Mmux_aux11_235 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/pro_count/ESCR_PC_INV_29_o7_SW0  (
    .I0(\proc/pro_count/ESCR_PC_INV_29_o1_229 ),
    .I1(constante[0]),
    .I2(\proc/Result [0]),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'hAAAAE2E2AAB8E2F0 ))
  \proc/pro_count/Mcount_contador_eqn_01  (
    .I0(\proc/Result [0]),
    .I1(\memInst/Mram__n0240 ),
    .I2(N11),
    .I3(\proc/pro_count/ESCR_PC_INV_29_o2_230 ),
    .I4(\proc/pro_count/ESCR_PC_INV_29_o6_233 ),
    .I5(\proc/pro_count/ESCR_PC_INV_29_o5_232 ),
    .O(\proc/pro_count/Mcount_contador_eqn_0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/pro_count/ESCR_PC_INV_29_o7_SW1  (
    .I0(\proc/pro_count/ESCR_PC_INV_29_o1_229 ),
    .I1(constante[1]),
    .I2(\proc/Result [1]),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'hAAAAE2E2AAB8E2F0 ))
  \proc/pro_count/Mcount_contador_eqn_11  (
    .I0(\proc/Result [1]),
    .I1(\memInst/Mram__n0240 ),
    .I2(N13),
    .I3(\proc/pro_count/ESCR_PC_INV_29_o2_230 ),
    .I4(\proc/pro_count/ESCR_PC_INV_29_o6_233 ),
    .I5(\proc/pro_count/ESCR_PC_INV_29_o5_232 ),
    .O(\proc/pro_count/Mcount_contador_eqn_1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/pro_count/ESCR_PC_INV_29_o7_SW2  (
    .I0(\proc/pro_count/ESCR_PC_INV_29_o1_229 ),
    .I1(constante[2]),
    .I2(\proc/Result [2]),
    .O(N15)
  );
  LUT6 #(
    .INIT ( 64'hAAAAE2E2AAB8E2F0 ))
  \proc/pro_count/Mcount_contador_eqn_21  (
    .I0(\proc/Result [2]),
    .I1(\memInst/Mram__n0240 ),
    .I2(N15),
    .I3(\proc/pro_count/ESCR_PC_INV_29_o2_230 ),
    .I4(\proc/pro_count/ESCR_PC_INV_29_o6_233 ),
    .I5(\proc/pro_count/ESCR_PC_INV_29_o5_232 ),
    .O(\proc/pro_count/Mcount_contador_eqn_2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/pro_count/ESCR_PC_INV_29_o7_SW3  (
    .I0(\proc/pro_count/ESCR_PC_INV_29_o1_229 ),
    .I1(constante[3]),
    .I2(\proc/Result [3]),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'hAAAAE2E2AAB8E2F0 ))
  \proc/pro_count/Mcount_contador_eqn_31  (
    .I0(\proc/Result [3]),
    .I1(\memInst/Mram__n0240 ),
    .I2(N17),
    .I3(\proc/pro_count/ESCR_PC_INV_29_o2_230 ),
    .I4(\proc/pro_count/ESCR_PC_INV_29_o6_233 ),
    .I5(\proc/pro_count/ESCR_PC_INV_29_o5_232 ),
    .O(\proc/pro_count/Mcount_contador_eqn_3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/pro_count/ESCR_PC_INV_29_o7_SW4  (
    .I0(\proc/pro_count/ESCR_PC_INV_29_o1_229 ),
    .I1(constante[4]),
    .I2(\proc/Result [4]),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'hAAAAE2E2AAB8E2F0 ))
  \proc/pro_count/Mcount_contador_eqn_41  (
    .I0(\proc/Result [4]),
    .I1(\memInst/Mram__n0240 ),
    .I2(N19),
    .I3(\proc/pro_count/ESCR_PC_INV_29_o2_230 ),
    .I4(\proc/pro_count/ESCR_PC_INV_29_o6_233 ),
    .I5(\proc/pro_count/ESCR_PC_INV_29_o5_232 ),
    .O(\proc/pro_count/Mcount_contador_eqn_4 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<0> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<0> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<0> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_4_141 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<1> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<1> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<1> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_4_147 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<2> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<2> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<2> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_4_143 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<3> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<3> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<3> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_4_145 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<4> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<4> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<4> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_4_149 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<5> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<5> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<5> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_4_151 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<6> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<6> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<6> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_4_155 )
  );
  LUT5 #(
    .INIT ( 32'h7D396C28 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_4  (
    .I0(\proc/r_o_m/Mram__n00451 ),
    .I1(\proc/r_o_m/Mram__n0045 ),
    .I2(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<7> ),
    .I3(\proc/ual/Operando1[7]_Operando2[7]_sub_2_OUT<7> ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_add_0_OUT<7> ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_4_153 )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<0>1  (
    .I0(\proc/dados_r [0]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [0]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [0]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<1>1  (
    .I0(\proc/dados_r [1]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [1]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [1]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<2>1  (
    .I0(\proc/dados_r [2]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [2]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [2]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<3>1  (
    .I0(\proc/dados_r [3]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [3]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [3]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<4>1  (
    .I0(\proc/dados_r [4]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [4]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [4]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<5>1  (
    .I0(\proc/dados_r [5]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [5]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [5]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<6>1  (
    .I0(\proc/dados_r [6]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [6]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [6]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'hAAB08880 ))
  \proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<7>1  (
    .I0(\proc/dados_r [7]),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0014 [7]),
    .I3(\proc/Banco_Reg/_n0011 ),
    .I4(\proc/Banco_Reg/_n0013 [7]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_and_3_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<0>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [0]),
    .I2(\proc/Banco_Reg/_n0013 [0]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [0]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<0>_180 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<0>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [0]),
    .I2(\proc/Banco_Reg/_n0013 [0]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [0]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<0>1_276 )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<1>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [1]),
    .I2(\proc/Banco_Reg/_n0013 [1]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [1]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<1>_178 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<1>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [1]),
    .I2(\proc/Banco_Reg/_n0013 [1]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [1]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<1>1_275 )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<2>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [2]),
    .I2(\proc/Banco_Reg/_n0013 [2]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [2]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<2>_176 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<2>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [2]),
    .I2(\proc/Banco_Reg/_n0013 [2]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [2]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<2>1_274 )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<3>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [3]),
    .I2(\proc/Banco_Reg/_n0013 [3]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [3]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<3>_174 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<3>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [3]),
    .I2(\proc/Banco_Reg/_n0013 [3]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [3]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<3>1_273 )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<4>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [4]),
    .I2(\proc/Banco_Reg/_n0013 [4]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [4]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<4>_172 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<4>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [4]),
    .I2(\proc/Banco_Reg/_n0013 [4]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [4]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<4>1_272 )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<5>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [5]),
    .I2(\proc/Banco_Reg/_n0013 [5]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [5]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<5>_170 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<5>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [5]),
    .I2(\proc/Banco_Reg/_n0013 [5]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [5]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<5>1_271 )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<6>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [6]),
    .I2(\proc/Banco_Reg/_n0013 [6]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [6]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<6>_168 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<6>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [6]),
    .I2(\proc/Banco_Reg/_n0013 [6]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [6]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<6>1_270 )
  );
  LUT6 #(
    .INIT ( 64'h88808880AAAA8880 ))
  \proc/pro_count/ESCR_PC_INV_29_o5_SW0  (
    .I0(\memInst/Mram__n02402 ),
    .I1(\memInst/Mram__n02404 ),
    .I2(\proc/Banco_Reg/_n0013 [5]),
    .I3(\proc/Banco_Reg/_n0013 [6]),
    .I4(\proc/Banco_Reg/_n0013 [7]),
    .I5(\memInst/Mram__n02403 ),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'hF020F020F0202020 ))
  \proc/pro_count/ESCR_PC_INV_29_o5_SW1  (
    .I0(\proc/ual/Resultado_7_106 ),
    .I1(\memInst/Mram__n02403 ),
    .I2(\memInst/Mram__n02402 ),
    .I3(\memInst/Mram__n02404 ),
    .I4(\proc/Banco_Reg/_n0013 [6]),
    .I5(\proc/Banco_Reg/_n0013 [5]),
    .O(N22)
  );
  LUT4 #(
    .INIT ( 16'hC4C0 ))
  \proc/pro_count/ESCR_PC_INV_29_o5_SW2  (
    .I0(\memInst/Mram__n02403 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\memInst/Mram__n02404 ),
    .I3(\proc/Banco_Reg/_n0013 [7]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'hB8B8B8B8FF33CC00 ))
  \proc/pro_count/ESCR_PC_INV_29_o5  (
    .I0(N24),
    .I1(\proc/escr_r [0]),
    .I2(N23),
    .I3(N22),
    .I4(N21),
    .I5(\proc/pro_count/ESCR_PC_INV_29_o4_231 ),
    .O(\proc/pro_count/ESCR_PC_INV_29_o5_232 )
  );
  LUT5 #(
    .INIT ( 32'h111E44B4 ))
  \proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<7>  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [7]),
    .I2(\proc/Banco_Reg/_n0013 [7]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/dados_r [7]),
    .O(\proc/ual/Madd_Operando1[7]_Operando2[7]_add_0_OUT_lut<7>_166 )
  );
  LUT5 #(
    .INIT ( 32'hEED2BB87 ))
  \proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<7>1  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/dados_r [7]),
    .I2(\proc/Banco_Reg/_n0013 [7]),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Banco_Reg/_n0014 [7]),
    .O(\proc/ual/Msub_Operando1[7]_Operando2[7]_sub_2_OUT<7:0>_lut<7>1_278 )
  );
  LUT5 #(
    .INIT ( 32'h343477A5 ))
  \proc/r_o_m/Mram__n004571  (
    .I0(\proc/pro_count/contador [0]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [1]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [3]),
    .O(\proc/escr_r [0])
  );
  LUT5 #(
    .INIT ( 32'h14FFAF4F ))
  \proc/pro_count/ESCR_PC_INV_29_o1  (
    .I0(\proc/pro_count/contador [3]),
    .I1(\proc/pro_count/contador [2]),
    .I2(\proc/pro_count/contador [0]),
    .I3(\proc/pro_count/contador [4]),
    .I4(\proc/pro_count/contador [1]),
    .O(\proc/pro_count/ESCR_PC_INV_29_o1_229 )
  );
  LUT6 #(
    .INIT ( 64'h1080100000905444 ))
  \proc/pro_count/ESCR_PC_INV_29_o5_SW3  (
    .I0(\proc/pro_count/contador [3]),
    .I1(\proc/pro_count/contador [0]),
    .I2(\proc/ual/Resultado_7_106 ),
    .I3(\proc/pro_count/contador [4]),
    .I4(\proc/pro_count/contador [1]),
    .I5(\proc/pro_count/contador [2]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \proc/ual/Operando1[7]_Operando2[7]_equal_13_o8_SW0  (
    .I0(operando1[0]),
    .I1(\proc/operando2 [0]),
    .I2(operando1[1]),
    .I3(\proc/operando2 [1]),
    .I4(operando1[2]),
    .I5(\proc/operando2 [2]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h2002000000002002 ))
  \proc/ual/Operando1[7]_Operando2[7]_equal_13_o8  (
    .I0(N4),
    .I1(N29),
    .I2(operando1[6]),
    .I3(\proc/operando2 [6]),
    .I4(\proc/operando2 [5]),
    .I5(operando1[5]),
    .O(\proc/ual/Operando1[7]_Operando2[7]_equal_13_o )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [0]),
    .I2(\proc/dados_r [0]),
    .I3(operando1[0]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_33_o_3_140 )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [2]),
    .I2(\proc/dados_r [2]),
    .I3(operando1[2]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_29_o_3_142 )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [3]),
    .I2(\proc/dados_r [3]),
    .I3(operando1[3]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_27_o_3_144 )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [1]),
    .I2(\proc/dados_r [1]),
    .I3(operando1[1]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_31_o_3_146 )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [4]),
    .I2(\proc/dados_r [4]),
    .I3(operando1[4]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_25_o_3_148 )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [5]),
    .I2(\proc/dados_r [5]),
    .I3(operando1[5]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_23_o_3_150 )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [7]),
    .I2(\proc/dados_r [7]),
    .I3(operando1[7]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_19_o_3_152 )
  );
  LUT6 #(
    .INIT ( 64'hE41B001B1BE4FFE4 ))
  \proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_3  (
    .I0(\proc/Banco_Reg/_n0011 ),
    .I1(\proc/Banco_Reg/_n0014 [6]),
    .I2(\proc/dados_r [6]),
    .I3(operando1[6]),
    .I4(\proc/r_o_m/Mram__n00451 ),
    .I5(\proc/r_o_m/Mram__n0045 ),
    .O(\proc/ual/Mmux_SEL_ALU[3]_X_19_o_Mux_21_o_3_154 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFDFFFFFFFFFF ))
  \proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o1  (
    .I0(\memInst/Mram__n0240 ),
    .I1(\memInst/Mram__n02404 ),
    .I2(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o111 ),
    .I3(\memInst/Mram__n02402 ),
    .I4(\memInst/Mram__n02401 ),
    .I5(\memInst/Mram__n02403 ),
    .O(\proc/ual/SEL_ALU[3]_PWR_13_o_Mux_20_o )
  );
  LUT6 #(
    .INIT ( 64'h000000004DDD444D ))
  \proc/ual/Mmux_E_FLAG[4]_GND_19_o_MUX_50_o11  (
    .I0(operando1[7]),
    .I1(\proc/operando2 [7]),
    .I2(\proc/operando2 [6]),
    .I3(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 ),
    .I4(operando1[6]),
    .I5(\proc/ual/Operando1[7]_Operando2[7]_equal_13_o ),
    .O(\proc/ual/E_FLAG[4]_GND_19_o_MUX_50_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFB222BBB2 ))
  \proc/ual/Mmux_E_FLAG[4]_PWR_11_o_MUX_59_o11  (
    .I0(operando1[7]),
    .I1(\proc/operando2 [7]),
    .I2(\proc/operando2 [6]),
    .I3(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 ),
    .I4(operando1[6]),
    .I5(\proc/ual/Operando1[7]_Operando2[7]_equal_13_o ),
    .O(\proc/ual/E_FLAG[4]_PWR_11_o_MUX_59_o )
  );
  LUT6 #(
    .INIT ( 64'h4DDD444D00000000 ))
  \proc/ual/Mmux_E_FLAG[4]_GND_19_o_MUX_56_o11  (
    .I0(operando1[7]),
    .I1(\proc/operando2 [7]),
    .I2(\proc/operando2 [6]),
    .I3(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 ),
    .I4(operando1[6]),
    .I5(\proc/ual/Operando1[7]_Operando2[7]_equal_13_o ),
    .O(\proc/ual/E_FLAG[4]_GND_19_o_MUX_56_o )
  );
  LUT5 #(
    .INIT ( 32'h4DDD444D ))
  \proc/ual/E_FLAG[4]_GND_19_o_MUX_53_o1  (
    .I0(operando1[7]),
    .I1(\proc/operando2 [7]),
    .I2(\proc/operando2 [6]),
    .I3(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o2 ),
    .I4(operando1[6]),
    .O(\proc/ual/E_FLAG[4]_GND_19_o_MUX_53_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o14  (
    .I0(\proc/escr_r [1]),
    .I1(\proc/r_o_m/Mram__n00452 ),
    .I2(\proc/r_o_m/Mram__n0045 ),
    .I3(\proc/r_o_m/Mram__n00451 ),
    .I4(\proc/ual/Operando1[7]_Operando2[7]_equal_13_o ),
    .I5(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o12_247 ),
    .O(\proc/ual/SEL_ALU[3]_PWR_21_o_Mux_36_o )
  );
  LUT5 #(
    .INIT ( 32'h62445F74 ))
  \proc/Banco_Reg/_n0011<0>_SW0  (
    .I0(\proc/pro_count/contador [1]),
    .I1(\proc/pro_count/contador [4]),
    .I2(\proc/pro_count/contador [3]),
    .I3(\proc/pro_count/contador [2]),
    .I4(\proc/pro_count/contador [0]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hAB8AABEFAB8A028A ))
  \proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o11  (
    .I0(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o1 ),
    .I1(\proc/escr_r [0]),
    .I2(\proc/Banco_Reg/_n0013 [3]),
    .I3(\proc/dados_r [3]),
    .I4(\proc/Banco_Reg/_n0011 ),
    .I5(\proc/Banco_Reg/_n0014 [3]),
    .O(\proc/ual/Operando2[7]_Operando1[7]_LessThan_12_o11_244 )
  );
  LUT6 #(
    .INIT ( 64'hAB8AABEFAB8A028A ))
  \proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o11  (
    .I0(\proc/ual/Operando1[7]_Operando2[7]_LessThan_14_o1_156 ),
    .I1(\proc/Banco_Reg/_n0011 ),
    .I2(\proc/Banco_Reg/_n0014 [3]),
    .I3(\proc/dados_r [3]),
    .I4(\proc/escr_r [0]),
    .I5(\proc/Banco_Reg/_n0013 [3]),
    .O(\proc/ual/Mmux_SEL_ALU[3]_PWR_21_o_Mux_36_o1 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_4_1  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_4 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador_4_1_289 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_0_1  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_0 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador_0_1_290 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_1_1  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_1 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador_1_1_291 )
  );
  LUT5 #(
    .INIT ( 32'h3D763D0C ))
  \memInst/Mram__n024061_1  (
    .I0(\proc/pro_count/contador_0_1_290 ),
    .I1(\proc/pro_count/contador_4_1_289 ),
    .I2(\proc/pro_count/contador_1_2_297 ),
    .I3(\proc/pro_count/contador [3]),
    .I4(\proc/pro_count/contador_2_1_298 ),
    .O(\memInst/Mram__n024061_292 )
  );
  LUT5 #(
    .INIT ( 32'h5B513880 ))
  \memInst/Mram__n024071_1  (
    .I0(\proc/pro_count/contador_1_1_291 ),
    .I1(\proc/pro_count/contador_0_1_290 ),
    .I2(\proc/pro_count/contador_4_2_296 ),
    .I3(\proc/pro_count/contador_2_1_298 ),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n024071_293 )
  );
  LUT5 #(
    .INIT ( 32'h63234F22 ))
  \memInst/Mram__n024051_1  (
    .I0(\proc/pro_count/contador_4_1_289 ),
    .I1(\proc/pro_count/contador_1_1_291 ),
    .I2(\proc/pro_count/contador [0]),
    .I3(\proc/pro_count/contador_2_1_298 ),
    .I4(\proc/pro_count/contador [3]),
    .O(\memInst/Mram__n024051_294 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_0_2  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_0 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador_0_2_295 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_4_2  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_4 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador_4_2_296 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_1_2  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_1 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador_1_2_297 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/pro_count/contador_2_1  (
    .C(clk_BUFGP_9),
    .D(\proc/pro_count/Mcount_contador_eqn_2 ),
    .R(reset_IBUF_8),
    .Q(\proc/pro_count/contador_2_1_298 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_9)
  );
  INV   \proc/pro_count/Mcount_contador_lut<0>_INV_0  (
    .I(\proc/pro_count/contador [0]),
    .O(\proc/pro_count/Mcount_contador_lut [0])
  );
  MUXF7   \proc/ual/Operando1[7]_Operando2[7]_equal_13_o8_SW1  (
    .I0(N31),
    .I1(N32),
    .S(\proc/escr_r [0]),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \proc/ual/Operando1[7]_Operando2[7]_equal_13_o8_SW1_F  (
    .I0(\proc/Banco_Reg/_n0013 [3]),
    .I1(\proc/operando2 [3]),
    .I2(\proc/Banco_Reg/_n0013 [4]),
    .I3(\proc/operando2 [4]),
    .I4(\proc/Banco_Reg/_n0013 [7]),
    .I5(\proc/operando2 [7]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \proc/ual/Operando1[7]_Operando2[7]_equal_13_o8_SW1_G  (
    .I0(\proc/dados_r [3]),
    .I1(\proc/operando2 [3]),
    .I2(\proc/dados_r [4]),
    .I3(\proc/operando2 [4]),
    .I4(\proc/dados_r [7]),
    .I5(\proc/operando2 [7]),
    .O(N32)
  );
  MUXF7   \proc/pro_count/ESCR_PC_INV_29_o6  (
    .I0(N33),
    .I1(N34),
    .S(\proc/Banco_Reg/_n0013 [7]),
    .O(\proc/pro_count/ESCR_PC_INV_29_o6_233 )
  );
  LUT6 #(
    .INIT ( 64'h044415558CCC9DDD ))
  \proc/pro_count/ESCR_PC_INV_29_o6_F  (
    .I0(\memInst/Mram__n02401 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\proc/ual/Resultado_7_106 ),
    .I3(\proc/escr_r [0]),
    .I4(\proc/Reg_Flags/aux [3]),
    .I5(\proc/Reg_Flags/aux [1]),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'h0040115188C899D9 ))
  \proc/pro_count/ESCR_PC_INV_29_o6_G  (
    .I0(\memInst/Mram__n02401 ),
    .I1(\memInst/Mram__n02402 ),
    .I2(\proc/escr_r [0]),
    .I3(\proc/ual/Resultado_7_106 ),
    .I4(\proc/Reg_Flags/aux [3]),
    .I5(\proc/Reg_Flags/aux [1]),
    .O(N34)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

