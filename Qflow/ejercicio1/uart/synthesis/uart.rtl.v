module uart ( gnd, vdd, reset, txclk, ld_tx_data, tx_data, tx_enable, rxclk, uld_rx_data, rx_enable, rx_in, tx_out, tx_empty, rx_data, rx_empty);

input gnd, vdd;
input reset;
input txclk;
input ld_tx_data;
input tx_enable;
input rxclk;
input uld_rx_data;
input rx_enable;
input rx_in;
output tx_out;
output tx_empty;
output rx_empty;
input [7:0] tx_data;
output [7:0] rx_data;

	BUFX2 BUFX2_1 ( .gnd(gnd), .vdd(vdd), .A(rxclk), .Y(rxclk_bF_buf4) );
	BUFX2 BUFX2_2 ( .gnd(gnd), .vdd(vdd), .A(rxclk), .Y(rxclk_bF_buf3) );
	BUFX2 BUFX2_3 ( .gnd(gnd), .vdd(vdd), .A(rxclk), .Y(rxclk_bF_buf2) );
	BUFX2 BUFX2_4 ( .gnd(gnd), .vdd(vdd), .A(rxclk), .Y(rxclk_bF_buf1) );
	BUFX2 BUFX2_5 ( .gnd(gnd), .vdd(vdd), .A(rxclk), .Y(rxclk_bF_buf0) );
	BUFX2 BUFX2_6 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data), .Y(uld_rx_data_bF_buf3) );
	BUFX2 BUFX2_7 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data), .Y(uld_rx_data_bF_buf2) );
	BUFX2 BUFX2_8 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data), .Y(uld_rx_data_bF_buf1) );
	BUFX2 BUFX2_9 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data), .Y(uld_rx_data_bF_buf0) );
	BUFX4 BUFX4_1 ( .gnd(gnd), .vdd(vdd), .A(_166_), .Y(_166__bF_buf5) );
	BUFX4 BUFX4_2 ( .gnd(gnd), .vdd(vdd), .A(_166_), .Y(_166__bF_buf4) );
	BUFX4 BUFX4_3 ( .gnd(gnd), .vdd(vdd), .A(_166_), .Y(_166__bF_buf3) );
	BUFX4 BUFX4_4 ( .gnd(gnd), .vdd(vdd), .A(_166_), .Y(_166__bF_buf2) );
	BUFX4 BUFX4_5 ( .gnd(gnd), .vdd(vdd), .A(_166_), .Y(_166__bF_buf1) );
	BUFX4 BUFX4_6 ( .gnd(gnd), .vdd(vdd), .A(_166_), .Y(_166__bF_buf0) );
	INVX2 INVX2_1 ( .gnd(gnd), .vdd(vdd), .A(rx_d2), .Y(_172_) );
	INVX2 INVX2_2 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_0_), .Y(_173_) );
	NOR2X1 NOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_1_), .B(_173_), .Y(_174_) );
	INVX1 INVX1_1 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_2_), .Y(_175_) );
	NOR2X1 NOR2X1_2 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_1_), .B(rx_cnt_0_), .Y(_10_) );
	NAND3X1 NAND3X1_1 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_3_), .B(_175_), .C(_10_), .Y(_11_) );
	INVX1 INVX1_2 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_3_), .Y(_12_) );
	INVX1 INVX1_3 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_1_), .Y(_13_) );
	NAND2X1 NAND2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_13_), .B(_173_), .Y(_14_) );
	OAI21X1 OAI21X1_1 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_2_), .B(_14_), .C(_12_), .Y(_15_) );
	NAND2X1 NAND2X1_2 ( .gnd(gnd), .vdd(vdd), .A(_11_), .B(_15_), .Y(_16_) );
	NAND3X1 NAND3X1_2 ( .gnd(gnd), .vdd(vdd), .A(_13_), .B(_173_), .C(_175_), .Y(_17_) );
	OAI21X1 OAI21X1_2 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_1_), .B(rx_cnt_0_), .C(rx_cnt_2_), .Y(_18_) );
	AND2X2 AND2X2_1 ( .gnd(gnd), .vdd(vdd), .A(_17_), .B(_18_), .Y(_19_) );
	NAND3X1 NAND3X1_3 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_1_), .B(rx_sample_cnt_0_), .C(rx_sample_cnt_2_), .Y(_20_) );
	NOR2X1 NOR2X1_3 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_3_), .B(_20_), .Y(_21_) );
	NAND3X1 NAND3X1_4 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(rx_enable), .C(_21_), .Y(_22_) );
	NOR2X1 NOR2X1_4 ( .gnd(gnd), .vdd(vdd), .A(_19_), .B(_22_), .Y(_23_) );
	NAND3X1 NAND3X1_5 ( .gnd(gnd), .vdd(vdd), .A(_174_), .B(_16_), .C(_23_), .Y(_24_) );
	INVX1 INVX1_4 ( .gnd(gnd), .vdd(vdd), .A(_174_), .Y(_25_) );
	NAND2X1 NAND2X1_3 ( .gnd(gnd), .vdd(vdd), .A(_18_), .B(_17_), .Y(_26_) );
	INVX2 INVX2_3 ( .gnd(gnd), .vdd(vdd), .A(rx_enable), .Y(_27_) );
	INVX1 INVX1_5 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_3_), .Y(_28_) );
	NAND2X1 NAND2X1_4 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(_28_), .Y(_29_) );
	NOR3X1 NOR3X1_1 ( .gnd(gnd), .vdd(vdd), .A(_27_), .B(_20_), .C(_29_), .Y(_30_) );
	NAND3X1 NAND3X1_6 ( .gnd(gnd), .vdd(vdd), .A(_26_), .B(_30_), .C(_16_), .Y(_31_) );
	OAI21X1 OAI21X1_3 ( .gnd(gnd), .vdd(vdd), .A(_25_), .B(_31_), .C(rx_reg_4_), .Y(_32_) );
	OAI21X1 OAI21X1_4 ( .gnd(gnd), .vdd(vdd), .A(_172_), .B(_24_), .C(_32_), .Y(_4__4_) );
	INVX1 INVX1_6 ( .gnd(gnd), .vdd(vdd), .A(rx_reg_3_), .Y(_33_) );
	NAND2X1 NAND2X1_5 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_2_), .B(_12_), .Y(_34_) );
	NOR2X1 NOR2X1_5 ( .gnd(gnd), .vdd(vdd), .A(_34_), .B(_14_), .Y(_35_) );
	NAND2X1 NAND2X1_6 ( .gnd(gnd), .vdd(vdd), .A(_35_), .B(_30_), .Y(_36_) );
	MUX2X1 MUX2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_33_), .B(_172_), .S(_36_), .Y(_4__3_) );
	INVX1 INVX1_7 ( .gnd(gnd), .vdd(vdd), .A(rx_reg_2_), .Y(_37_) );
	NAND2X1 NAND2X1_7 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(_21_), .Y(_38_) );
	INVX1 INVX1_8 ( .gnd(gnd), .vdd(vdd), .A(_38_), .Y(_39_) );
	NAND3X1 NAND3X1_7 ( .gnd(gnd), .vdd(vdd), .A(_12_), .B(_18_), .C(_17_), .Y(_40_) );
	NAND3X1 NAND3X1_8 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_1_), .B(rx_cnt_0_), .C(rx_enable), .Y(_41_) );
	NOR2X1 NOR2X1_6 ( .gnd(gnd), .vdd(vdd), .A(_41_), .B(_40_), .Y(_42_) );
	NAND2X1 NAND2X1_8 ( .gnd(gnd), .vdd(vdd), .A(_39_), .B(_42_), .Y(_43_) );
	MUX2X1 MUX2X1_2 ( .gnd(gnd), .vdd(vdd), .A(_37_), .B(_172_), .S(_43_), .Y(_4__2_) );
	NOR2X1 NOR2X1_7 ( .gnd(gnd), .vdd(vdd), .A(_40_), .B(_22_), .Y(_44_) );
	NAND2X1 NAND2X1_9 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_1_), .B(_173_), .Y(_45_) );
	INVX1 INVX1_9 ( .gnd(gnd), .vdd(vdd), .A(_45_), .Y(_46_) );
	NAND2X1 NAND2X1_10 ( .gnd(gnd), .vdd(vdd), .A(_46_), .B(_44_), .Y(_47_) );
	INVX1 INVX1_10 ( .gnd(gnd), .vdd(vdd), .A(_21_), .Y(_48_) );
	NAND2X1 NAND2X1_11 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(rx_enable), .Y(_49_) );
	NOR2X1 NOR2X1_8 ( .gnd(gnd), .vdd(vdd), .A(_49_), .B(_45_), .Y(_50_) );
	NAND3X1 NAND3X1_9 ( .gnd(gnd), .vdd(vdd), .A(_12_), .B(_50_), .C(_19_), .Y(_51_) );
	OAI21X1 OAI21X1_5 ( .gnd(gnd), .vdd(vdd), .A(_48_), .B(_51_), .C(rx_reg_1_), .Y(_52_) );
	OAI21X1 OAI21X1_6 ( .gnd(gnd), .vdd(vdd), .A(_172_), .B(_47_), .C(_52_), .Y(_4__1_) );
	INVX1 INVX1_11 ( .gnd(gnd), .vdd(vdd), .A(rx_reg_0_), .Y(_53_) );
	NOR2X1 NOR2X1_9 ( .gnd(gnd), .vdd(vdd), .A(_25_), .B(_40_), .Y(_54_) );
	NAND2X1 NAND2X1_12 ( .gnd(gnd), .vdd(vdd), .A(_30_), .B(_54_), .Y(_55_) );
	MUX2X1 MUX2X1_3 ( .gnd(gnd), .vdd(vdd), .A(_53_), .B(_172_), .S(_55_), .Y(_4__0_) );
	INVX1 INVX1_12 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .Y(_56_) );
	OAI21X1 OAI21X1_7 ( .gnd(gnd), .vdd(vdd), .A(rx_d2), .B(_27_), .C(_49_), .Y(_57_) );
	OAI21X1 OAI21X1_8 ( .gnd(gnd), .vdd(vdd), .A(_56_), .B(_21_), .C(_57_), .Y(_58_) );
	INVX1 INVX1_13 ( .gnd(gnd), .vdd(vdd), .A(_58_), .Y(_59_) );
	NOR2X1 NOR2X1_10 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_3_), .B(_17_), .Y(_60_) );
	NAND2X1 NAND2X1_13 ( .gnd(gnd), .vdd(vdd), .A(rx_d2), .B(_60_), .Y(_61_) );
	NAND2X1 NAND2X1_14 ( .gnd(gnd), .vdd(vdd), .A(_173_), .B(_61_), .Y(_62_) );
	OAI22X1 OAI22X1_1 ( .gnd(gnd), .vdd(vdd), .A(_173_), .B(_59_), .C(_22_), .D(_62_), .Y(_1__0_) );
	OAI21X1 OAI21X1_9 ( .gnd(gnd), .vdd(vdd), .A(_174_), .B(_46_), .C(_30_), .Y(_63_) );
	OAI21X1 OAI21X1_10 ( .gnd(gnd), .vdd(vdd), .A(_13_), .B(_59_), .C(_63_), .Y(_1__1_) );
	INVX1 INVX1_14 ( .gnd(gnd), .vdd(vdd), .A(_41_), .Y(_64_) );
	NOR2X1 NOR2X1_11 ( .gnd(gnd), .vdd(vdd), .A(_13_), .B(_173_), .Y(_65_) );
	AOI21X1 AOI21X1_1 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_2_), .B(_65_), .C(_38_), .Y(_66_) );
	OAI21X1 OAI21X1_11 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_2_), .B(_64_), .C(_66_), .Y(_67_) );
	OAI21X1 OAI21X1_12 ( .gnd(gnd), .vdd(vdd), .A(_175_), .B(_59_), .C(_67_), .Y(_1__2_) );
	NOR2X1 NOR2X1_12 ( .gnd(gnd), .vdd(vdd), .A(_41_), .B(_34_), .Y(_68_) );
	NAND2X1 NAND2X1_15 ( .gnd(gnd), .vdd(vdd), .A(_68_), .B(_39_), .Y(_69_) );
	OAI21X1 OAI21X1_13 ( .gnd(gnd), .vdd(vdd), .A(_58_), .B(_66_), .C(rx_cnt_3_), .Y(_70_) );
	NAND2X1 NAND2X1_16 ( .gnd(gnd), .vdd(vdd), .A(_69_), .B(_70_), .Y(_1__3_) );
	INVX1 INVX1_15 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_0_), .Y(_71_) );
	INVX1 INVX1_16 ( .gnd(gnd), .vdd(vdd), .A(_57_), .Y(_72_) );
	NOR2X1 NOR2X1_13 ( .gnd(gnd), .vdd(vdd), .A(_71_), .B(_27_), .Y(_73_) );
	AOI22X1 AOI22X1_1 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(_73_), .C(_72_), .D(_71_), .Y(_5__0_) );
	INVX1 INVX1_17 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_1_), .Y(_74_) );
	AOI21X1 AOI21X1_2 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_1_), .B(rx_sample_cnt_0_), .C(_56_), .Y(_75_) );
	OAI21X1 OAI21X1_14 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_1_), .B(_73_), .C(_75_), .Y(_76_) );
	OAI21X1 OAI21X1_15 ( .gnd(gnd), .vdd(vdd), .A(_74_), .B(_57_), .C(_76_), .Y(_5__1_) );
	INVX1 INVX1_18 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_2_), .Y(_77_) );
	NAND2X1 NAND2X1_17 ( .gnd(gnd), .vdd(vdd), .A(rx_sample_cnt_1_), .B(rx_sample_cnt_0_), .Y(_78_) );
	OAI21X1 OAI21X1_16 ( .gnd(gnd), .vdd(vdd), .A(_27_), .B(_78_), .C(_77_), .Y(_79_) );
	NAND3X1 NAND3X1_10 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(_20_), .C(_79_), .Y(_80_) );
	OAI21X1 OAI21X1_17 ( .gnd(gnd), .vdd(vdd), .A(_77_), .B(_57_), .C(_80_), .Y(_5__2_) );
	AOI21X1 AOI21X1_3 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(_20_), .C(_72_), .Y(_81_) );
	OAI21X1 OAI21X1_18 ( .gnd(gnd), .vdd(vdd), .A(_28_), .B(_81_), .C(_22_), .Y(_5__3_) );
	NOR2X1 NOR2X1_14 ( .gnd(gnd), .vdd(vdd), .A(_177_), .B(uld_rx_data_bF_buf3), .Y(_82_) );
	NAND3X1 NAND3X1_11 ( .gnd(gnd), .vdd(vdd), .A(rx_cnt_3_), .B(_175_), .C(_174_), .Y(_83_) );
	NOR2X1 NOR2X1_15 ( .gnd(gnd), .vdd(vdd), .A(_172_), .B(_83_), .Y(_84_) );
	AOI21X1 AOI21X1_4 ( .gnd(gnd), .vdd(vdd), .A(_84_), .B(_30_), .C(_82_), .Y(_3_) );
	NOR2X1 NOR2X1_16 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf2), .B(_176__0_), .Y(_85_) );
	AOI21X1 AOI21X1_5 ( .gnd(gnd), .vdd(vdd), .A(_53_), .B(uld_rx_data_bF_buf1), .C(_85_), .Y(_2__0_) );
	INVX1 INVX1_19 ( .gnd(gnd), .vdd(vdd), .A(_176__1_), .Y(_86_) );
	NAND2X1 NAND2X1_18 ( .gnd(gnd), .vdd(vdd), .A(rx_reg_1_), .B(uld_rx_data_bF_buf0), .Y(_87_) );
	OAI21X1 OAI21X1_19 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf3), .B(_86_), .C(_87_), .Y(_2__1_) );
	NOR2X1 NOR2X1_17 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf2), .B(_176__2_), .Y(_88_) );
	AOI21X1 AOI21X1_6 ( .gnd(gnd), .vdd(vdd), .A(_37_), .B(uld_rx_data_bF_buf1), .C(_88_), .Y(_2__2_) );
	NOR2X1 NOR2X1_18 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf0), .B(_176__3_), .Y(_89_) );
	AOI21X1 AOI21X1_7 ( .gnd(gnd), .vdd(vdd), .A(_33_), .B(uld_rx_data_bF_buf3), .C(_89_), .Y(_2__3_) );
	INVX1 INVX1_20 ( .gnd(gnd), .vdd(vdd), .A(_176__4_), .Y(_90_) );
	NAND2X1 NAND2X1_19 ( .gnd(gnd), .vdd(vdd), .A(rx_reg_4_), .B(uld_rx_data_bF_buf2), .Y(_91_) );
	OAI21X1 OAI21X1_20 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf1), .B(_90_), .C(_91_), .Y(_2__4_) );
	INVX1 INVX1_21 ( .gnd(gnd), .vdd(vdd), .A(_176__5_), .Y(_92_) );
	NAND2X1 NAND2X1_20 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf0), .B(rx_reg_5_), .Y(_93_) );
	OAI21X1 OAI21X1_21 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf3), .B(_92_), .C(_93_), .Y(_2__5_) );
	INVX1 INVX1_22 ( .gnd(gnd), .vdd(vdd), .A(rx_reg_6_), .Y(_94_) );
	NOR2X1 NOR2X1_19 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf2), .B(_176__6_), .Y(_95_) );
	AOI21X1 AOI21X1_8 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf1), .B(_94_), .C(_95_), .Y(_2__6_) );
	INVX1 INVX1_23 ( .gnd(gnd), .vdd(vdd), .A(rx_reg_7_), .Y(_96_) );
	NOR2X1 NOR2X1_20 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf0), .B(_176__7_), .Y(_97_) );
	AOI21X1 AOI21X1_9 ( .gnd(gnd), .vdd(vdd), .A(uld_rx_data_bF_buf3), .B(_96_), .C(_97_), .Y(_2__7_) );
	INVX2 INVX2_4 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_0_), .Y(_98_) );
	OAI21X1 OAI21X1_22 ( .gnd(gnd), .vdd(vdd), .A(_178_), .B(_98_), .C(tx_enable), .Y(_99_) );
	AOI21X1 AOI21X1_10 ( .gnd(gnd), .vdd(vdd), .A(_98_), .B(_178_), .C(_99_), .Y(_6__0_) );
	INVX1 INVX1_24 ( .gnd(gnd), .vdd(vdd), .A(_178_), .Y(_100_) );
	INVX1 INVX1_25 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_1_), .Y(_101_) );
	NOR2X1 NOR2X1_21 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_2_), .B(tx_cnt_1_), .Y(_102_) );
	NAND3X1 NAND3X1_12 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_0_), .B(tx_cnt_3_), .C(_102_), .Y(_103_) );
	NAND2X1 NAND2X1_21 ( .gnd(gnd), .vdd(vdd), .A(tx_enable), .B(_100_), .Y(_104_) );
	NAND2X1 NAND2X1_22 ( .gnd(gnd), .vdd(vdd), .A(_98_), .B(_101_), .Y(_105_) );
	NAND2X1 NAND2X1_23 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_0_), .B(tx_cnt_1_), .Y(_106_) );
	NAND2X1 NAND2X1_24 ( .gnd(gnd), .vdd(vdd), .A(_106_), .B(_105_), .Y(_107_) );
	NOR2X1 NOR2X1_22 ( .gnd(gnd), .vdd(vdd), .A(_104_), .B(_107_), .Y(_108_) );
	NAND2X1 NAND2X1_25 ( .gnd(gnd), .vdd(vdd), .A(_103_), .B(_108_), .Y(_109_) );
	OAI21X1 OAI21X1_23 ( .gnd(gnd), .vdd(vdd), .A(_100_), .B(_101_), .C(_109_), .Y(_110_) );
	AND2X2 AND2X2_2 ( .gnd(gnd), .vdd(vdd), .A(_110_), .B(tx_enable), .Y(_6__1_) );
	INVX1 INVX1_26 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_2_), .Y(_111_) );
	OAI21X1 OAI21X1_24 ( .gnd(gnd), .vdd(vdd), .A(_106_), .B(_104_), .C(_111_), .Y(_112_) );
	NOR2X1 NOR2X1_23 ( .gnd(gnd), .vdd(vdd), .A(_106_), .B(_104_), .Y(_113_) );
	NAND2X1 NAND2X1_26 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_2_), .B(_113_), .Y(_114_) );
	NAND3X1 NAND3X1_13 ( .gnd(gnd), .vdd(vdd), .A(tx_enable), .B(_112_), .C(_114_), .Y(_115_) );
	INVX1 INVX1_27 ( .gnd(gnd), .vdd(vdd), .A(_115_), .Y(_6__2_) );
	OAI21X1 OAI21X1_25 ( .gnd(gnd), .vdd(vdd), .A(_178_), .B(_103_), .C(tx_enable), .Y(_116_) );
	NAND2X1 NAND2X1_27 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_3_), .B(_114_), .Y(_117_) );
	OR2X2 OR2X2_1 ( .gnd(gnd), .vdd(vdd), .A(_114_), .B(tx_cnt_3_), .Y(_118_) );
	AOI21X1 AOI21X1_11 ( .gnd(gnd), .vdd(vdd), .A(_118_), .B(_117_), .C(_116_), .Y(_6__3_) );
	INVX1 INVX1_28 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_0_), .Y(_119_) );
	INVX1 INVX1_29 ( .gnd(gnd), .vdd(vdd), .A(tx_data[0]), .Y(_120_) );
	AND2X2 AND2X2_3 ( .gnd(gnd), .vdd(vdd), .A(_178_), .B(ld_tx_data), .Y(_121_) );
	MUX2X1 MUX2X1_4 ( .gnd(gnd), .vdd(vdd), .A(_120_), .B(_119_), .S(_121_), .Y(_9__0_) );
	INVX1 INVX1_30 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_1_), .Y(_122_) );
	INVX1 INVX1_31 ( .gnd(gnd), .vdd(vdd), .A(tx_data[1]), .Y(_123_) );
	MUX2X1 MUX2X1_5 ( .gnd(gnd), .vdd(vdd), .A(_123_), .B(_122_), .S(_121_), .Y(_9__1_) );
	INVX1 INVX1_32 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_2_), .Y(_124_) );
	INVX1 INVX1_33 ( .gnd(gnd), .vdd(vdd), .A(tx_data[2]), .Y(_125_) );
	MUX2X1 MUX2X1_6 ( .gnd(gnd), .vdd(vdd), .A(_125_), .B(_124_), .S(_121_), .Y(_9__2_) );
	INVX1 INVX1_34 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_3_), .Y(_126_) );
	INVX1 INVX1_35 ( .gnd(gnd), .vdd(vdd), .A(tx_data[3]), .Y(_127_) );
	MUX2X1 MUX2X1_7 ( .gnd(gnd), .vdd(vdd), .A(_127_), .B(_126_), .S(_121_), .Y(_9__3_) );
	INVX1 INVX1_36 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_4_), .Y(_128_) );
	INVX1 INVX1_37 ( .gnd(gnd), .vdd(vdd), .A(tx_data[4]), .Y(_129_) );
	MUX2X1 MUX2X1_8 ( .gnd(gnd), .vdd(vdd), .A(_129_), .B(_128_), .S(_121_), .Y(_9__4_) );
	INVX1 INVX1_38 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_5_), .Y(_130_) );
	INVX1 INVX1_39 ( .gnd(gnd), .vdd(vdd), .A(tx_data[5]), .Y(_131_) );
	MUX2X1 MUX2X1_9 ( .gnd(gnd), .vdd(vdd), .A(_131_), .B(_130_), .S(_121_), .Y(_9__5_) );
	INVX1 INVX1_40 ( .gnd(gnd), .vdd(vdd), .A(tx_data[6]), .Y(_132_) );
	NOR2X1 NOR2X1_24 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_6_), .B(_121_), .Y(_133_) );
	AOI21X1 AOI21X1_12 ( .gnd(gnd), .vdd(vdd), .A(_132_), .B(_121_), .C(_133_), .Y(_9__6_) );
	INVX1 INVX1_41 ( .gnd(gnd), .vdd(vdd), .A(tx_data[7]), .Y(_134_) );
	NOR2X1 NOR2X1_25 ( .gnd(gnd), .vdd(vdd), .A(tx_reg_7_), .B(_121_), .Y(_135_) );
	AOI21X1 AOI21X1_13 ( .gnd(gnd), .vdd(vdd), .A(_134_), .B(_121_), .C(_135_), .Y(_9__7_) );
	OR2X2 OR2X2_2 ( .gnd(gnd), .vdd(vdd), .A(_103_), .B(_104_), .Y(_136_) );
	OAI21X1 OAI21X1_26 ( .gnd(gnd), .vdd(vdd), .A(_100_), .B(ld_tx_data), .C(_136_), .Y(_7_) );
	NAND3X1 NAND3X1_14 ( .gnd(gnd), .vdd(vdd), .A(_98_), .B(_111_), .C(_101_), .Y(_137_) );
	OAI21X1 OAI21X1_27 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_0_), .B(tx_cnt_1_), .C(tx_cnt_2_), .Y(_138_) );
	NAND3X1 NAND3X1_15 ( .gnd(gnd), .vdd(vdd), .A(_126_), .B(_138_), .C(_137_), .Y(_139_) );
	OAI21X1 OAI21X1_28 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_0_), .B(tx_cnt_1_), .C(_111_), .Y(_140_) );
	NAND3X1 NAND3X1_16 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_2_), .B(_98_), .C(_101_), .Y(_141_) );
	OAI21X1 OAI21X1_29 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_3_), .B(tx_cnt_2_), .C(tx_reg_7_), .Y(_142_) );
	NAND3X1 NAND3X1_17 ( .gnd(gnd), .vdd(vdd), .A(_142_), .B(_140_), .C(_141_), .Y(_143_) );
	NAND3X1 NAND3X1_18 ( .gnd(gnd), .vdd(vdd), .A(_107_), .B(_143_), .C(_139_), .Y(_144_) );
	XOR2X1 XOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_0_), .B(tx_cnt_1_), .Y(_145_) );
	NAND3X1 NAND3X1_19 ( .gnd(gnd), .vdd(vdd), .A(_122_), .B(_138_), .C(_137_), .Y(_146_) );
	NAND2X1 NAND2X1_28 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_2_), .B(_130_), .Y(_147_) );
	NAND3X1 NAND3X1_20 ( .gnd(gnd), .vdd(vdd), .A(_145_), .B(_147_), .C(_146_), .Y(_148_) );
	NAND3X1 NAND3X1_21 ( .gnd(gnd), .vdd(vdd), .A(_98_), .B(_148_), .C(_144_), .Y(_149_) );
	NAND3X1 NAND3X1_22 ( .gnd(gnd), .vdd(vdd), .A(_124_), .B(_138_), .C(_137_), .Y(_150_) );
	OAI21X1 OAI21X1_30 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_3_), .B(tx_cnt_2_), .C(tx_reg_6_), .Y(_151_) );
	NAND3X1 NAND3X1_23 ( .gnd(gnd), .vdd(vdd), .A(_151_), .B(_140_), .C(_141_), .Y(_152_) );
	NAND3X1 NAND3X1_24 ( .gnd(gnd), .vdd(vdd), .A(_107_), .B(_152_), .C(_150_), .Y(_153_) );
	NAND3X1 NAND3X1_25 ( .gnd(gnd), .vdd(vdd), .A(_119_), .B(_138_), .C(_137_), .Y(_154_) );
	NAND2X1 NAND2X1_29 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_2_), .B(_128_), .Y(_155_) );
	NAND3X1 NAND3X1_26 ( .gnd(gnd), .vdd(vdd), .A(_145_), .B(_155_), .C(_154_), .Y(_156_) );
	NAND3X1 NAND3X1_27 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_0_), .B(_156_), .C(_153_), .Y(_157_) );
	NOR2X1 NOR2X1_26 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_3_), .B(_137_), .Y(_158_) );
	INVX1 INVX1_42 ( .gnd(gnd), .vdd(vdd), .A(tx_cnt_3_), .Y(_159_) );
	AOI21X1 AOI21X1_14 ( .gnd(gnd), .vdd(vdd), .A(_140_), .B(_111_), .C(_159_), .Y(_160_) );
	NOR3X1 NOR3X1_2 ( .gnd(gnd), .vdd(vdd), .A(_104_), .B(_160_), .C(_158_), .Y(_161_) );
	NAND3X1 NAND3X1_28 ( .gnd(gnd), .vdd(vdd), .A(_161_), .B(_149_), .C(_157_), .Y(_162_) );
	OAI21X1 OAI21X1_31 ( .gnd(gnd), .vdd(vdd), .A(_104_), .B(_160_), .C(_179_), .Y(_163_) );
	AND2X2 AND2X2_4 ( .gnd(gnd), .vdd(vdd), .A(_163_), .B(_136_), .Y(_164_) );
	NAND2X1 NAND2X1_30 ( .gnd(gnd), .vdd(vdd), .A(_164_), .B(_162_), .Y(_8_) );
	NOR2X1 NOR2X1_27 ( .gnd(gnd), .vdd(vdd), .A(_11_), .B(_22_), .Y(_165_) );
	NAND2X1 NAND2X1_31 ( .gnd(gnd), .vdd(vdd), .A(rx_d2), .B(_165_), .Y(_167_) );
	OAI21X1 OAI21X1_32 ( .gnd(gnd), .vdd(vdd), .A(_96_), .B(_165_), .C(_167_), .Y(_4__7_) );
	MUX2X1 MUX2X1_10 ( .gnd(gnd), .vdd(vdd), .A(_94_), .B(_172_), .S(_69_), .Y(_4__6_) );
	NAND3X1 NAND3X1_29 ( .gnd(gnd), .vdd(vdd), .A(_16_), .B(_46_), .C(_23_), .Y(_168_) );
	OAI21X1 OAI21X1_33 ( .gnd(gnd), .vdd(vdd), .A(_45_), .B(_31_), .C(rx_reg_5_), .Y(_169_) );
	OAI21X1 OAI21X1_34 ( .gnd(gnd), .vdd(vdd), .A(_172_), .B(_168_), .C(_169_), .Y(_4__5_) );
	OAI21X1 OAI21X1_35 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(_172_), .C(_38_), .Y(_170_) );
	NAND3X1 NAND3X1_30 ( .gnd(gnd), .vdd(vdd), .A(rx_busy), .B(_83_), .C(_61_), .Y(_171_) );
	AOI21X1 AOI21X1_15 ( .gnd(gnd), .vdd(vdd), .A(_171_), .B(_170_), .C(_27_), .Y(_0_) );
	INVX8 INVX8_1 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_166_) );
	BUFX2 BUFX2_10 ( .gnd(gnd), .vdd(vdd), .A(_176__0_), .Y(rx_data[0]) );
	BUFX2 BUFX2_11 ( .gnd(gnd), .vdd(vdd), .A(_176__1_), .Y(rx_data[1]) );
	BUFX2 BUFX2_12 ( .gnd(gnd), .vdd(vdd), .A(_176__2_), .Y(rx_data[2]) );
	BUFX2 BUFX2_13 ( .gnd(gnd), .vdd(vdd), .A(_176__3_), .Y(rx_data[3]) );
	BUFX2 BUFX2_14 ( .gnd(gnd), .vdd(vdd), .A(_176__4_), .Y(rx_data[4]) );
	BUFX2 BUFX2_15 ( .gnd(gnd), .vdd(vdd), .A(_176__5_), .Y(rx_data[5]) );
	BUFX2 BUFX2_16 ( .gnd(gnd), .vdd(vdd), .A(_176__6_), .Y(rx_data[6]) );
	BUFX2 BUFX2_17 ( .gnd(gnd), .vdd(vdd), .A(_176__7_), .Y(rx_data[7]) );
	BUFX2 BUFX2_18 ( .gnd(gnd), .vdd(vdd), .A(_177_), .Y(rx_empty) );
	BUFX2 BUFX2_19 ( .gnd(gnd), .vdd(vdd), .A(_178_), .Y(tx_empty) );
	BUFX2 BUFX2_20 ( .gnd(gnd), .vdd(vdd), .A(_179_), .Y(tx_out) );
	DFFSR DFFSR_1 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_8_), .Q(_179_), .R(vdd), .S(_166__bF_buf5) );
	DFFSR DFFSR_2 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_7_), .Q(_178_), .R(vdd), .S(_166__bF_buf4) );
	DFFSR DFFSR_3 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__0_), .Q(tx_reg_0_), .R(_166__bF_buf3), .S(vdd) );
	DFFSR DFFSR_4 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__1_), .Q(tx_reg_1_), .R(_166__bF_buf2), .S(vdd) );
	DFFSR DFFSR_5 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__2_), .Q(tx_reg_2_), .R(_166__bF_buf1), .S(vdd) );
	DFFSR DFFSR_6 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__3_), .Q(tx_reg_3_), .R(_166__bF_buf0), .S(vdd) );
	DFFSR DFFSR_7 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__4_), .Q(tx_reg_4_), .R(_166__bF_buf5), .S(vdd) );
	DFFSR DFFSR_8 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__5_), .Q(tx_reg_5_), .R(_166__bF_buf4), .S(vdd) );
	DFFSR DFFSR_9 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__6_), .Q(tx_reg_6_), .R(_166__bF_buf3), .S(vdd) );
	DFFSR DFFSR_10 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_9__7_), .Q(tx_reg_7_), .R(_166__bF_buf2), .S(vdd) );
	DFFSR DFFSR_11 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_6__0_), .Q(tx_cnt_0_), .R(_166__bF_buf1), .S(vdd) );
	DFFSR DFFSR_12 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_6__1_), .Q(tx_cnt_1_), .R(_166__bF_buf0), .S(vdd) );
	DFFSR DFFSR_13 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_6__2_), .Q(tx_cnt_2_), .R(_166__bF_buf5), .S(vdd) );
	DFFSR DFFSR_14 ( .gnd(gnd), .vdd(vdd), .CLK(txclk), .D(_6__3_), .Q(tx_cnt_3_), .R(_166__bF_buf4), .S(vdd) );
	DFFSR DFFSR_15 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf4), .D(_2__0_), .Q(_176__0_), .R(_166__bF_buf3), .S(vdd) );
	DFFSR DFFSR_16 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf3), .D(_2__1_), .Q(_176__1_), .R(_166__bF_buf2), .S(vdd) );
	DFFSR DFFSR_17 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf2), .D(_2__2_), .Q(_176__2_), .R(_166__bF_buf1), .S(vdd) );
	DFFSR DFFSR_18 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf1), .D(_2__3_), .Q(_176__3_), .R(_166__bF_buf0), .S(vdd) );
	DFFSR DFFSR_19 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf0), .D(_2__4_), .Q(_176__4_), .R(_166__bF_buf5), .S(vdd) );
	DFFSR DFFSR_20 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf4), .D(_2__5_), .Q(_176__5_), .R(_166__bF_buf4), .S(vdd) );
	DFFSR DFFSR_21 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf3), .D(_2__6_), .Q(_176__6_), .R(_166__bF_buf3), .S(vdd) );
	DFFSR DFFSR_22 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf2), .D(_2__7_), .Q(_176__7_), .R(_166__bF_buf2), .S(vdd) );
	DFFSR DFFSR_23 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf1), .D(_3_), .Q(_177_), .R(vdd), .S(_166__bF_buf1) );
	DFFSR DFFSR_24 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf0), .D(_4__0_), .Q(rx_reg_0_), .R(_166__bF_buf0), .S(vdd) );
	DFFSR DFFSR_25 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf4), .D(_4__1_), .Q(rx_reg_1_), .R(_166__bF_buf5), .S(vdd) );
	DFFSR DFFSR_26 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf3), .D(_4__2_), .Q(rx_reg_2_), .R(_166__bF_buf4), .S(vdd) );
	DFFSR DFFSR_27 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf2), .D(_4__3_), .Q(rx_reg_3_), .R(_166__bF_buf3), .S(vdd) );
	DFFSR DFFSR_28 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf1), .D(_4__4_), .Q(rx_reg_4_), .R(_166__bF_buf2), .S(vdd) );
	DFFSR DFFSR_29 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf0), .D(_4__5_), .Q(rx_reg_5_), .R(_166__bF_buf1), .S(vdd) );
	DFFSR DFFSR_30 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf4), .D(_4__6_), .Q(rx_reg_6_), .R(_166__bF_buf0), .S(vdd) );
	DFFSR DFFSR_31 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf3), .D(_4__7_), .Q(rx_reg_7_), .R(_166__bF_buf5), .S(vdd) );
	DFFSR DFFSR_32 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf2), .D(_5__0_), .Q(rx_sample_cnt_0_), .R(_166__bF_buf4), .S(vdd) );
	DFFSR DFFSR_33 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf1), .D(_5__1_), .Q(rx_sample_cnt_1_), .R(_166__bF_buf3), .S(vdd) );
	DFFSR DFFSR_34 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf0), .D(_5__2_), .Q(rx_sample_cnt_2_), .R(_166__bF_buf2), .S(vdd) );
	DFFSR DFFSR_35 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf4), .D(_5__3_), .Q(rx_sample_cnt_3_), .R(_166__bF_buf1), .S(vdd) );
	DFFSR DFFSR_36 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf3), .D(_1__0_), .Q(rx_cnt_0_), .R(_166__bF_buf0), .S(vdd) );
	DFFSR DFFSR_37 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf2), .D(_1__1_), .Q(rx_cnt_1_), .R(_166__bF_buf5), .S(vdd) );
	DFFSR DFFSR_38 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf1), .D(_1__2_), .Q(rx_cnt_2_), .R(_166__bF_buf4), .S(vdd) );
	DFFSR DFFSR_39 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf0), .D(_1__3_), .Q(rx_cnt_3_), .R(_166__bF_buf3), .S(vdd) );
	DFFSR DFFSR_40 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf4), .D(rx_in), .Q(rx_d1), .R(vdd), .S(_166__bF_buf2) );
	DFFSR DFFSR_41 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf3), .D(rx_d1), .Q(rx_d2), .R(vdd), .S(_166__bF_buf1) );
	DFFSR DFFSR_42 ( .gnd(gnd), .vdd(vdd), .CLK(rxclk_bF_buf2), .D(_0_), .Q(rx_busy), .R(_166__bF_buf0), .S(vdd) );
endmodule
