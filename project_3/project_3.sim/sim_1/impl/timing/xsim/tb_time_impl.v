// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Feb 20 13:40:42 2024
// Host        : CS152B-11 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/project_3/project_3.sim/sim_1/impl/timing/xsim/tb_time_impl.v
// Design      : basys3
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "3e9a56dd" *) 
(* NotValidForBitStream *)
module basys3
   (clk,
    sw,
    btnC,
    btnU,
    an,
    seg);
  input clk;
  input [7:0]sw;
  input btnC;
  input btnU;
  output [3:0]an;
  output [6:0]seg;

  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btnU;
  wire btnU_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [6:0]seg;

initial begin
 $sdf_annotate("tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  stopwatch inst
       (.an(an_OBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk(clk_IBUF_BUFG));
  OBUF \seg_OBUF[0]_inst 
       (.I(1'b0),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(1'b1),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(1'b1),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(1'b1),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(1'b1),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(1'b1),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg[6]));
endmodule

module clock
   (CLK,
    reg_500_reg_0,
    reg_500_reg_1,
    reg_500_reg_2,
    reg_500_reg_3,
    reg_500_reg_4,
    clk,
    btnU_IBUF);
  output CLK;
  output reg_500_reg_0;
  output reg_500_reg_1;
  output reg_500_reg_2;
  output reg_500_reg_3;
  input reg_500_reg_4;
  input clk;
  input btnU_IBUF;

  wire CLK;
  wire btnU_IBUF;
  wire clk;
  wire counter1__53_carry__0_i_1_n_0;
  wire counter1__53_carry__0_n_0;
  wire counter1__53_carry__0_n_4;
  wire counter1__53_carry__0_n_5;
  wire counter1__53_carry__0_n_6;
  wire counter1__53_carry__0_n_7;
  wire counter1__53_carry__1_i_1_n_0;
  wire counter1__53_carry__1_i_2_n_0;
  wire counter1__53_carry__1_n_0;
  wire counter1__53_carry__1_n_4;
  wire counter1__53_carry__1_n_5;
  wire counter1__53_carry__1_n_6;
  wire counter1__53_carry__1_n_7;
  wire counter1__53_carry__2_n_0;
  wire counter1__53_carry__2_n_4;
  wire counter1__53_carry__2_n_5;
  wire counter1__53_carry__2_n_6;
  wire counter1__53_carry__2_n_7;
  wire counter1__53_carry__3_i_1_n_0;
  wire counter1__53_carry__3_n_0;
  wire counter1__53_carry__3_n_5;
  wire counter1__53_carry__3_n_6;
  wire counter1__53_carry__3_n_7;
  wire counter1__53_carry_i_1_n_0;
  wire counter1__53_carry_i_2_n_0;
  wire counter1__53_carry_i_3_n_0;
  wire counter1__53_carry_n_0;
  wire counter1__53_carry_n_4;
  wire counter1__53_carry_n_5;
  wire counter1__53_carry_n_6;
  wire counter1__53_carry_n_7;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_i_4_n_0;
  wire counter1_carry__1_n_0;
  wire counter1_carry__1_n_4;
  wire counter1_carry__1_n_5;
  wire counter1_carry__1_n_6;
  wire counter1_carry__1_n_7;
  wire counter1_carry__2_i_1_n_0;
  wire counter1_carry__2_i_2_n_0;
  wire counter1_carry__2_i_3_n_0;
  wire counter1_carry__2_i_4_n_0;
  wire counter1_carry__2_n_0;
  wire counter1_carry__2_n_4;
  wire counter1_carry__2_n_5;
  wire counter1_carry__2_n_6;
  wire counter1_carry__2_n_7;
  wire counter1_carry__3_i_1_n_0;
  wire counter1_carry__3_i_2_n_0;
  wire counter1_carry__3_i_3_n_0;
  wire counter1_carry__3_i_4_n_0;
  wire counter1_carry__3_n_0;
  wire counter1_carry__3_n_4;
  wire counter1_carry__3_n_5;
  wire counter1_carry__3_n_6;
  wire counter1_carry__3_n_7;
  wire counter1_carry__4_i_1_n_0;
  wire counter1_carry__4_i_2_n_0;
  wire counter1_carry__4_i_3_n_0;
  wire counter1_carry__4_i_4_n_0;
  wire counter1_carry__4_n_0;
  wire counter1_carry__4_n_4;
  wire counter1_carry__4_n_5;
  wire counter1_carry__4_n_6;
  wire counter1_carry__4_n_7;
  wire counter1_carry__5_i_1_n_0;
  wire counter1_carry__5_i_2_n_0;
  wire counter1_carry__5_i_3_n_0;
  wire counter1_carry__5_n_0;
  wire counter1_carry__5_n_5;
  wire counter1_carry__5_n_6;
  wire counter1_carry__5_n_7;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire \counter[0]_i_10_n_0 ;
  wire \counter[0]_i_11_n_0 ;
  wire \counter[0]_i_12_n_0 ;
  wire \counter[0]_i_13_n_0 ;
  wire \counter[0]_i_14_n_0 ;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire [26:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire reg_5001__107_carry__0_i_1_n_0;
  wire reg_5001__107_carry__0_i_2_n_0;
  wire reg_5001__107_carry__0_i_3_n_0;
  wire reg_5001__107_carry__0_i_4_n_0;
  wire reg_5001__107_carry__0_i_5_n_0;
  wire reg_5001__107_carry__0_i_6_n_0;
  wire reg_5001__107_carry__0_n_0;
  wire reg_5001__107_carry__0_n_4;
  wire reg_5001__107_carry__0_n_5;
  wire reg_5001__107_carry__0_n_6;
  wire reg_5001__107_carry__0_n_7;
  wire reg_5001__107_carry__1_i_1_n_0;
  wire reg_5001__107_carry__1_i_2_n_0;
  wire reg_5001__107_carry__1_i_3_n_0;
  wire reg_5001__107_carry__1_i_4_n_0;
  wire reg_5001__107_carry__1_n_0;
  wire reg_5001__107_carry__1_n_4;
  wire reg_5001__107_carry__1_n_5;
  wire reg_5001__107_carry__1_n_6;
  wire reg_5001__107_carry__1_n_7;
  wire reg_5001__107_carry__2_i_1_n_0;
  wire reg_5001__107_carry__2_i_2_n_0;
  wire reg_5001__107_carry__2_i_3_n_0;
  wire reg_5001__107_carry__2_i_4_n_0;
  wire reg_5001__107_carry__2_i_5_n_0;
  wire reg_5001__107_carry__2_i_6_n_0;
  wire reg_5001__107_carry__2_i_7_n_0;
  wire reg_5001__107_carry__2_i_8_n_0;
  wire reg_5001__107_carry__2_n_0;
  wire reg_5001__107_carry__2_n_4;
  wire reg_5001__107_carry__2_n_5;
  wire reg_5001__107_carry__2_n_6;
  wire reg_5001__107_carry__2_n_7;
  wire reg_5001__107_carry__3_i_1_n_0;
  wire reg_5001__107_carry__3_i_2_n_0;
  wire reg_5001__107_carry__3_i_3_n_0;
  wire reg_5001__107_carry__3_n_5;
  wire reg_5001__107_carry__3_n_6;
  wire reg_5001__107_carry__3_n_7;
  wire reg_5001__107_carry_i_1_n_0;
  wire reg_5001__107_carry_i_2_n_0;
  wire reg_5001__107_carry_n_0;
  wire reg_5001__107_carry_n_4;
  wire reg_5001__107_carry_n_5;
  wire reg_5001__107_carry_n_6;
  wire reg_5001__151_carry__0_i_1_n_0;
  wire reg_5001__151_carry__0_i_2_n_0;
  wire reg_5001__151_carry__0_i_3_n_0;
  wire reg_5001__151_carry__0_i_4_n_0;
  wire reg_5001__151_carry__0_i_5_n_0;
  wire reg_5001__151_carry__0_i_6_n_0;
  wire reg_5001__151_carry__0_i_7_n_0;
  wire reg_5001__151_carry__0_i_8_n_0;
  wire reg_5001__151_carry__0_n_0;
  wire reg_5001__151_carry__0_n_4;
  wire reg_5001__151_carry__0_n_5;
  wire reg_5001__151_carry__0_n_6;
  wire reg_5001__151_carry__0_n_7;
  wire reg_5001__151_carry__1_i_1_n_0;
  wire reg_5001__151_carry__1_i_2_n_0;
  wire reg_5001__151_carry__1_i_3_n_0;
  wire reg_5001__151_carry__1_i_4_n_0;
  wire reg_5001__151_carry__1_i_5_n_0;
  wire reg_5001__151_carry__1_i_6_n_0;
  wire reg_5001__151_carry__1_i_7_n_0;
  wire reg_5001__151_carry__1_i_8_n_0;
  wire reg_5001__151_carry__1_n_0;
  wire reg_5001__151_carry__1_n_4;
  wire reg_5001__151_carry__1_n_5;
  wire reg_5001__151_carry__1_n_6;
  wire reg_5001__151_carry__1_n_7;
  wire reg_5001__151_carry__2_i_1_n_0;
  wire reg_5001__151_carry__2_i_2_n_0;
  wire reg_5001__151_carry__2_i_3_n_0;
  wire reg_5001__151_carry__2_i_4_n_0;
  wire reg_5001__151_carry__2_i_5_n_0;
  wire reg_5001__151_carry__2_i_6_n_0;
  wire reg_5001__151_carry__2_i_7_n_0;
  wire reg_5001__151_carry__2_i_8_n_0;
  wire reg_5001__151_carry__2_n_0;
  wire reg_5001__151_carry__2_n_4;
  wire reg_5001__151_carry__2_n_5;
  wire reg_5001__151_carry__2_n_6;
  wire reg_5001__151_carry__2_n_7;
  wire reg_5001__151_carry__3_i_1_n_0;
  wire reg_5001__151_carry__3_i_2_n_0;
  wire reg_5001__151_carry__3_i_3_n_0;
  wire reg_5001__151_carry__3_n_6;
  wire reg_5001__151_carry__3_n_7;
  wire reg_5001__151_carry_i_1_n_0;
  wire reg_5001__151_carry_i_2_n_0;
  wire reg_5001__151_carry_i_3_n_0;
  wire reg_5001__151_carry_i_4_n_0;
  wire reg_5001__151_carry_i_5_n_0;
  wire reg_5001__151_carry_i_6_n_0;
  wire reg_5001__151_carry_i_7_n_3;
  wire reg_5001__151_carry_n_0;
  wire reg_5001__151_carry_n_4;
  wire reg_5001__151_carry_n_5;
  wire reg_5001__151_carry_n_6;
  wire reg_5001__201_carry__0_i_1_n_0;
  wire reg_5001__201_carry__0_i_2_n_0;
  wire reg_5001__201_carry__0_i_3_n_0;
  wire reg_5001__201_carry__0_i_4_n_0;
  wire reg_5001__201_carry__0_n_0;
  wire reg_5001__201_carry__0_n_4;
  wire reg_5001__201_carry__0_n_5;
  wire reg_5001__201_carry__0_n_6;
  wire reg_5001__201_carry__0_n_7;
  wire reg_5001__201_carry__1_i_1_n_0;
  wire reg_5001__201_carry__1_i_2_n_0;
  wire reg_5001__201_carry__1_i_3_n_0;
  wire reg_5001__201_carry__1_i_4_n_0;
  wire reg_5001__201_carry__1_n_0;
  wire reg_5001__201_carry__1_n_4;
  wire reg_5001__201_carry__1_n_5;
  wire reg_5001__201_carry__1_n_6;
  wire reg_5001__201_carry__1_n_7;
  wire reg_5001__201_carry__2_i_1_n_0;
  wire reg_5001__201_carry__2_i_2_n_0;
  wire reg_5001__201_carry__2_i_3_n_0;
  wire reg_5001__201_carry__2_i_4_n_0;
  wire reg_5001__201_carry__2_n_0;
  wire reg_5001__201_carry__2_n_4;
  wire reg_5001__201_carry__2_n_5;
  wire reg_5001__201_carry__2_n_6;
  wire reg_5001__201_carry__2_n_7;
  wire reg_5001__201_carry__3_i_1_n_0;
  wire reg_5001__201_carry__3_i_2_n_0;
  wire reg_5001__201_carry__3_i_3_n_0;
  wire reg_5001__201_carry__3_i_4_n_0;
  wire reg_5001__201_carry__3_n_0;
  wire reg_5001__201_carry__3_n_4;
  wire reg_5001__201_carry__3_n_5;
  wire reg_5001__201_carry__3_n_6;
  wire reg_5001__201_carry__3_n_7;
  wire reg_5001__201_carry__4_i_1_n_0;
  wire reg_5001__201_carry__4_i_2_n_0;
  wire reg_5001__201_carry__4_n_6;
  wire reg_5001__201_carry__4_n_7;
  wire reg_5001__201_carry_i_1_n_0;
  wire reg_5001__201_carry_i_2_n_0;
  wire reg_5001__201_carry_i_3_n_0;
  wire reg_5001__201_carry_i_4_n_0;
  wire reg_5001__201_carry_n_0;
  wire reg_5001__201_carry_n_4;
  wire reg_5001__201_carry_n_5;
  wire reg_5001__201_carry_n_6;
  wire reg_5001__264_carry__0_i_1_n_0;
  wire reg_5001__264_carry__0_i_2_n_0;
  wire reg_5001__264_carry__0_n_0;
  wire reg_5001__264_carry__0_n_4;
  wire reg_5001__264_carry__0_n_5;
  wire reg_5001__264_carry__0_n_6;
  wire reg_5001__264_carry__0_n_7;
  wire reg_5001__264_carry__1_i_1_n_0;
  wire reg_5001__264_carry__1_n_0;
  wire reg_5001__264_carry__1_n_4;
  wire reg_5001__264_carry__1_n_5;
  wire reg_5001__264_carry__1_n_6;
  wire reg_5001__264_carry__1_n_7;
  wire reg_5001__264_carry__2_i_1_n_0;
  wire reg_5001__264_carry__2_n_0;
  wire reg_5001__264_carry__2_n_4;
  wire reg_5001__264_carry__2_n_5;
  wire reg_5001__264_carry__2_n_6;
  wire reg_5001__264_carry__2_n_7;
  wire reg_5001__264_carry__3_i_1_n_0;
  wire reg_5001__264_carry__3_i_2_n_0;
  wire reg_5001__264_carry__3_n_0;
  wire reg_5001__264_carry__3_n_4;
  wire reg_5001__264_carry__3_n_5;
  wire reg_5001__264_carry__3_n_6;
  wire reg_5001__264_carry__3_n_7;
  wire reg_5001__264_carry__4_i_1_n_0;
  wire reg_5001__264_carry__4_n_3;
  wire reg_5001__264_carry_i_1_n_0;
  wire reg_5001__264_carry_i_2_n_0;
  wire reg_5001__264_carry_n_0;
  wire reg_5001__264_carry_n_4;
  wire reg_5001__264_carry_n_5;
  wire reg_5001__264_carry_n_6;
  wire reg_5001__264_carry_n_7;
  wire reg_5001__58_carry__0_i_1_n_0;
  wire reg_5001__58_carry__0_i_2_n_0;
  wire reg_5001__58_carry__0_i_3_n_0;
  wire reg_5001__58_carry__0_i_4_n_0;
  wire reg_5001__58_carry__0_i_5_n_0;
  wire reg_5001__58_carry__0_i_6_n_0;
  wire reg_5001__58_carry__0_n_0;
  wire reg_5001__58_carry__0_n_4;
  wire reg_5001__58_carry__0_n_5;
  wire reg_5001__58_carry__0_n_6;
  wire reg_5001__58_carry__0_n_7;
  wire reg_5001__58_carry__1_i_1_n_0;
  wire reg_5001__58_carry__1_i_2_n_0;
  wire reg_5001__58_carry__1_i_3_n_0;
  wire reg_5001__58_carry__1_i_4_n_0;
  wire reg_5001__58_carry__1_n_0;
  wire reg_5001__58_carry__1_n_4;
  wire reg_5001__58_carry__1_n_5;
  wire reg_5001__58_carry__1_n_6;
  wire reg_5001__58_carry__1_n_7;
  wire reg_5001__58_carry__2_i_1_n_0;
  wire reg_5001__58_carry__2_i_2_n_0;
  wire reg_5001__58_carry__2_i_3_n_0;
  wire reg_5001__58_carry__2_i_4_n_0;
  wire reg_5001__58_carry__2_i_5_n_0;
  wire reg_5001__58_carry__2_i_6_n_0;
  wire reg_5001__58_carry__2_i_7_n_0;
  wire reg_5001__58_carry__2_i_8_n_0;
  wire reg_5001__58_carry__2_n_0;
  wire reg_5001__58_carry__2_n_4;
  wire reg_5001__58_carry__2_n_5;
  wire reg_5001__58_carry__2_n_6;
  wire reg_5001__58_carry__2_n_7;
  wire reg_5001__58_carry__3_i_1_n_0;
  wire reg_5001__58_carry__3_i_2_n_0;
  wire reg_5001__58_carry__3_i_3_n_0;
  wire reg_5001__58_carry__3_n_0;
  wire reg_5001__58_carry__3_n_4;
  wire reg_5001__58_carry__3_n_5;
  wire reg_5001__58_carry__3_n_6;
  wire reg_5001__58_carry__3_n_7;
  wire reg_5001__58_carry__4_i_1_n_0;
  wire reg_5001__58_carry__4_i_2_n_0;
  wire reg_5001__58_carry__4_n_6;
  wire reg_5001__58_carry__4_n_7;
  wire reg_5001__58_carry_i_1_n_0;
  wire reg_5001__58_carry_i_2_n_0;
  wire reg_5001__58_carry_n_0;
  wire reg_5001__58_carry_n_4;
  wire reg_5001__58_carry_n_5;
  wire reg_5001__58_carry_n_6;
  wire reg_5001_carry__0_i_1_n_0;
  wire reg_5001_carry__0_i_2_n_0;
  wire reg_5001_carry__0_i_3_n_0;
  wire reg_5001_carry__0_i_4_n_0;
  wire reg_5001_carry__0_n_0;
  wire reg_5001_carry__1_i_1_n_0;
  wire reg_5001_carry__1_i_2_n_0;
  wire reg_5001_carry__1_i_3_n_0;
  wire reg_5001_carry__1_i_4_n_0;
  wire reg_5001_carry__1_n_0;
  wire reg_5001_carry__2_i_1_n_0;
  wire reg_5001_carry__2_i_2_n_0;
  wire reg_5001_carry__2_i_3_n_0;
  wire reg_5001_carry__2_i_4_n_0;
  wire reg_5001_carry__2_n_0;
  wire reg_5001_carry__3_i_1_n_0;
  wire reg_5001_carry__3_i_2_n_0;
  wire reg_5001_carry__3_i_3_n_0;
  wire reg_5001_carry__3_i_4_n_0;
  wire reg_5001_carry__3_n_0;
  wire reg_5001_carry__4_i_1_n_0;
  wire reg_5001_carry__4_i_2_n_0;
  wire reg_5001_carry__4_i_3_n_0;
  wire reg_5001_carry__4_i_4_n_0;
  wire reg_5001_carry__4_n_0;
  wire reg_5001_carry__4_n_4;
  wire reg_5001_carry__4_n_5;
  wire reg_5001_carry__5_i_1_n_0;
  wire reg_5001_carry__5_i_2_n_0;
  wire reg_5001_carry__5_n_0;
  wire reg_5001_carry__5_n_4;
  wire reg_5001_carry__5_n_5;
  wire reg_5001_carry__5_n_6;
  wire reg_5001_carry__5_n_7;
  wire reg_5001_carry_i_1_n_0;
  wire reg_5001_carry_i_2_n_0;
  wire reg_5001_carry_i_3_n_0;
  wire reg_5001_carry_n_0;
  wire reg_500_i_10_n_0;
  wire reg_500_i_6_n_0;
  wire reg_500_i_7_n_0;
  wire reg_500_i_8_n_0;
  wire reg_500_i_9_n_0;
  wire reg_500_reg_0;
  wire reg_500_reg_1;
  wire reg_500_reg_2;
  wire reg_500_reg_3;
  wire reg_500_reg_4;
  wire [7:0]sel0;
  wire [2:0]NLW_counter1__53_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter1__53_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter1__53_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter1__53_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter1__53_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_counter1__53_carry__3_O_UNCONNECTED;
  wire [2:0]NLW_counter1_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__5_O_UNCONNECTED;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_reg_5001__107_carry_CO_UNCONNECTED;
  wire [0:0]NLW_reg_5001__107_carry_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__107_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__107_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__107_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001__107_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_reg_5001__107_carry__3_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__151_carry_CO_UNCONNECTED;
  wire [0:0]NLW_reg_5001__151_carry_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__151_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__151_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__151_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001__151_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_reg_5001__151_carry__3_O_UNCONNECTED;
  wire [3:1]NLW_reg_5001__151_carry_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001__151_carry_i_7_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__201_carry_CO_UNCONNECTED;
  wire [0:0]NLW_reg_5001__201_carry_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__201_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__201_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__201_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__201_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001__201_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_reg_5001__201_carry__4_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__264_carry_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__264_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__264_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__264_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__264_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_reg_5001__264_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001__264_carry__4_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__58_carry_CO_UNCONNECTED;
  wire [0:0]NLW_reg_5001__58_carry_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001__58_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__58_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__58_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_reg_5001__58_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001__58_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_reg_5001__58_carry__4_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001_carry_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001_carry_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_reg_5001_carry__3_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001_carry__4_CO_UNCONNECTED;
  wire [1:0]NLW_reg_5001_carry__4_O_UNCONNECTED;
  wire [2:0]NLW_reg_5001_carry__5_CO_UNCONNECTED;

  CARRY4 counter1__53_carry
       (.CI(1'b0),
        .CO({counter1__53_carry_n_0,NLW_counter1__53_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b1,1'b1,1'b1,1'b0}),
        .O({counter1__53_carry_n_4,counter1__53_carry_n_5,counter1__53_carry_n_6,counter1__53_carry_n_7}),
        .S({counter1__53_carry_i_1_n_0,counter1__53_carry_i_2_n_0,counter1__53_carry_i_3_n_0,counter1_carry__1_n_7}));
  CARRY4 counter1__53_carry__0
       (.CI(counter1__53_carry_n_0),
        .CO({counter1__53_carry__0_n_0,NLW_counter1__53_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({counter1__53_carry__0_n_4,counter1__53_carry__0_n_5,counter1__53_carry__0_n_6,counter1__53_carry__0_n_7}),
        .S({counter1_carry__2_n_4,counter1_carry__2_n_5,counter1_carry__2_n_6,counter1__53_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1__53_carry__0_i_1
       (.I0(counter1_carry__2_n_7),
        .O(counter1__53_carry__0_i_1_n_0));
  CARRY4 counter1__53_carry__1
       (.CI(counter1__53_carry__0_n_0),
        .CO({counter1__53_carry__1_n_0,NLW_counter1__53_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b1,1'b0}),
        .O({counter1__53_carry__1_n_4,counter1__53_carry__1_n_5,counter1__53_carry__1_n_6,counter1__53_carry__1_n_7}),
        .S({counter1__53_carry__1_i_1_n_0,counter1_carry__3_n_5,counter1__53_carry__1_i_2_n_0,counter1_carry__3_n_7}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1__53_carry__1_i_1
       (.I0(counter1_carry__3_n_4),
        .O(counter1__53_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1__53_carry__1_i_2
       (.I0(counter1_carry__3_n_6),
        .O(counter1__53_carry__1_i_2_n_0));
  CARRY4 counter1__53_carry__2
       (.CI(counter1__53_carry__1_n_0),
        .CO({counter1__53_carry__2_n_0,NLW_counter1__53_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter1__53_carry__2_n_4,counter1__53_carry__2_n_5,counter1__53_carry__2_n_6,counter1__53_carry__2_n_7}),
        .S({counter1_carry__4_n_4,counter1_carry__4_n_5,counter1_carry__4_n_6,counter1_carry__4_n_7}));
  CARRY4 counter1__53_carry__3
       (.CI(counter1__53_carry__2_n_0),
        .CO({counter1__53_carry__3_n_0,NLW_counter1__53_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b1,1'b0}),
        .O({NLW_counter1__53_carry__3_O_UNCONNECTED[3],counter1__53_carry__3_n_5,counter1__53_carry__3_n_6,counter1__53_carry__3_n_7}),
        .S({counter1_carry__5_n_0,counter1_carry__5_n_5,counter1__53_carry__3_i_1_n_0,counter1_carry__5_n_7}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1__53_carry__3_i_1
       (.I0(counter1_carry__5_n_6),
        .O(counter1__53_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1__53_carry_i_1
       (.I0(counter1_carry__1_n_4),
        .O(counter1__53_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1__53_carry_i_2
       (.I0(counter1_carry__1_n_5),
        .O(counter1__53_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1__53_carry_i_3
       (.I0(counter1_carry__1_n_6),
        .O(counter1__53_carry_i_3_n_0));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,NLW_counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(counter_reg[3:0]),
        .O(sel0[3:0]),
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,NLW_counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[7:4]),
        .O(sel0[7:4]),
        .S({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_1
       (.I0(counter_reg[7]),
        .O(counter1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_2
       (.I0(counter_reg[6]),
        .O(counter1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_3
       (.I0(counter_reg[5]),
        .O(counter1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_4
       (.I0(counter_reg[4]),
        .O(counter1_carry__0_i_4_n_0));
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({counter1_carry__1_n_0,NLW_counter1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[11:8]),
        .O({counter1_carry__1_n_4,counter1_carry__1_n_5,counter1_carry__1_n_6,counter1_carry__1_n_7}),
        .S({counter1_carry__1_i_1_n_0,counter1_carry__1_i_2_n_0,counter1_carry__1_i_3_n_0,counter1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__1_i_1
       (.I0(counter_reg[11]),
        .O(counter1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__1_i_2
       (.I0(counter_reg[10]),
        .O(counter1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__1_i_3
       (.I0(counter_reg[9]),
        .O(counter1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__1_i_4
       (.I0(counter_reg[8]),
        .O(counter1_carry__1_i_4_n_0));
  CARRY4 counter1_carry__2
       (.CI(counter1_carry__1_n_0),
        .CO({counter1_carry__2_n_0,NLW_counter1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[15:12]),
        .O({counter1_carry__2_n_4,counter1_carry__2_n_5,counter1_carry__2_n_6,counter1_carry__2_n_7}),
        .S({counter1_carry__2_i_1_n_0,counter1_carry__2_i_2_n_0,counter1_carry__2_i_3_n_0,counter1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__2_i_1
       (.I0(counter_reg[15]),
        .O(counter1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__2_i_2
       (.I0(counter_reg[14]),
        .O(counter1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__2_i_3
       (.I0(counter_reg[13]),
        .O(counter1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__2_i_4
       (.I0(counter_reg[12]),
        .O(counter1_carry__2_i_4_n_0));
  CARRY4 counter1_carry__3
       (.CI(counter1_carry__2_n_0),
        .CO({counter1_carry__3_n_0,NLW_counter1_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[19:16]),
        .O({counter1_carry__3_n_4,counter1_carry__3_n_5,counter1_carry__3_n_6,counter1_carry__3_n_7}),
        .S({counter1_carry__3_i_1_n_0,counter1_carry__3_i_2_n_0,counter1_carry__3_i_3_n_0,counter1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__3_i_1
       (.I0(counter_reg[19]),
        .O(counter1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__3_i_2
       (.I0(counter_reg[18]),
        .O(counter1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__3_i_3
       (.I0(counter_reg[17]),
        .O(counter1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__3_i_4
       (.I0(counter_reg[16]),
        .O(counter1_carry__3_i_4_n_0));
  CARRY4 counter1_carry__4
       (.CI(counter1_carry__3_n_0),
        .CO({counter1_carry__4_n_0,NLW_counter1_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[23:20]),
        .O({counter1_carry__4_n_4,counter1_carry__4_n_5,counter1_carry__4_n_6,counter1_carry__4_n_7}),
        .S({counter1_carry__4_i_1_n_0,counter1_carry__4_i_2_n_0,counter1_carry__4_i_3_n_0,counter1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__4_i_1
       (.I0(counter_reg[23]),
        .O(counter1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__4_i_2
       (.I0(counter_reg[22]),
        .O(counter1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__4_i_3
       (.I0(counter_reg[21]),
        .O(counter1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__4_i_4
       (.I0(counter_reg[20]),
        .O(counter1_carry__4_i_4_n_0));
  CARRY4 counter1_carry__5
       (.CI(counter1_carry__4_n_0),
        .CO({counter1_carry__5_n_0,NLW_counter1_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_reg[26:24]}),
        .O({NLW_counter1_carry__5_O_UNCONNECTED[3],counter1_carry__5_n_5,counter1_carry__5_n_6,counter1_carry__5_n_7}),
        .S({1'b1,counter1_carry__5_i_1_n_0,counter1_carry__5_i_2_n_0,counter1_carry__5_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__5_i_1
       (.I0(counter_reg[26]),
        .O(counter1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__5_i_2
       (.I0(counter_reg[25]),
        .O(counter1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__5_i_3
       (.I0(counter_reg[24]),
        .O(counter1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_1
       (.I0(counter_reg[3]),
        .O(counter1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_2
       (.I0(counter_reg[2]),
        .O(counter1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_3
       (.I0(counter_reg[1]),
        .O(counter1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_4
       (.I0(counter_reg[0]),
        .O(counter1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_5_n_0 ),
        .I3(\counter[0]_i_6_n_0 ),
        .I4(btnU_IBUF),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_10 
       (.I0(counter1_carry__4_n_4),
        .I1(counter1_carry__4_n_5),
        .I2(counter1_carry__5_n_6),
        .I3(counter1_carry__5_n_7),
        .I4(counter1_carry__4_n_7),
        .I5(counter1_carry__4_n_6),
        .O(\counter[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_11 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\counter[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_12 
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(counter1__53_carry__3_n_0),
        .I5(counter1_carry__5_n_5),
        .O(\counter[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_13 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[6]),
        .O(\counter[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_14 
       (.I0(counter1__53_carry__2_n_4),
        .I1(counter1__53_carry__2_n_5),
        .I2(counter1__53_carry__3_n_6),
        .I3(counter1__53_carry__3_n_7),
        .I4(counter1__53_carry__2_n_7),
        .I5(counter1__53_carry__2_n_6),
        .O(\counter[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter[0]_i_3 
       (.I0(\counter[0]_i_8_n_0 ),
        .I1(\counter[0]_i_9_n_0 ),
        .I2(\counter[0]_i_10_n_0 ),
        .I3(\counter[0]_i_11_n_0 ),
        .I4(\counter[0]_i_12_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_4 
       (.I0(counter1__53_carry__1_n_6),
        .I1(counter1__53_carry__1_n_7),
        .I2(counter1__53_carry__1_n_4),
        .I3(counter1__53_carry__1_n_5),
        .I4(counter1__53_carry__0_n_5),
        .I5(counter1__53_carry__0_n_4),
        .O(\counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_5 
       (.I0(counter1__53_carry_n_4),
        .I1(counter1__53_carry_n_5),
        .I2(counter1__53_carry__0_n_6),
        .I3(counter1__53_carry__0_n_7),
        .I4(counter1__53_carry_n_7),
        .I5(counter1__53_carry_n_6),
        .O(\counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \counter[0]_i_6 
       (.I0(\counter[0]_i_13_n_0 ),
        .I1(counter1__53_carry__3_n_5),
        .I2(counter1__53_carry__3_n_0),
        .I3(\counter[0]_i_11_n_0 ),
        .I4(\counter[0]_i_14_n_0 ),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_8 
       (.I0(counter1_carry__3_n_6),
        .I1(counter1_carry__3_n_7),
        .I2(counter1_carry__3_n_4),
        .I3(counter1_carry__3_n_5),
        .I4(counter1_carry__2_n_5),
        .I5(counter1_carry__2_n_4),
        .O(\counter[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[0]_i_9 
       (.I0(counter1_carry__1_n_4),
        .I1(counter1_carry__1_n_5),
        .I2(counter1_carry__2_n_6),
        .I3(counter1_carry__2_n_7),
        .I4(counter1_carry__1_n_7),
        .I5(counter1_carry__1_n_6),
        .O(\counter[0]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .S(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO(\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3],\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,counter_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 reg_5001__107_carry
       (.CI(1'b0),
        .CO({reg_5001__107_carry_n_0,NLW_reg_5001__107_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__107_carry_i_1_n_0,reg_5001_carry__5_n_5,reg_5001_carry__5_n_6,1'b0}),
        .O({reg_5001__107_carry_n_4,reg_5001__107_carry_n_5,reg_5001__107_carry_n_6,NLW_reg_5001__107_carry_O_UNCONNECTED[0]}),
        .S({reg_5001__107_carry_i_2_n_0,reg_5001_carry__5_n_5,reg_5001_carry__5_n_6,1'b0}));
  CARRY4 reg_5001__107_carry__0
       (.CI(reg_5001__107_carry_n_0),
        .CO({reg_5001__107_carry__0_n_0,NLW_reg_5001__107_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__107_carry__0_i_1_n_0,reg_5001__107_carry__0_i_2_n_0,1'b0,reg_5001_carry__5_n_5}),
        .O({reg_5001__107_carry__0_n_4,reg_5001__107_carry__0_n_5,reg_5001__107_carry__0_n_6,reg_5001__107_carry__0_n_7}),
        .S({reg_5001__107_carry__0_i_3_n_0,reg_5001__107_carry__0_i_4_n_0,reg_5001__107_carry__0_i_5_n_0,reg_5001__107_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__107_carry__0_i_1
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__107_carry__0_i_2
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    reg_5001__107_carry__0_i_3
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_5),
        .I2(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    reg_5001__107_carry__0_i_4
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_5),
        .I2(reg_5001_carry__5_n_6),
        .O(reg_5001__107_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__107_carry__0_i_5
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    reg_5001__107_carry__0_i_6
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_6),
        .I2(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__0_i_6_n_0));
  CARRY4 reg_5001__107_carry__1
       (.CI(reg_5001__107_carry__0_n_0),
        .CO({reg_5001__107_carry__1_n_0,NLW_reg_5001__107_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__107_carry__1_i_1_n_0,1'b0,1'b0,reg_5001_carry__5_n_4}),
        .O({reg_5001__107_carry__1_n_4,reg_5001__107_carry__1_n_5,reg_5001__107_carry__1_n_6,reg_5001__107_carry__1_n_7}),
        .S({reg_5001__107_carry__1_i_2_n_0,reg_5001__107_carry__1_i_3_n_0,reg_5001_carry__5_n_6,reg_5001__107_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__107_carry__1_i_1
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h36)) 
    reg_5001__107_carry__1_i_2
       (.I0(reg_5001_carry__5_n_5),
        .I1(reg_5001_carry__5_n_4),
        .I2(reg_5001_carry__5_n_6),
        .O(reg_5001__107_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__107_carry__1_i_3
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    reg_5001__107_carry__1_i_4
       (.I0(reg_5001_carry__5_n_5),
        .I1(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry__1_i_4_n_0));
  CARRY4 reg_5001__107_carry__2
       (.CI(reg_5001__107_carry__1_n_0),
        .CO({reg_5001__107_carry__2_n_0,NLW_reg_5001__107_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__107_carry__2_i_1_n_0,reg_5001__107_carry__2_i_2_n_0,reg_5001__107_carry__2_i_3_n_0,reg_5001__107_carry__2_i_4_n_0}),
        .O({reg_5001__107_carry__2_n_4,reg_5001__107_carry__2_n_5,reg_5001__107_carry__2_n_6,reg_5001__107_carry__2_n_7}),
        .S({reg_5001__107_carry__2_i_5_n_0,reg_5001__107_carry__2_i_6_n_0,reg_5001__107_carry__2_i_7_n_0,reg_5001__107_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__107_carry__2_i_1
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__107_carry__2_i_2
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__107_carry__2_i_3
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__107_carry__2_i_4
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    reg_5001__107_carry__2_i_5
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_5),
        .I2(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    reg_5001__107_carry__2_i_6
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_5),
        .I2(reg_5001_carry__5_n_6),
        .O(reg_5001__107_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    reg_5001__107_carry__2_i_7
       (.I0(reg_5001_carry__5_n_5),
        .I1(reg_5001_carry__5_n_4),
        .I2(reg_5001_carry__5_n_6),
        .O(reg_5001__107_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    reg_5001__107_carry__2_i_8
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_5),
        .I2(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry__2_i_8_n_0));
  CARRY4 reg_5001__107_carry__3
       (.CI(reg_5001__107_carry__2_n_0),
        .CO(NLW_reg_5001__107_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,reg_5001_carry__5_n_5,reg_5001__107_carry__3_i_1_n_0}),
        .O({NLW_reg_5001__107_carry__3_O_UNCONNECTED[3],reg_5001__107_carry__3_n_5,reg_5001__107_carry__3_n_6,reg_5001__107_carry__3_n_7}),
        .S({1'b0,reg_5001_carry__5_n_4,reg_5001__107_carry__3_i_2_n_0,reg_5001__107_carry__3_i_3_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__107_carry__3_i_1
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    reg_5001__107_carry__3_i_2
       (.I0(reg_5001_carry__5_n_4),
        .I1(reg_5001_carry__5_n_6),
        .I2(reg_5001_carry__5_n_5),
        .O(reg_5001__107_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    reg_5001__107_carry__3_i_3
       (.I0(reg_5001_carry__5_n_5),
        .I1(reg_5001_carry__5_n_4),
        .I2(reg_5001_carry__5_n_6),
        .O(reg_5001__107_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__107_carry_i_1
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__107_carry_i_2
       (.I0(reg_5001_carry__5_n_6),
        .I1(reg_5001_carry__5_n_4),
        .O(reg_5001__107_carry_i_2_n_0));
  CARRY4 reg_5001__151_carry
       (.CI(1'b0),
        .CO({reg_5001__151_carry_n_0,NLW_reg_5001__151_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__151_carry_i_1_n_0,reg_5001__151_carry_i_2_n_0,reg_5001__58_carry__0_n_6,reg_5001__58_carry__0_n_7}),
        .O({reg_5001__151_carry_n_4,reg_5001__151_carry_n_5,reg_5001__151_carry_n_6,NLW_reg_5001__151_carry_O_UNCONNECTED[0]}),
        .S({reg_5001__151_carry_i_3_n_0,reg_5001__151_carry_i_4_n_0,reg_5001__151_carry_i_5_n_0,reg_5001__151_carry_i_6_n_0}));
  CARRY4 reg_5001__151_carry__0
       (.CI(reg_5001__151_carry_n_0),
        .CO({reg_5001__151_carry__0_n_0,NLW_reg_5001__151_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__151_carry__0_i_1_n_0,reg_5001__151_carry__0_i_2_n_0,reg_5001__151_carry__0_i_3_n_0,reg_5001__151_carry__0_i_4_n_0}),
        .O({reg_5001__151_carry__0_n_4,reg_5001__151_carry__0_n_5,reg_5001__151_carry__0_n_6,reg_5001__151_carry__0_n_7}),
        .S({reg_5001__151_carry__0_i_5_n_0,reg_5001__151_carry__0_i_6_n_0,reg_5001__151_carry__0_i_7_n_0,reg_5001__151_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__151_carry__0_i_1
       (.I0(reg_5001__58_carry__1_n_5),
        .I1(reg_5001__107_carry__0_n_4),
        .O(reg_5001__151_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__0_i_2
       (.I0(reg_5001__58_carry__1_n_6),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__107_carry__0_n_5),
        .O(reg_5001__151_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__151_carry__0_i_3
       (.I0(reg_5001__58_carry__1_n_7),
        .I1(reg_5001__107_carry__0_n_6),
        .O(reg_5001__151_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__0_i_4
       (.I0(reg_5001__151_carry_i_7_n_3),
        .I1(reg_5001__107_carry__0_n_7),
        .I2(reg_5001__58_carry__0_n_4),
        .O(reg_5001__151_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h78878778)) 
    reg_5001__151_carry__0_i_5
       (.I0(reg_5001__107_carry__0_n_4),
        .I1(reg_5001__58_carry__1_n_5),
        .I2(reg_5001__107_carry__1_n_7),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__1_n_4),
        .O(reg_5001__151_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    reg_5001__151_carry__0_i_6
       (.I0(reg_5001__107_carry__0_n_5),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__58_carry__1_n_6),
        .I3(reg_5001__107_carry__0_n_4),
        .I4(reg_5001__58_carry__1_n_5),
        .O(reg_5001__151_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h78878778)) 
    reg_5001__151_carry__0_i_7
       (.I0(reg_5001__107_carry__0_n_6),
        .I1(reg_5001__58_carry__1_n_7),
        .I2(reg_5001__107_carry__0_n_5),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__1_n_6),
        .O(reg_5001__151_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    reg_5001__151_carry__0_i_8
       (.I0(reg_5001__58_carry__0_n_4),
        .I1(reg_5001__107_carry__0_n_7),
        .I2(reg_5001__151_carry_i_7_n_3),
        .I3(reg_5001__107_carry__0_n_6),
        .I4(reg_5001__58_carry__1_n_7),
        .O(reg_5001__151_carry__0_i_8_n_0));
  CARRY4 reg_5001__151_carry__1
       (.CI(reg_5001__151_carry__0_n_0),
        .CO({reg_5001__151_carry__1_n_0,NLW_reg_5001__151_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__151_carry__1_i_1_n_0,reg_5001__151_carry__1_i_2_n_0,reg_5001__151_carry__1_i_3_n_0,reg_5001__151_carry__1_i_4_n_0}),
        .O({reg_5001__151_carry__1_n_4,reg_5001__151_carry__1_n_5,reg_5001__151_carry__1_n_6,reg_5001__151_carry__1_n_7}),
        .S({reg_5001__151_carry__1_i_5_n_0,reg_5001__151_carry__1_i_6_n_0,reg_5001__151_carry__1_i_7_n_0,reg_5001__151_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__151_carry__1_i_1
       (.I0(reg_5001__58_carry__2_n_5),
        .I1(reg_5001__107_carry__1_n_4),
        .O(reg_5001__151_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__151_carry__1_i_2
       (.I0(reg_5001__58_carry__2_n_6),
        .I1(reg_5001__107_carry__1_n_5),
        .O(reg_5001__151_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__1_i_3
       (.I0(reg_5001__58_carry__2_n_7),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__107_carry__1_n_6),
        .O(reg_5001__151_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__1_i_4
       (.I0(reg_5001__58_carry__1_n_4),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__107_carry__1_n_7),
        .O(reg_5001__151_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h78878778)) 
    reg_5001__151_carry__1_i_5
       (.I0(reg_5001__107_carry__1_n_4),
        .I1(reg_5001__58_carry__2_n_5),
        .I2(reg_5001__107_carry__2_n_7),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__2_n_4),
        .O(reg_5001__151_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    reg_5001__151_carry__1_i_6
       (.I0(reg_5001__107_carry__1_n_5),
        .I1(reg_5001__58_carry__2_n_6),
        .I2(reg_5001__107_carry__1_n_4),
        .I3(reg_5001__58_carry__2_n_5),
        .O(reg_5001__151_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    reg_5001__151_carry__1_i_7
       (.I0(reg_5001__107_carry__1_n_6),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__58_carry__2_n_7),
        .I3(reg_5001__107_carry__1_n_5),
        .I4(reg_5001__58_carry__2_n_6),
        .O(reg_5001__151_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h1E87E178)) 
    reg_5001__151_carry__1_i_8
       (.I0(reg_5001__107_carry__1_n_7),
        .I1(reg_5001__58_carry__1_n_4),
        .I2(reg_5001__107_carry__1_n_6),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__2_n_7),
        .O(reg_5001__151_carry__1_i_8_n_0));
  CARRY4 reg_5001__151_carry__2
       (.CI(reg_5001__151_carry__1_n_0),
        .CO({reg_5001__151_carry__2_n_0,NLW_reg_5001__151_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__151_carry__2_i_1_n_0,reg_5001__151_carry__2_i_2_n_0,reg_5001__151_carry__2_i_3_n_0,reg_5001__151_carry__2_i_4_n_0}),
        .O({reg_5001__151_carry__2_n_4,reg_5001__151_carry__2_n_5,reg_5001__151_carry__2_n_6,reg_5001__151_carry__2_n_7}),
        .S({reg_5001__151_carry__2_i_5_n_0,reg_5001__151_carry__2_i_6_n_0,reg_5001__151_carry__2_i_7_n_0,reg_5001__151_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__151_carry__2_i_1
       (.I0(reg_5001__58_carry__3_n_5),
        .I1(reg_5001__107_carry__2_n_4),
        .O(reg_5001__151_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__2_i_2
       (.I0(reg_5001__58_carry__3_n_6),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__107_carry__2_n_5),
        .O(reg_5001__151_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__2_i_3
       (.I0(reg_5001__58_carry__3_n_7),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__107_carry__2_n_6),
        .O(reg_5001__151_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__2_i_4
       (.I0(reg_5001__58_carry__2_n_4),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__107_carry__2_n_7),
        .O(reg_5001__151_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h78878778)) 
    reg_5001__151_carry__2_i_5
       (.I0(reg_5001__107_carry__2_n_4),
        .I1(reg_5001__58_carry__3_n_5),
        .I2(reg_5001__107_carry__3_n_7),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__3_n_4),
        .O(reg_5001__151_carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    reg_5001__151_carry__2_i_6
       (.I0(reg_5001__107_carry__2_n_5),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__58_carry__3_n_6),
        .I3(reg_5001__107_carry__2_n_4),
        .I4(reg_5001__58_carry__3_n_5),
        .O(reg_5001__151_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h1E87E178)) 
    reg_5001__151_carry__2_i_7
       (.I0(reg_5001__107_carry__2_n_6),
        .I1(reg_5001__58_carry__3_n_7),
        .I2(reg_5001__107_carry__2_n_5),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__3_n_6),
        .O(reg_5001__151_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h1E87E178)) 
    reg_5001__151_carry__2_i_8
       (.I0(reg_5001__107_carry__2_n_7),
        .I1(reg_5001__58_carry__2_n_4),
        .I2(reg_5001__107_carry__2_n_6),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__3_n_7),
        .O(reg_5001__151_carry__2_i_8_n_0));
  CARRY4 reg_5001__151_carry__3
       (.CI(reg_5001__151_carry__2_n_0),
        .CO(NLW_reg_5001__151_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,reg_5001__151_carry__3_i_1_n_0}),
        .O({NLW_reg_5001__151_carry__3_O_UNCONNECTED[3:2],reg_5001__151_carry__3_n_6,reg_5001__151_carry__3_n_7}),
        .S({1'b0,1'b0,reg_5001__151_carry__3_i_2_n_0,reg_5001__151_carry__3_i_3_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    reg_5001__151_carry__3_i_1
       (.I0(reg_5001__58_carry__3_n_4),
        .I1(reg_5001__151_carry_i_7_n_3),
        .I2(reg_5001__107_carry__3_n_7),
        .O(reg_5001__151_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'hC396963C)) 
    reg_5001__151_carry__3_i_2
       (.I0(reg_5001__58_carry__4_n_7),
        .I1(reg_5001__107_carry__3_n_5),
        .I2(reg_5001__58_carry__4_n_6),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__107_carry__3_n_6),
        .O(reg_5001__151_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'h1E87E178)) 
    reg_5001__151_carry__3_i_3
       (.I0(reg_5001__107_carry__3_n_7),
        .I1(reg_5001__58_carry__3_n_4),
        .I2(reg_5001__107_carry__3_n_6),
        .I3(reg_5001__151_carry_i_7_n_3),
        .I4(reg_5001__58_carry__4_n_7),
        .O(reg_5001__151_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    reg_5001__151_carry_i_1
       (.I0(reg_5001__151_carry_i_7_n_3),
        .I1(reg_5001__107_carry__0_n_7),
        .I2(reg_5001__58_carry__0_n_4),
        .O(reg_5001__151_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__151_carry_i_2
       (.I0(reg_5001__58_carry__0_n_5),
        .I1(reg_5001__107_carry_n_4),
        .O(reg_5001__151_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    reg_5001__151_carry_i_3
       (.I0(reg_5001__58_carry__0_n_4),
        .I1(reg_5001__107_carry__0_n_7),
        .I2(reg_5001__151_carry_i_7_n_3),
        .I3(reg_5001__58_carry__0_n_5),
        .I4(reg_5001__107_carry_n_4),
        .O(reg_5001__151_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__151_carry_i_4
       (.I0(reg_5001__58_carry__0_n_5),
        .I1(reg_5001__107_carry_n_4),
        .O(reg_5001__151_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__151_carry_i_5
       (.I0(reg_5001__58_carry__0_n_6),
        .I1(reg_5001__107_carry_n_5),
        .O(reg_5001__151_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__151_carry_i_6
       (.I0(reg_5001__58_carry__0_n_7),
        .I1(reg_5001__107_carry_n_6),
        .O(reg_5001__151_carry_i_6_n_0));
  CARRY4 reg_5001__151_carry_i_7
       (.CI(reg_5001_carry__5_n_0),
        .CO({NLW_reg_5001__151_carry_i_7_CO_UNCONNECTED[3:1],reg_5001__151_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reg_5001__151_carry_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 reg_5001__201_carry
       (.CI(1'b0),
        .CO({reg_5001__201_carry_n_0,NLW_reg_5001__201_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(counter_reg[3:0]),
        .O({reg_5001__201_carry_n_4,reg_5001__201_carry_n_5,reg_5001__201_carry_n_6,NLW_reg_5001__201_carry_O_UNCONNECTED[0]}),
        .S({reg_5001__201_carry_i_1_n_0,reg_5001__201_carry_i_2_n_0,reg_5001__201_carry_i_3_n_0,reg_5001__201_carry_i_4_n_0}));
  CARRY4 reg_5001__201_carry__0
       (.CI(reg_5001__201_carry_n_0),
        .CO({reg_5001__201_carry__0_n_0,NLW_reg_5001__201_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[7:4]),
        .O({reg_5001__201_carry__0_n_4,reg_5001__201_carry__0_n_5,reg_5001__201_carry__0_n_6,reg_5001__201_carry__0_n_7}),
        .S({reg_5001__201_carry__0_i_1_n_0,reg_5001__201_carry__0_i_2_n_0,reg_5001__201_carry__0_i_3_n_0,reg_5001__201_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__0_i_1
       (.I0(counter_reg[7]),
        .I1(reg_5001__151_carry_n_4),
        .O(reg_5001__201_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__0_i_2
       (.I0(counter_reg[6]),
        .I1(reg_5001__151_carry_n_5),
        .O(reg_5001__201_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__0_i_3
       (.I0(counter_reg[5]),
        .I1(reg_5001__151_carry_n_6),
        .O(reg_5001__201_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    reg_5001__201_carry__0_i_4
       (.I0(counter_reg[4]),
        .I1(reg_5001__107_carry_n_6),
        .I2(reg_5001__58_carry__0_n_7),
        .O(reg_5001__201_carry__0_i_4_n_0));
  CARRY4 reg_5001__201_carry__1
       (.CI(reg_5001__201_carry__0_n_0),
        .CO({reg_5001__201_carry__1_n_0,NLW_reg_5001__201_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[11:8]),
        .O({reg_5001__201_carry__1_n_4,reg_5001__201_carry__1_n_5,reg_5001__201_carry__1_n_6,reg_5001__201_carry__1_n_7}),
        .S({reg_5001__201_carry__1_i_1_n_0,reg_5001__201_carry__1_i_2_n_0,reg_5001__201_carry__1_i_3_n_0,reg_5001__201_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__1_i_1
       (.I0(counter_reg[11]),
        .I1(reg_5001__151_carry__0_n_4),
        .O(reg_5001__201_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__1_i_2
       (.I0(counter_reg[10]),
        .I1(reg_5001__151_carry__0_n_5),
        .O(reg_5001__201_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__1_i_3
       (.I0(counter_reg[9]),
        .I1(reg_5001__151_carry__0_n_6),
        .O(reg_5001__201_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__1_i_4
       (.I0(counter_reg[8]),
        .I1(reg_5001__151_carry__0_n_7),
        .O(reg_5001__201_carry__1_i_4_n_0));
  CARRY4 reg_5001__201_carry__2
       (.CI(reg_5001__201_carry__1_n_0),
        .CO({reg_5001__201_carry__2_n_0,NLW_reg_5001__201_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[15:12]),
        .O({reg_5001__201_carry__2_n_4,reg_5001__201_carry__2_n_5,reg_5001__201_carry__2_n_6,reg_5001__201_carry__2_n_7}),
        .S({reg_5001__201_carry__2_i_1_n_0,reg_5001__201_carry__2_i_2_n_0,reg_5001__201_carry__2_i_3_n_0,reg_5001__201_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__2_i_1
       (.I0(counter_reg[15]),
        .I1(reg_5001__151_carry__1_n_4),
        .O(reg_5001__201_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__2_i_2
       (.I0(counter_reg[14]),
        .I1(reg_5001__151_carry__1_n_5),
        .O(reg_5001__201_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__2_i_3
       (.I0(counter_reg[13]),
        .I1(reg_5001__151_carry__1_n_6),
        .O(reg_5001__201_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__2_i_4
       (.I0(counter_reg[12]),
        .I1(reg_5001__151_carry__1_n_7),
        .O(reg_5001__201_carry__2_i_4_n_0));
  CARRY4 reg_5001__201_carry__3
       (.CI(reg_5001__201_carry__2_n_0),
        .CO({reg_5001__201_carry__3_n_0,NLW_reg_5001__201_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[19:16]),
        .O({reg_5001__201_carry__3_n_4,reg_5001__201_carry__3_n_5,reg_5001__201_carry__3_n_6,reg_5001__201_carry__3_n_7}),
        .S({reg_5001__201_carry__3_i_1_n_0,reg_5001__201_carry__3_i_2_n_0,reg_5001__201_carry__3_i_3_n_0,reg_5001__201_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__3_i_1
       (.I0(counter_reg[19]),
        .I1(reg_5001__151_carry__2_n_4),
        .O(reg_5001__201_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__3_i_2
       (.I0(counter_reg[18]),
        .I1(reg_5001__151_carry__2_n_5),
        .O(reg_5001__201_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__3_i_3
       (.I0(counter_reg[17]),
        .I1(reg_5001__151_carry__2_n_6),
        .O(reg_5001__201_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__3_i_4
       (.I0(counter_reg[16]),
        .I1(reg_5001__151_carry__2_n_7),
        .O(reg_5001__201_carry__3_i_4_n_0));
  CARRY4 reg_5001__201_carry__4
       (.CI(reg_5001__201_carry__3_n_0),
        .CO(NLW_reg_5001__201_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,counter_reg[20]}),
        .O({NLW_reg_5001__201_carry__4_O_UNCONNECTED[3:2],reg_5001__201_carry__4_n_6,reg_5001__201_carry__4_n_7}),
        .S({1'b0,1'b0,reg_5001__201_carry__4_i_1_n_0,reg_5001__201_carry__4_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__4_i_1
       (.I0(counter_reg[21]),
        .I1(reg_5001__151_carry__3_n_6),
        .O(reg_5001__201_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry__4_i_2
       (.I0(counter_reg[20]),
        .I1(reg_5001__151_carry__3_n_7),
        .O(reg_5001__201_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry_i_1
       (.I0(counter_reg[3]),
        .I1(reg_5001__58_carry_n_4),
        .O(reg_5001__201_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry_i_2
       (.I0(counter_reg[2]),
        .I1(reg_5001__58_carry_n_5),
        .O(reg_5001__201_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    reg_5001__201_carry_i_3
       (.I0(counter_reg[1]),
        .I1(reg_5001__58_carry_n_6),
        .O(reg_5001__201_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__201_carry_i_4
       (.I0(counter_reg[0]),
        .O(reg_5001__201_carry_i_4_n_0));
  CARRY4 reg_5001__264_carry
       (.CI(1'b0),
        .CO({reg_5001__264_carry_n_0,NLW_reg_5001__264_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b1,1'b0,1'b1,1'b0}),
        .O({reg_5001__264_carry_n_4,reg_5001__264_carry_n_5,reg_5001__264_carry_n_6,reg_5001__264_carry_n_7}),
        .S({reg_5001__264_carry_i_1_n_0,reg_5001__201_carry_n_4,reg_5001__264_carry_i_2_n_0,reg_5001__201_carry_n_6}));
  CARRY4 reg_5001__264_carry__0
       (.CI(reg_5001__264_carry_n_0),
        .CO({reg_5001__264_carry__0_n_0,NLW_reg_5001__264_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b0,1'b0}),
        .O({reg_5001__264_carry__0_n_4,reg_5001__264_carry__0_n_5,reg_5001__264_carry__0_n_6,reg_5001__264_carry__0_n_7}),
        .S({reg_5001__264_carry__0_i_1_n_0,reg_5001__264_carry__0_i_2_n_0,reg_5001__201_carry__0_n_5,reg_5001__201_carry__0_n_6}));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry__0_i_1
       (.I0(reg_5001__201_carry__1_n_7),
        .O(reg_5001__264_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry__0_i_2
       (.I0(reg_5001__201_carry__0_n_4),
        .O(reg_5001__264_carry__0_i_2_n_0));
  CARRY4 reg_5001__264_carry__1
       (.CI(reg_5001__264_carry__0_n_0),
        .CO({reg_5001__264_carry__1_n_0,NLW_reg_5001__264_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({reg_5001__264_carry__1_n_4,reg_5001__264_carry__1_n_5,reg_5001__264_carry__1_n_6,reg_5001__264_carry__1_n_7}),
        .S({reg_5001__264_carry__1_i_1_n_0,reg_5001__201_carry__1_n_4,reg_5001__201_carry__1_n_5,reg_5001__201_carry__1_n_6}));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry__1_i_1
       (.I0(reg_5001__201_carry__2_n_7),
        .O(reg_5001__264_carry__1_i_1_n_0));
  CARRY4 reg_5001__264_carry__2
       (.CI(reg_5001__264_carry__1_n_0),
        .CO({reg_5001__264_carry__2_n_0,NLW_reg_5001__264_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b0}),
        .O({reg_5001__264_carry__2_n_4,reg_5001__264_carry__2_n_5,reg_5001__264_carry__2_n_6,reg_5001__264_carry__2_n_7}),
        .S({reg_5001__201_carry__3_n_7,reg_5001__264_carry__2_i_1_n_0,reg_5001__201_carry__2_n_5,reg_5001__201_carry__2_n_6}));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry__2_i_1
       (.I0(reg_5001__201_carry__2_n_4),
        .O(reg_5001__264_carry__2_i_1_n_0));
  CARRY4 reg_5001__264_carry__3
       (.CI(reg_5001__264_carry__2_n_0),
        .CO({reg_5001__264_carry__3_n_0,NLW_reg_5001__264_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({reg_5001__264_carry__3_n_4,reg_5001__264_carry__3_n_5,reg_5001__264_carry__3_n_6,reg_5001__264_carry__3_n_7}),
        .S({reg_5001__201_carry__4_n_7,reg_5001__201_carry__3_n_4,reg_5001__264_carry__3_i_1_n_0,reg_5001__264_carry__3_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry__3_i_1
       (.I0(reg_5001__201_carry__3_n_5),
        .O(reg_5001__264_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry__3_i_2
       (.I0(reg_5001__201_carry__3_n_6),
        .O(reg_5001__264_carry__3_i_2_n_0));
  CARRY4 reg_5001__264_carry__4
       (.CI(reg_5001__264_carry__3_n_0),
        .CO({NLW_reg_5001__264_carry__4_CO_UNCONNECTED[3:1],reg_5001__264_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_reg_5001__264_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,reg_5001__264_carry__4_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry__4_i_1
       (.I0(reg_5001__201_carry__4_n_6),
        .O(reg_5001__264_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry_i_1
       (.I0(reg_5001__201_carry__0_n_7),
        .O(reg_5001__264_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reg_5001__264_carry_i_2
       (.I0(reg_5001__201_carry_n_5),
        .O(reg_5001__264_carry_i_2_n_0));
  CARRY4 reg_5001__58_carry
       (.CI(1'b0),
        .CO({reg_5001__58_carry_n_0,NLW_reg_5001__58_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__58_carry_i_1_n_0,reg_5001_carry__4_n_4,reg_5001_carry__4_n_5,1'b0}),
        .O({reg_5001__58_carry_n_4,reg_5001__58_carry_n_5,reg_5001__58_carry_n_6,NLW_reg_5001__58_carry_O_UNCONNECTED[0]}),
        .S({reg_5001__58_carry_i_2_n_0,reg_5001_carry__4_n_4,reg_5001_carry__4_n_5,1'b0}));
  CARRY4 reg_5001__58_carry__0
       (.CI(reg_5001__58_carry_n_0),
        .CO({reg_5001__58_carry__0_n_0,NLW_reg_5001__58_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__58_carry__0_i_1_n_0,reg_5001__58_carry__0_i_2_n_0,1'b0,reg_5001_carry__4_n_4}),
        .O({reg_5001__58_carry__0_n_4,reg_5001__58_carry__0_n_5,reg_5001__58_carry__0_n_6,reg_5001__58_carry__0_n_7}),
        .S({reg_5001__58_carry__0_i_3_n_0,reg_5001__58_carry__0_i_4_n_0,reg_5001__58_carry__0_i_5_n_0,reg_5001__58_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry__0_i_1
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__58_carry__0_i_2
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    reg_5001__58_carry__0_i_3
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .I2(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    reg_5001__58_carry__0_i_4
       (.I0(reg_5001_carry__5_n_7),
        .I1(reg_5001_carry__4_n_4),
        .I2(reg_5001_carry__4_n_5),
        .O(reg_5001__58_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry__0_i_5
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    reg_5001__58_carry__0_i_6
       (.I0(reg_5001_carry__5_n_7),
        .I1(reg_5001_carry__4_n_5),
        .I2(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__0_i_6_n_0));
  CARRY4 reg_5001__58_carry__1
       (.CI(reg_5001__58_carry__0_n_0),
        .CO({reg_5001__58_carry__1_n_0,NLW_reg_5001__58_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__58_carry__1_i_1_n_0,1'b0,1'b0,reg_5001_carry__5_n_7}),
        .O({reg_5001__58_carry__1_n_4,reg_5001__58_carry__1_n_5,reg_5001__58_carry__1_n_6,reg_5001__58_carry__1_n_7}),
        .S({reg_5001__58_carry__1_i_2_n_0,reg_5001__58_carry__1_i_3_n_0,reg_5001_carry__4_n_5,reg_5001__58_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__58_carry__1_i_1
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    reg_5001__58_carry__1_i_2
       (.I0(reg_5001_carry__5_n_7),
        .I1(reg_5001_carry__4_n_4),
        .I2(reg_5001_carry__4_n_5),
        .O(reg_5001__58_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry__1_i_3
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    reg_5001__58_carry__1_i_4
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__1_i_4_n_0));
  CARRY4 reg_5001__58_carry__2
       (.CI(reg_5001__58_carry__1_n_0),
        .CO({reg_5001__58_carry__2_n_0,NLW_reg_5001__58_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({reg_5001__58_carry__2_i_1_n_0,reg_5001__58_carry__2_i_2_n_0,reg_5001__58_carry__2_i_3_n_0,reg_5001__58_carry__2_i_4_n_0}),
        .O({reg_5001__58_carry__2_n_4,reg_5001__58_carry__2_n_5,reg_5001__58_carry__2_n_6,reg_5001__58_carry__2_n_7}),
        .S({reg_5001__58_carry__2_i_5_n_0,reg_5001__58_carry__2_i_6_n_0,reg_5001__58_carry__2_i_7_n_0,reg_5001__58_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry__2_i_1
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__58_carry__2_i_2
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__58_carry__2_i_3
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry__2_i_4
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    reg_5001__58_carry__2_i_5
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .I2(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    reg_5001__58_carry__2_i_6
       (.I0(reg_5001_carry__5_n_7),
        .I1(reg_5001_carry__4_n_4),
        .I2(reg_5001_carry__4_n_5),
        .O(reg_5001__58_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    reg_5001__58_carry__2_i_7
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .I2(reg_5001_carry__4_n_5),
        .O(reg_5001__58_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    reg_5001__58_carry__2_i_8
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .I2(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__2_i_8_n_0));
  CARRY4 reg_5001__58_carry__3
       (.CI(reg_5001__58_carry__2_n_0),
        .CO({reg_5001__58_carry__3_n_0,NLW_reg_5001__58_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,reg_5001_carry__4_n_4,reg_5001__58_carry__3_i_1_n_0}),
        .O({reg_5001__58_carry__3_n_4,reg_5001__58_carry__3_n_5,reg_5001__58_carry__3_n_6,reg_5001__58_carry__3_n_7}),
        .S({reg_5001_carry__4_n_5,reg_5001_carry__5_n_7,reg_5001__58_carry__3_i_2_n_0,reg_5001__58_carry__3_i_3_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    reg_5001__58_carry__3_i_1
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    reg_5001__58_carry__3_i_2
       (.I0(reg_5001_carry__5_n_7),
        .I1(reg_5001_carry__4_n_5),
        .I2(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    reg_5001__58_carry__3_i_3
       (.I0(reg_5001_carry__4_n_4),
        .I1(reg_5001_carry__5_n_7),
        .I2(reg_5001_carry__4_n_5),
        .O(reg_5001__58_carry__3_i_3_n_0));
  CARRY4 reg_5001__58_carry__4
       (.CI(reg_5001__58_carry__3_n_0),
        .CO(NLW_reg_5001__58_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_reg_5001__58_carry__4_O_UNCONNECTED[3:2],reg_5001__58_carry__4_n_6,reg_5001__58_carry__4_n_7}),
        .S({1'b0,1'b0,reg_5001__58_carry__4_i_1_n_0,reg_5001__58_carry__4_i_2_n_0}));
  LUT3 #(
    .INIT(8'h9C)) 
    reg_5001__58_carry__4_i_1
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .I2(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry__4_i_2
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__4_n_4),
        .O(reg_5001__58_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry_i_1
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001__58_carry_i_2
       (.I0(reg_5001_carry__4_n_5),
        .I1(reg_5001_carry__5_n_7),
        .O(reg_5001__58_carry_i_2_n_0));
  CARRY4 reg_5001_carry
       (.CI(1'b0),
        .CO({reg_5001_carry_n_0,NLW_reg_5001_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({counter_reg[4:2],1'b0}),
        .O(NLW_reg_5001_carry_O_UNCONNECTED[3:0]),
        .S({reg_5001_carry_i_1_n_0,reg_5001_carry_i_2_n_0,reg_5001_carry_i_3_n_0,counter_reg[1]}));
  CARRY4 reg_5001_carry__0
       (.CI(reg_5001_carry_n_0),
        .CO({reg_5001_carry__0_n_0,NLW_reg_5001_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[8:5]),
        .O(NLW_reg_5001_carry__0_O_UNCONNECTED[3:0]),
        .S({reg_5001_carry__0_i_1_n_0,reg_5001_carry__0_i_2_n_0,reg_5001_carry__0_i_3_n_0,reg_5001_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__0_i_1
       (.I0(counter_reg[8]),
        .I1(counter_reg[6]),
        .O(reg_5001_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__0_i_2
       (.I0(counter_reg[7]),
        .I1(counter_reg[5]),
        .O(reg_5001_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__0_i_3
       (.I0(counter_reg[6]),
        .I1(counter_reg[4]),
        .O(reg_5001_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__0_i_4
       (.I0(counter_reg[5]),
        .I1(counter_reg[3]),
        .O(reg_5001_carry__0_i_4_n_0));
  CARRY4 reg_5001_carry__1
       (.CI(reg_5001_carry__0_n_0),
        .CO({reg_5001_carry__1_n_0,NLW_reg_5001_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[12:9]),
        .O(NLW_reg_5001_carry__1_O_UNCONNECTED[3:0]),
        .S({reg_5001_carry__1_i_1_n_0,reg_5001_carry__1_i_2_n_0,reg_5001_carry__1_i_3_n_0,reg_5001_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__1_i_1
       (.I0(counter_reg[12]),
        .I1(counter_reg[10]),
        .O(reg_5001_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__1_i_2
       (.I0(counter_reg[11]),
        .I1(counter_reg[9]),
        .O(reg_5001_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__1_i_3
       (.I0(counter_reg[10]),
        .I1(counter_reg[8]),
        .O(reg_5001_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__1_i_4
       (.I0(counter_reg[9]),
        .I1(counter_reg[7]),
        .O(reg_5001_carry__1_i_4_n_0));
  CARRY4 reg_5001_carry__2
       (.CI(reg_5001_carry__1_n_0),
        .CO({reg_5001_carry__2_n_0,NLW_reg_5001_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[16:13]),
        .O(NLW_reg_5001_carry__2_O_UNCONNECTED[3:0]),
        .S({reg_5001_carry__2_i_1_n_0,reg_5001_carry__2_i_2_n_0,reg_5001_carry__2_i_3_n_0,reg_5001_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__2_i_1
       (.I0(counter_reg[16]),
        .I1(counter_reg[14]),
        .O(reg_5001_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__2_i_2
       (.I0(counter_reg[15]),
        .I1(counter_reg[13]),
        .O(reg_5001_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__2_i_3
       (.I0(counter_reg[14]),
        .I1(counter_reg[12]),
        .O(reg_5001_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__2_i_4
       (.I0(counter_reg[13]),
        .I1(counter_reg[11]),
        .O(reg_5001_carry__2_i_4_n_0));
  CARRY4 reg_5001_carry__3
       (.CI(reg_5001_carry__2_n_0),
        .CO({reg_5001_carry__3_n_0,NLW_reg_5001_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[20:17]),
        .O(NLW_reg_5001_carry__3_O_UNCONNECTED[3:0]),
        .S({reg_5001_carry__3_i_1_n_0,reg_5001_carry__3_i_2_n_0,reg_5001_carry__3_i_3_n_0,reg_5001_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__3_i_1
       (.I0(counter_reg[20]),
        .I1(counter_reg[18]),
        .O(reg_5001_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__3_i_2
       (.I0(counter_reg[19]),
        .I1(counter_reg[17]),
        .O(reg_5001_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__3_i_3
       (.I0(counter_reg[18]),
        .I1(counter_reg[16]),
        .O(reg_5001_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__3_i_4
       (.I0(counter_reg[17]),
        .I1(counter_reg[15]),
        .O(reg_5001_carry__3_i_4_n_0));
  CARRY4 reg_5001_carry__4
       (.CI(reg_5001_carry__3_n_0),
        .CO({reg_5001_carry__4_n_0,NLW_reg_5001_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(counter_reg[24:21]),
        .O({reg_5001_carry__4_n_4,reg_5001_carry__4_n_5,NLW_reg_5001_carry__4_O_UNCONNECTED[1:0]}),
        .S({reg_5001_carry__4_i_1_n_0,reg_5001_carry__4_i_2_n_0,reg_5001_carry__4_i_3_n_0,reg_5001_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__4_i_1
       (.I0(counter_reg[24]),
        .I1(counter_reg[22]),
        .O(reg_5001_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__4_i_2
       (.I0(counter_reg[23]),
        .I1(counter_reg[21]),
        .O(reg_5001_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__4_i_3
       (.I0(counter_reg[22]),
        .I1(counter_reg[20]),
        .O(reg_5001_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__4_i_4
       (.I0(counter_reg[21]),
        .I1(counter_reg[19]),
        .O(reg_5001_carry__4_i_4_n_0));
  CARRY4 reg_5001_carry__5
       (.CI(reg_5001_carry__4_n_0),
        .CO({reg_5001_carry__5_n_0,NLW_reg_5001_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_reg[26:25]}),
        .O({reg_5001_carry__5_n_4,reg_5001_carry__5_n_5,reg_5001_carry__5_n_6,reg_5001_carry__5_n_7}),
        .S({counter_reg[26:25],reg_5001_carry__5_i_1_n_0,reg_5001_carry__5_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__5_i_1
       (.I0(counter_reg[26]),
        .I1(counter_reg[24]),
        .O(reg_5001_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry__5_i_2
       (.I0(counter_reg[25]),
        .I1(counter_reg[23]),
        .O(reg_5001_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry_i_1
       (.I0(counter_reg[4]),
        .I1(counter_reg[2]),
        .O(reg_5001_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry_i_2
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .O(reg_5001_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_5001_carry_i_3
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .O(reg_5001_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reg_500_i_10
       (.I0(reg_5001__264_carry__2_n_4),
        .I1(reg_5001__264_carry__2_n_5),
        .I2(reg_5001__264_carry__3_n_6),
        .I3(reg_5001__264_carry__3_n_7),
        .I4(reg_5001__264_carry__2_n_7),
        .I5(reg_5001__264_carry__2_n_6),
        .O(reg_500_i_10_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    reg_500_i_2
       (.I0(reg_500_i_6_n_0),
        .I1(reg_500_i_7_n_0),
        .I2(reg_500_i_8_n_0),
        .I3(reg_500_i_9_n_0),
        .O(reg_500_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reg_500_i_3
       (.I0(reg_5001__264_carry__1_n_6),
        .I1(reg_5001__264_carry__1_n_7),
        .I2(reg_5001__264_carry__1_n_4),
        .I3(reg_5001__264_carry__1_n_5),
        .I4(reg_5001__264_carry__0_n_5),
        .I5(reg_5001__264_carry__0_n_4),
        .O(reg_500_reg_2));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reg_500_i_4
       (.I0(reg_5001__264_carry_n_4),
        .I1(reg_5001__264_carry_n_5),
        .I2(reg_5001__264_carry__0_n_6),
        .I3(reg_5001__264_carry__0_n_7),
        .I4(reg_5001__264_carry_n_7),
        .I5(reg_5001__264_carry_n_6),
        .O(reg_500_reg_3));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    reg_500_i_5
       (.I0(reg_5001__264_carry__4_n_3),
        .I1(btnU_IBUF),
        .I2(reg_5001__264_carry__3_n_5),
        .I3(reg_5001__264_carry__3_n_4),
        .I4(counter_reg[0]),
        .I5(reg_500_i_10_n_0),
        .O(reg_500_reg_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reg_500_i_6
       (.I0(reg_5001__201_carry__1_n_5),
        .I1(reg_5001__201_carry__1_n_6),
        .I2(reg_5001__201_carry__2_n_7),
        .I3(reg_5001__201_carry__1_n_4),
        .I4(reg_5001__201_carry__0_n_4),
        .I5(reg_5001__201_carry__1_n_7),
        .O(reg_500_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reg_500_i_7
       (.I0(reg_5001__201_carry__0_n_7),
        .I1(reg_5001__201_carry_n_4),
        .I2(reg_5001__201_carry__0_n_5),
        .I3(reg_5001__201_carry__0_n_6),
        .I4(reg_5001__201_carry_n_6),
        .I5(reg_5001__201_carry_n_5),
        .O(reg_500_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reg_500_i_8
       (.I0(reg_5001__201_carry__3_n_7),
        .I1(reg_5001__201_carry__2_n_4),
        .I2(reg_5001__201_carry__3_n_5),
        .I3(reg_5001__201_carry__3_n_6),
        .I4(reg_5001__201_carry__2_n_6),
        .I5(reg_5001__201_carry__2_n_5),
        .O(reg_500_i_8_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    reg_500_i_9
       (.I0(counter_reg[0]),
        .I1(reg_5001__201_carry__4_n_7),
        .I2(reg_5001__201_carry__3_n_4),
        .I3(btnU_IBUF),
        .I4(reg_5001__264_carry__4_n_3),
        .O(reg_500_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_500_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_500_reg_4),
        .Q(CLK),
        .R(1'b0));
endmodule

module display
   (Q,
    CLK);
  output [3:0]Q;
  input CLK;

  wire CLK;
  wire [3:0]Q;
  wire [3:0]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6800)) 
    \activate[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \activate[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \activate[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \activate[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \activate_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \activate_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \activate_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \activate_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module stopwatch
   (an,
    clk,
    btnU_IBUF);
  output [3:0]an;
  input clk;
  input btnU_IBUF;

  wire [3:0]an;
  wire btnU_IBUF;
  wire clk;
  wire clk__n_1;
  wire clk__n_2;
  wire clk__n_3;
  wire clk__n_4;
  wire clk_deb;
  wire reg_500_i_1_n_0;

  clock clk_
       (.CLK(clk_deb),
        .btnU_IBUF(btnU_IBUF),
        .clk(clk),
        .reg_500_reg_0(clk__n_1),
        .reg_500_reg_1(clk__n_2),
        .reg_500_reg_2(clk__n_3),
        .reg_500_reg_3(clk__n_4),
        .reg_500_reg_4(reg_500_i_1_n_0));
  display dis_
       (.CLK(clk_deb),
        .Q(an));
  LUT5 #(
    .INIT(32'h1555EAAA)) 
    reg_500_i_1
       (.I0(clk__n_1),
        .I1(clk__n_3),
        .I2(clk__n_4),
        .I3(clk__n_2),
        .I4(clk_deb),
        .O(reg_500_i_1_n_0));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
