//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat Jan 30 19:10:25 2021
//Host        : LAPTOP-0QS007FN running 64-bit major release  (build 9200)
//Command     : generate_target Base_Zynq_MPSoC_wrapper.bd
//Design      : Base_Zynq_MPSoC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Base_Zynq_MPSoC_wrapper
   (led_8bits_tri_o);
  output [7:0]led_8bits_tri_o;

  wire [7:0]led_8bits_tri_o;

  Base_Zynq_MPSoC Base_Zynq_MPSoC_i
       (.led_8bits_tri_o(led_8bits_tri_o));
endmodule
