module contador (enable, clk, reset, mode, D, load, rco, Q);

input enable;
input clk;
input reset;
output load;
output rco;
input [1:0] mode;
input [3:0] D;
output [3:0] Q;

wire vdd = 1'b1;
wire gnd = 1'b0;

	OAI22X1 OAI22X1_1 ( .A(reset), .B(_34_), .C(_35_), .D(_6_), .Y(_1_) );
	INVX1 INVX1_1 ( .A(_26_), .Y(_36_) );
	INVX1 INVX1_2 ( .A(_30_), .Y(_37_) );
	OAI21X1 OAI21X1_1 ( .A(_36_), .B(_37_), .C(_10_), .Y(_38_) );
	INVX1 INVX1_3 ( .A(_11_), .Y(_39_) );
	NOR2X1 NOR2X1_1 ( .A(enable), .B(_10_), .Y(_40_) );
	OAI21X1 OAI21X1_2 ( .A(_40_), .B(_39_), .C(_7_), .Y(_41_) );
	NOR2X1 NOR2X1_2 ( .A(reset), .B(_34_), .Y(_42_) );
	NAND2X1 NAND2X1_1 ( .A(D[0]), .B(_42_), .Y(_43_) );
	NAND3X1 NAND3X1_1 ( .A(_41_), .B(_43_), .C(_38_), .Y(_0__0_) );
	XNOR2X1 XNOR2X1_1 ( .A(_63__1_), .B(_63__0_), .Y(_44_) );
	AOI21X1 AOI21X1_1 ( .A(_44_), .B(enable), .C(_6_), .Y(_45_) );
	OAI21X1 OAI21X1_3 ( .A(enable), .B(_62__1_), .C(_45_), .Y(_46_) );
	OAI21X1 OAI21X1_4 ( .A(_36_), .B(_37_), .C(_44_), .Y(_47_) );
	NAND2X1 NAND2X1_2 ( .A(D[1]), .B(_42_), .Y(_48_) );
	NAND3X1 NAND3X1_2 ( .A(_47_), .B(_48_), .C(_46_), .Y(_0__1_) );
	NOR2X1 NOR2X1_3 ( .A(_17_), .B(_19_), .Y(_20_) );
	OAI21X1 OAI21X1_5 ( .A(_15_), .B(_49_), .C(_50_), .Y(_50_) );
	NAND3X1 NAND3X1_3 ( .A(_54_), .B(_55_), .C(_53_), .Y(_51_) );
	AOI21X1 AOI21X1_2 ( .A(_50_), .B(_51_), .C(_6_), .Y(_52_) );
	OAI21X1 OAI21X1_6 ( .A(_49_), .B(_49_), .C(_51_), .Y(_53_) );
	NAND2X1 NAND2X1_3 ( .A(enable), .B(_62__0_), .Y(_54_) );
	NAND2X1 NAND2X1_4 ( .A(_64_), .B(_8_), .Y(_55_) );
	AOI22X1 AOI22X1_1 ( .A(D[2]), .B(_42_), .C(_37_), .D(_36_), .Y(_56_) );
	NAND3X1 NAND3X1_4 ( .A(_36_), .B(_56_), .C(_53_), .Y(_0__2_) );
	NAND3X1 NAND3X1_5 ( .A(_62__1_), .B(_62__0_), .C(_62__2_), .Y(_57_) );
	NAND3X1 NAND3X1_6 ( .A(_56_), .B(_60_), .C(_61_), .Y(_58_) );
	XNOR2X1 XNOR2X1_2 ( .A(_57_), .B(_63__3_), .Y(_59_) );
	AOI21X1 AOI21X1_3 ( .A(_8_), .B(_22_), .C(_6_), .Y(_60_) );
	OAI21X1 OAI21X1_7 ( .A(_8_), .B(_59_), .C(_36_), .Y(_61_) );
	AOI22X1 AOI22X1_2 ( .A(D[3]), .B(_42_), .C(_37_), .D(_37_), .Y(_62_) );
	NAND3X1 NAND3X1_7 ( .A(_3_), .B(_4_), .C(_5_), .Y(_6_) );
	BUFX2 BUFX2_1 ( .A(_62__0_), .Y(Q[0]) );
	BUFX2 BUFX2_2 ( .A(_62__1_), .Y(Q[1]) );
	BUFX2 BUFX2_3 ( .A(_62__2_), .Y(Q[2]) );
	BUFX2 BUFX2_4 ( .A(_62__3_), .Y(Q[3]) );
	BUFX2 BUFX2_5 ( .A(_64_), .Y(load) );
	BUFX2 BUFX2_6 ( .A(_65_), .Y(rco) );
	DFFPOSX1 DFFPOSX1_1 ( .CLK(clk), .D(_0__0_), .Q(_62__0_) );
	DFFPOSX1 DFFPOSX1_2 ( .CLK(clk), .D(_0__1_), .Q(_62__1_) );
	DFFPOSX1 DFFPOSX1_3 ( .CLK(clk), .D(_0__2_), .Q(_62__2_) );
	DFFPOSX1 DFFPOSX1_4 ( .CLK(clk), .D(_0__3_), .Q(_62__3_) );
	DFFPOSX1 DFFPOSX1_5 ( .CLK(clk), .D(_1_), .Q(_63_) );
	DFFPOSX1 DFFPOSX1_6 ( .CLK(clk), .D(_2_), .Q(_64_) );
	INVX1 INVX1_4 ( .A(mode[1]), .Y(_3_) );
	INVX1 INVX1_5 ( .A(reset), .Y(_4_) );
	INVX1 INVX1_6 ( .A(_6_), .Y(_7_) );
	NAND3X1 NAND3X1_8 ( .A(mode[0]), .B(_3_), .C(_5_), .Y(_27_) );
	INVX1 INVX1_7 ( .A(_62__0_), .Y(_10_) );
	INVX1 INVX1_8 ( .A(_62__3_), .Y(_12_) );
	NAND2X1 NAND2X1_5 ( .A(enable), .B(_10_), .Y(_11_) );
	INVX1 INVX1_9 ( .A(_18_), .Y(_19_) );
	NAND2X1 NAND2X1_6 ( .A(_62__1_), .B(_62__2_), .Y(_13_) );
	NAND3X1 NAND3X1_9 ( .A(_20_), .B(_28_), .C(_24_), .Y(_12_) );
	OAI21X1 OAI21X1_8 ( .A(_8_), .B(_58_), .C(_59_), .Y(_13_) );
	NAND2X1 NAND2X1_7 ( .A(_7_), .B(_15_), .Y(_14_) );
	INVX1 INVX1_10 ( .A(_62__1_), .Y(_25_) );
	INVX1 INVX1_11 ( .A(_63__2_), .Y(_16_) );
	NAND3X1 NAND3X1_10 ( .A(mode[1]), .B(_4_), .C(_5_), .Y(_30_) );
	OAI21X1 OAI21X1_9 ( .A(_11_), .B(_14_), .C(_9_), .Y(_18_) );
	AND2X2 AND2X2_1 ( .A(_17_), .B(_18_), .Y(_19_) );
	NOR2X1 NOR2X1_4 ( .A(_26_), .B(_27_), .Y(_20_) );
	NAND3X1 NAND3X1_11 ( .A(_31_), .B(_20_), .C(_32_), .Y(_21_) );
	INVX1 INVX1_12 ( .A(_63__3_), .Y(_22_) );
	NAND2X1 NAND2X1_8 ( .A(_62__3_), .B(_17_), .Y(_21_) );
	NAND2X1 NAND2X1_9 ( .A(_21_), .B(_23_), .Y(_24_) );
	NAND2X1 NAND2X1_10 ( .A(_62__0_), .B(_25_), .Y(_25_) );
	NAND3X1 NAND3X1_12 ( .A(_16_), .B(_33_), .C(_29_), .Y(_2_) );
	NOR2X1 NOR2X1_5 ( .A(_22_), .B(_30_), .Y(_27_) );
	NAND3X1 NAND3X1_13 ( .A(_19_), .B(_27_), .C(_24_), .Y(_28_) );
	INVX1 INVX1_13 ( .A(_20_), .Y(_29_) );
	NAND3X1 NAND3X1_14 ( .A(mode[1]), .B(_4_), .C(_5_), .Y(_30_) );
	NOR2X1 NOR2X1_6 ( .A(_30_), .B(_29_), .Y(_31_) );
	XOR2X1 XOR2X1_1 ( .A(_18_), .B(_22_), .Y(_32_) );
	NAND3X1 NAND3X1_15 ( .A(_19_), .B(_32_), .C(_31_), .Y(_33_) );
	NAND3X1 NAND3X1_16 ( .A(_14_), .B(_33_), .C(_28_), .Y(_2_) );
	NAND2X1 NAND2X1_11 ( .A(mode[1]), .B(mode[0]), .Y(_34_) );
	NAND2X1 NAND2X1_12 ( .A(_63_), .B(_8_), .Y(_35_) );
endmodule