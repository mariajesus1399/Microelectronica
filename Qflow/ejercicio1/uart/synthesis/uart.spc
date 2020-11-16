*SPICE netlist created from BLIF module uart by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt uart vdd gnd reset txclk ld_tx_data tx_data<0> tx_data<1> tx_data<2> tx_data<3> tx_data<4> tx_data<5> tx_data<6> tx_data<7> tx_enable rxclk uld_rx_data rx_enable rx_in tx_out tx_empty rx_data<0> rx_data<1> rx_data<2> rx_data<3> rx_data<4> rx_data<5> rx_data<6> rx_data<7> rx_empty 
XBUFX2_1 vdd gnd rxclk rxclk_bF$buf4 BUFX2
XBUFX2_2 vdd gnd rxclk rxclk_bF$buf3 BUFX2
XBUFX2_3 vdd gnd rxclk rxclk_bF$buf2 BUFX2
XBUFX2_4 vdd gnd rxclk rxclk_bF$buf1 BUFX2
XBUFX2_5 vdd gnd rxclk rxclk_bF$buf0 BUFX2
XBUFX2_6 vdd gnd uld_rx_data uld_rx_data_bF$buf3 BUFX2
XBUFX2_7 vdd gnd uld_rx_data uld_rx_data_bF$buf2 BUFX2
XBUFX2_8 vdd gnd uld_rx_data uld_rx_data_bF$buf1 BUFX2
XBUFX2_9 vdd gnd uld_rx_data uld_rx_data_bF$buf0 BUFX2
XBUFX4_1 vdd gnd _166_ _166__bF$buf5 BUFX4
XBUFX4_2 vdd gnd _166_ _166__bF$buf4 BUFX4
XBUFX4_3 vdd gnd _166_ _166__bF$buf3 BUFX4
XBUFX4_4 vdd gnd _166_ _166__bF$buf2 BUFX4
XBUFX4_5 vdd gnd _166_ _166__bF$buf1 BUFX4
XBUFX4_6 vdd gnd _166_ _166__bF$buf0 BUFX4
XINVX2_1 vdd gnd _172_ rx_d2 INVX2
XINVX2_2 vdd gnd _173_ rx_cnt<0> INVX2
XNOR2X1_1 vdd _173_ gnd _174_ rx_cnt<1> NOR2X1
XINVX1_1 rx_cnt<2> _175_ vdd gnd INVX1
XNOR2X1_2 vdd rx_cnt<0> gnd _10_ rx_cnt<1> NOR2X1
XNAND3X1_1 _175_ vdd gnd rx_cnt<3> _10_ _11_ NAND3X1
XINVX1_2 rx_cnt<3> _12_ vdd gnd INVX1
XINVX1_3 rx_cnt<1> _13_ vdd gnd INVX1
XNAND2X1_1 vdd _14_ gnd _13_ _173_ NAND2X1
XOAI21X1_1 gnd vdd rx_cnt<2> _14_ _15_ _12_ OAI21X1
XNAND2X1_2 vdd _16_ gnd _11_ _15_ NAND2X1
XNAND3X1_2 _173_ vdd gnd _13_ _175_ _17_ NAND3X1
XOAI21X1_2 gnd vdd rx_cnt<1> rx_cnt<0> _18_ rx_cnt<2> OAI21X1
XAND2X2_1 vdd gnd _17_ _18_ _19_ AND2X2
XNAND3X1_3 rx_sample_cnt<0> vdd gnd rx_sample_cnt<1> rx_sample_cnt<2> _20_ NAND3X1
XNOR2X1_3 vdd _20_ gnd _21_ rx_sample_cnt<3> NOR2X1
XNAND3X1_4 rx_enable vdd gnd rx_busy _21_ _22_ NAND3X1
XNOR2X1_4 vdd _22_ gnd _23_ _19_ NOR2X1
XNAND3X1_5 _16_ vdd gnd _174_ _23_ _24_ NAND3X1
XINVX1_4 _174_ _25_ vdd gnd INVX1
XNAND2X1_3 vdd _26_ gnd _18_ _17_ NAND2X1
XINVX2_3 vdd gnd _27_ rx_enable INVX2
XINVX1_5 rx_sample_cnt<3> _28_ vdd gnd INVX1
XNAND2X1_4 vdd _29_ gnd rx_busy _28_ NAND2X1
XNOR3X1_1 vdd gnd _20_ _29_ _27_ _30_ NOR3X1
XNAND3X1_6 _30_ vdd gnd _26_ _16_ _31_ NAND3X1
XOAI21X1_3 gnd vdd _25_ _31_ _32_ rx_reg<4> OAI21X1
XOAI21X1_4 gnd vdd _172_ _24_ _4_<4> _32_ OAI21X1
XINVX1_6 rx_reg<3> _33_ vdd gnd INVX1
XNAND2X1_5 vdd _34_ gnd rx_cnt<2> _12_ NAND2X1
XNOR2X1_5 vdd _14_ gnd _35_ _34_ NOR2X1
XNAND2X1_6 vdd _36_ gnd _35_ _30_ NAND2X1
XMUX2X1_1 _36_ vdd gnd _4_<3> _33_ _172_ MUX2X1
XINVX1_7 rx_reg<2> _37_ vdd gnd INVX1
XNAND2X1_7 vdd _38_ gnd rx_busy _21_ NAND2X1
XINVX1_8 _38_ _39_ vdd gnd INVX1
XNAND3X1_7 _18_ vdd gnd _12_ _17_ _40_ NAND3X1
XNAND3X1_8 rx_cnt<0> vdd gnd rx_cnt<1> rx_enable _41_ NAND3X1
XNOR2X1_6 vdd _40_ gnd _42_ _41_ NOR2X1
XNAND2X1_8 vdd _43_ gnd _39_ _42_ NAND2X1
XMUX2X1_2 _43_ vdd gnd _4_<2> _37_ _172_ MUX2X1
XNOR2X1_7 vdd _22_ gnd _44_ _40_ NOR2X1
XNAND2X1_9 vdd _45_ gnd rx_cnt<1> _173_ NAND2X1
XINVX1_9 _45_ _46_ vdd gnd INVX1
XNAND2X1_10 vdd _47_ gnd _46_ _44_ NAND2X1
XINVX1_10 _21_ _48_ vdd gnd INVX1
XNAND2X1_11 vdd _49_ gnd rx_busy rx_enable NAND2X1
XNOR2X1_8 vdd _45_ gnd _50_ _49_ NOR2X1
XNAND3X1_9 _50_ vdd gnd _12_ _19_ _51_ NAND3X1
XOAI21X1_5 gnd vdd _48_ _51_ _52_ rx_reg<1> OAI21X1
XOAI21X1_6 gnd vdd _172_ _47_ _4_<1> _52_ OAI21X1
XINVX1_11 rx_reg<0> _53_ vdd gnd INVX1
XNOR2X1_9 vdd _40_ gnd _54_ _25_ NOR2X1
XNAND2X1_12 vdd _55_ gnd _30_ _54_ NAND2X1
XMUX2X1_3 _55_ vdd gnd _4_<0> _53_ _172_ MUX2X1
XINVX1_12 rx_busy _56_ vdd gnd INVX1
XOAI21X1_7 gnd vdd rx_d2 _27_ _57_ _49_ OAI21X1
XOAI21X1_8 gnd vdd _56_ _21_ _58_ _57_ OAI21X1
XINVX1_13 _58_ _59_ vdd gnd INVX1
XNOR2X1_10 vdd _17_ gnd _60_ rx_cnt<3> NOR2X1
XNAND2X1_13 vdd _61_ gnd rx_d2 _60_ NAND2X1
XNAND2X1_14 vdd _62_ gnd _173_ _61_ NAND2X1
XOAI22X1_1 gnd vdd _62_ _22_ _173_ _59_ _1_<0> OAI22X1
XOAI21X1_9 gnd vdd _174_ _46_ _63_ _30_ OAI21X1
XOAI21X1_10 gnd vdd _13_ _59_ _1_<1> _63_ OAI21X1
XINVX1_14 _41_ _64_ vdd gnd INVX1
XNOR2X1_11 vdd _173_ gnd _65_ _13_ NOR2X1
XAOI21X1_1 gnd vdd rx_cnt<2> _65_ _66_ _38_ AOI21X1
XOAI21X1_11 gnd vdd rx_cnt<2> _64_ _67_ _66_ OAI21X1
XOAI21X1_12 gnd vdd _175_ _59_ _1_<2> _67_ OAI21X1
XNOR2X1_12 vdd _34_ gnd _68_ _41_ NOR2X1
XNAND2X1_15 vdd _69_ gnd _68_ _39_ NAND2X1
XOAI21X1_13 gnd vdd _58_ _66_ _70_ rx_cnt<3> OAI21X1
XNAND2X1_16 vdd _1_<3> gnd _69_ _70_ NAND2X1
XINVX1_15 rx_sample_cnt<0> _71_ vdd gnd INVX1
XINVX1_16 _57_ _72_ vdd gnd INVX1
XNOR2X1_13 vdd _27_ gnd _73_ _71_ NOR2X1
XAOI22X1_1 gnd vdd _72_ _71_ _5_<0> rx_busy _73_ AOI22X1
XINVX1_17 rx_sample_cnt<1> _74_ vdd gnd INVX1
XAOI21X1_2 gnd vdd rx_sample_cnt<1> rx_sample_cnt<0> _75_ _56_ AOI21X1
XOAI21X1_14 gnd vdd rx_sample_cnt<1> _73_ _76_ _75_ OAI21X1
XOAI21X1_15 gnd vdd _74_ _57_ _5_<1> _76_ OAI21X1
XINVX1_18 rx_sample_cnt<2> _77_ vdd gnd INVX1
XNAND2X1_17 vdd _78_ gnd rx_sample_cnt<1> rx_sample_cnt<0> NAND2X1
XOAI21X1_16 gnd vdd _27_ _78_ _79_ _77_ OAI21X1
XNAND3X1_10 _20_ vdd gnd rx_busy _79_ _80_ NAND3X1
XOAI21X1_17 gnd vdd _77_ _57_ _5_<2> _80_ OAI21X1
XAOI21X1_3 gnd vdd rx_busy _20_ _81_ _72_ AOI21X1
XOAI21X1_18 gnd vdd _28_ _81_ _5_<3> _22_ OAI21X1
XNOR2X1_14 vdd uld_rx_data_bF$buf3 gnd _82_ _177_ NOR2X1
XNAND3X1_11 _175_ vdd gnd rx_cnt<3> _174_ _83_ NAND3X1
XNOR2X1_15 vdd _83_ gnd _84_ _172_ NOR2X1
XAOI21X1_4 gnd vdd _84_ _30_ _3_ _82_ AOI21X1
XNOR2X1_16 vdd _176_<0> gnd _85_ uld_rx_data_bF$buf2 NOR2X1
XAOI21X1_5 gnd vdd _53_ uld_rx_data_bF$buf1 _2_<0> _85_ AOI21X1
XINVX1_19 _176_<1> _86_ vdd gnd INVX1
XNAND2X1_18 vdd _87_ gnd rx_reg<1> uld_rx_data_bF$buf0 NAND2X1
XOAI21X1_19 gnd vdd uld_rx_data_bF$buf3 _86_ _2_<1> _87_ OAI21X1
XNOR2X1_17 vdd _176_<2> gnd _88_ uld_rx_data_bF$buf2 NOR2X1
XAOI21X1_6 gnd vdd _37_ uld_rx_data_bF$buf1 _2_<2> _88_ AOI21X1
XNOR2X1_18 vdd _176_<3> gnd _89_ uld_rx_data_bF$buf0 NOR2X1
XAOI21X1_7 gnd vdd _33_ uld_rx_data_bF$buf3 _2_<3> _89_ AOI21X1
XINVX1_20 _176_<4> _90_ vdd gnd INVX1
XNAND2X1_19 vdd _91_ gnd rx_reg<4> uld_rx_data_bF$buf2 NAND2X1
XOAI21X1_20 gnd vdd uld_rx_data_bF$buf1 _90_ _2_<4> _91_ OAI21X1
XINVX1_21 _176_<5> _92_ vdd gnd INVX1
XNAND2X1_20 vdd _93_ gnd uld_rx_data_bF$buf0 rx_reg<5> NAND2X1
XOAI21X1_21 gnd vdd uld_rx_data_bF$buf3 _92_ _2_<5> _93_ OAI21X1
XINVX1_22 rx_reg<6> _94_ vdd gnd INVX1
XNOR2X1_19 vdd _176_<6> gnd _95_ uld_rx_data_bF$buf2 NOR2X1
XAOI21X1_8 gnd vdd uld_rx_data_bF$buf1 _94_ _2_<6> _95_ AOI21X1
XINVX1_23 rx_reg<7> _96_ vdd gnd INVX1
XNOR2X1_20 vdd _176_<7> gnd _97_ uld_rx_data_bF$buf0 NOR2X1
XAOI21X1_9 gnd vdd uld_rx_data_bF$buf3 _96_ _2_<7> _97_ AOI21X1
XINVX2_4 vdd gnd _98_ tx_cnt<0> INVX2
XOAI21X1_22 gnd vdd _178_ _98_ _99_ tx_enable OAI21X1
XAOI21X1_10 gnd vdd _98_ _178_ _6_<0> _99_ AOI21X1
XINVX1_24 _178_ _100_ vdd gnd INVX1
XINVX1_25 tx_cnt<1> _101_ vdd gnd INVX1
XNOR2X1_21 vdd tx_cnt<1> gnd _102_ tx_cnt<2> NOR2X1
XNAND3X1_12 tx_cnt<3> vdd gnd tx_cnt<0> _102_ _103_ NAND3X1
XNAND2X1_21 vdd _104_ gnd tx_enable _100_ NAND2X1
XNAND2X1_22 vdd _105_ gnd _98_ _101_ NAND2X1
XNAND2X1_23 vdd _106_ gnd tx_cnt<0> tx_cnt<1> NAND2X1
XNAND2X1_24 vdd _107_ gnd _106_ _105_ NAND2X1
XNOR2X1_22 vdd _107_ gnd _108_ _104_ NOR2X1
XNAND2X1_25 vdd _109_ gnd _103_ _108_ NAND2X1
XOAI21X1_23 gnd vdd _100_ _101_ _110_ _109_ OAI21X1
XAND2X2_2 vdd gnd _110_ tx_enable _6_<1> AND2X2
XINVX1_26 tx_cnt<2> _111_ vdd gnd INVX1
XOAI21X1_24 gnd vdd _106_ _104_ _112_ _111_ OAI21X1
XNOR2X1_23 vdd _104_ gnd _113_ _106_ NOR2X1
XNAND2X1_26 vdd _114_ gnd tx_cnt<2> _113_ NAND2X1
XNAND3X1_13 _112_ vdd gnd tx_enable _114_ _115_ NAND3X1
XINVX1_27 _115_ _6_<2> vdd gnd INVX1
XOAI21X1_25 gnd vdd _178_ _103_ _116_ tx_enable OAI21X1
XNAND2X1_27 vdd _117_ gnd tx_cnt<3> _114_ NAND2X1
XOR2X2_1 _118_ tx_cnt<3> vdd gnd _114_ OR2X2
XAOI21X1_11 gnd vdd _118_ _117_ _6_<3> _116_ AOI21X1
XINVX1_28 tx_reg<0> _119_ vdd gnd INVX1
XINVX1_29 tx_data<0> _120_ vdd gnd INVX1
XAND2X2_3 vdd gnd _178_ ld_tx_data _121_ AND2X2
XMUX2X1_4 _121_ vdd gnd _9_<0> _120_ _119_ MUX2X1
XINVX1_30 tx_reg<1> _122_ vdd gnd INVX1
XINVX1_31 tx_data<1> _123_ vdd gnd INVX1
XMUX2X1_5 _121_ vdd gnd _9_<1> _123_ _122_ MUX2X1
XINVX1_32 tx_reg<2> _124_ vdd gnd INVX1
XINVX1_33 tx_data<2> _125_ vdd gnd INVX1
XMUX2X1_6 _121_ vdd gnd _9_<2> _125_ _124_ MUX2X1
XINVX1_34 tx_reg<3> _126_ vdd gnd INVX1
XINVX1_35 tx_data<3> _127_ vdd gnd INVX1
XMUX2X1_7 _121_ vdd gnd _9_<3> _127_ _126_ MUX2X1
XINVX1_36 tx_reg<4> _128_ vdd gnd INVX1
XINVX1_37 tx_data<4> _129_ vdd gnd INVX1
XMUX2X1_8 _121_ vdd gnd _9_<4> _129_ _128_ MUX2X1
XINVX1_38 tx_reg<5> _130_ vdd gnd INVX1
XINVX1_39 tx_data<5> _131_ vdd gnd INVX1
XMUX2X1_9 _121_ vdd gnd _9_<5> _131_ _130_ MUX2X1
XINVX1_40 tx_data<6> _132_ vdd gnd INVX1
XNOR2X1_24 vdd _121_ gnd _133_ tx_reg<6> NOR2X1
XAOI21X1_12 gnd vdd _132_ _121_ _9_<6> _133_ AOI21X1
XINVX1_41 tx_data<7> _134_ vdd gnd INVX1
XNOR2X1_25 vdd _121_ gnd _135_ tx_reg<7> NOR2X1
XAOI21X1_13 gnd vdd _134_ _121_ _9_<7> _135_ AOI21X1
XOR2X2_2 _136_ _104_ vdd gnd _103_ OR2X2
XOAI21X1_26 gnd vdd _100_ ld_tx_data _7_ _136_ OAI21X1
XNAND3X1_14 _111_ vdd gnd _98_ _101_ _137_ NAND3X1
XOAI21X1_27 gnd vdd tx_cnt<0> tx_cnt<1> _138_ tx_cnt<2> OAI21X1
XNAND3X1_15 _138_ vdd gnd _126_ _137_ _139_ NAND3X1
XOAI21X1_28 gnd vdd tx_cnt<0> tx_cnt<1> _140_ _111_ OAI21X1
XNAND3X1_16 _98_ vdd gnd tx_cnt<2> _101_ _141_ NAND3X1
XOAI21X1_29 gnd vdd tx_cnt<3> tx_cnt<2> _142_ tx_reg<7> OAI21X1
XNAND3X1_17 _140_ vdd gnd _142_ _141_ _143_ NAND3X1
XNAND3X1_18 _143_ vdd gnd _107_ _139_ _144_ NAND3X1
XXOR2X1_1 _145_ vdd tx_cnt<1> tx_cnt<0> gnd XOR2X1
XNAND3X1_19 _138_ vdd gnd _122_ _137_ _146_ NAND3X1
XNAND2X1_28 vdd _147_ gnd tx_cnt<2> _130_ NAND2X1
XNAND3X1_20 _147_ vdd gnd _145_ _146_ _148_ NAND3X1
XNAND3X1_21 _148_ vdd gnd _98_ _144_ _149_ NAND3X1
XNAND3X1_22 _138_ vdd gnd _124_ _137_ _150_ NAND3X1
XOAI21X1_30 gnd vdd tx_cnt<3> tx_cnt<2> _151_ tx_reg<6> OAI21X1
XNAND3X1_23 _140_ vdd gnd _151_ _141_ _152_ NAND3X1
XNAND3X1_24 _152_ vdd gnd _107_ _150_ _153_ NAND3X1
XNAND3X1_25 _138_ vdd gnd _119_ _137_ _154_ NAND3X1
XNAND2X1_29 vdd _155_ gnd tx_cnt<2> _128_ NAND2X1
XNAND3X1_26 _155_ vdd gnd _145_ _154_ _156_ NAND3X1
XNAND3X1_27 _156_ vdd gnd tx_cnt<0> _153_ _157_ NAND3X1
XNOR2X1_26 vdd _137_ gnd _158_ tx_cnt<3> NOR2X1
XINVX1_42 tx_cnt<3> _159_ vdd gnd INVX1
XAOI21X1_14 gnd vdd _140_ _111_ _160_ _159_ AOI21X1
XNOR3X1_2 vdd gnd _160_ _158_ _104_ _161_ NOR3X1
XNAND3X1_28 _149_ vdd gnd _161_ _157_ _162_ NAND3X1
XOAI21X1_31 gnd vdd _104_ _160_ _163_ _179_ OAI21X1
XAND2X2_4 vdd gnd _163_ _136_ _164_ AND2X2
XNAND2X1_30 vdd _8_ gnd _164_ _162_ NAND2X1
XNOR2X1_27 vdd _22_ gnd _165_ _11_ NOR2X1
XNAND2X1_31 vdd _167_ gnd rx_d2 _165_ NAND2X1
XOAI21X1_32 gnd vdd _96_ _165_ _4_<7> _167_ OAI21X1
XMUX2X1_10 _69_ vdd gnd _4_<6> _94_ _172_ MUX2X1
XNAND3X1_29 _46_ vdd gnd _16_ _23_ _168_ NAND3X1
XOAI21X1_33 gnd vdd _45_ _31_ _169_ rx_reg<5> OAI21X1
XOAI21X1_34 gnd vdd _172_ _168_ _4_<5> _169_ OAI21X1
XOAI21X1_35 gnd vdd rx_busy _172_ _170_ _38_ OAI21X1
XNAND3X1_30 _83_ vdd gnd rx_busy _61_ _171_ NAND3X1
XAOI21X1_15 gnd vdd _171_ _170_ _0_ _27_ AOI21X1
XINVX8_1 vdd gnd reset _166_ INVX8
XBUFX2_10 vdd gnd _176_<0> rx_data<0> BUFX2
XBUFX2_11 vdd gnd _176_<1> rx_data<1> BUFX2
XBUFX2_12 vdd gnd _176_<2> rx_data<2> BUFX2
XBUFX2_13 vdd gnd _176_<3> rx_data<3> BUFX2
XBUFX2_14 vdd gnd _176_<4> rx_data<4> BUFX2
XBUFX2_15 vdd gnd _176_<5> rx_data<5> BUFX2
XBUFX2_16 vdd gnd _176_<6> rx_data<6> BUFX2
XBUFX2_17 vdd gnd _176_<7> rx_data<7> BUFX2
XBUFX2_18 vdd gnd _177_ rx_empty BUFX2
XBUFX2_19 vdd gnd _178_ tx_empty BUFX2
XBUFX2_20 vdd gnd _179_ tx_out BUFX2
XDFFSR_1 gnd vdd _8_ _166__bF$buf5 vdd _179_ txclk DFFSR
XDFFSR_2 gnd vdd _7_ _166__bF$buf4 vdd _178_ txclk DFFSR
XDFFSR_3 gnd vdd _9_<0> vdd _166__bF$buf3 tx_reg<0> txclk DFFSR
XDFFSR_4 gnd vdd _9_<1> vdd _166__bF$buf2 tx_reg<1> txclk DFFSR
XDFFSR_5 gnd vdd _9_<2> vdd _166__bF$buf1 tx_reg<2> txclk DFFSR
XDFFSR_6 gnd vdd _9_<3> vdd _166__bF$buf0 tx_reg<3> txclk DFFSR
XDFFSR_7 gnd vdd _9_<4> vdd _166__bF$buf5 tx_reg<4> txclk DFFSR
XDFFSR_8 gnd vdd _9_<5> vdd _166__bF$buf4 tx_reg<5> txclk DFFSR
XDFFSR_9 gnd vdd _9_<6> vdd _166__bF$buf3 tx_reg<6> txclk DFFSR
XDFFSR_10 gnd vdd _9_<7> vdd _166__bF$buf2 tx_reg<7> txclk DFFSR
XDFFSR_11 gnd vdd _6_<0> vdd _166__bF$buf1 tx_cnt<0> txclk DFFSR
XDFFSR_12 gnd vdd _6_<1> vdd _166__bF$buf0 tx_cnt<1> txclk DFFSR
XDFFSR_13 gnd vdd _6_<2> vdd _166__bF$buf5 tx_cnt<2> txclk DFFSR
XDFFSR_14 gnd vdd _6_<3> vdd _166__bF$buf4 tx_cnt<3> txclk DFFSR
XDFFSR_15 gnd vdd _2_<0> vdd _166__bF$buf3 _176_<0> rxclk_bF$buf4 DFFSR
XDFFSR_16 gnd vdd _2_<1> vdd _166__bF$buf2 _176_<1> rxclk_bF$buf3 DFFSR
XDFFSR_17 gnd vdd _2_<2> vdd _166__bF$buf1 _176_<2> rxclk_bF$buf2 DFFSR
XDFFSR_18 gnd vdd _2_<3> vdd _166__bF$buf0 _176_<3> rxclk_bF$buf1 DFFSR
XDFFSR_19 gnd vdd _2_<4> vdd _166__bF$buf5 _176_<4> rxclk_bF$buf0 DFFSR
XDFFSR_20 gnd vdd _2_<5> vdd _166__bF$buf4 _176_<5> rxclk_bF$buf4 DFFSR
XDFFSR_21 gnd vdd _2_<6> vdd _166__bF$buf3 _176_<6> rxclk_bF$buf3 DFFSR
XDFFSR_22 gnd vdd _2_<7> vdd _166__bF$buf2 _176_<7> rxclk_bF$buf2 DFFSR
XDFFSR_23 gnd vdd _3_ _166__bF$buf1 vdd _177_ rxclk_bF$buf1 DFFSR
XDFFSR_24 gnd vdd _4_<0> vdd _166__bF$buf0 rx_reg<0> rxclk_bF$buf0 DFFSR
XDFFSR_25 gnd vdd _4_<1> vdd _166__bF$buf5 rx_reg<1> rxclk_bF$buf4 DFFSR
XDFFSR_26 gnd vdd _4_<2> vdd _166__bF$buf4 rx_reg<2> rxclk_bF$buf3 DFFSR
XDFFSR_27 gnd vdd _4_<3> vdd _166__bF$buf3 rx_reg<3> rxclk_bF$buf2 DFFSR
XDFFSR_28 gnd vdd _4_<4> vdd _166__bF$buf2 rx_reg<4> rxclk_bF$buf1 DFFSR
XDFFSR_29 gnd vdd _4_<5> vdd _166__bF$buf1 rx_reg<5> rxclk_bF$buf0 DFFSR
XDFFSR_30 gnd vdd _4_<6> vdd _166__bF$buf0 rx_reg<6> rxclk_bF$buf4 DFFSR
XDFFSR_31 gnd vdd _4_<7> vdd _166__bF$buf5 rx_reg<7> rxclk_bF$buf3 DFFSR
XDFFSR_32 gnd vdd _5_<0> vdd _166__bF$buf4 rx_sample_cnt<0> rxclk_bF$buf2 DFFSR
XDFFSR_33 gnd vdd _5_<1> vdd _166__bF$buf3 rx_sample_cnt<1> rxclk_bF$buf1 DFFSR
XDFFSR_34 gnd vdd _5_<2> vdd _166__bF$buf2 rx_sample_cnt<2> rxclk_bF$buf0 DFFSR
XDFFSR_35 gnd vdd _5_<3> vdd _166__bF$buf1 rx_sample_cnt<3> rxclk_bF$buf4 DFFSR
XDFFSR_36 gnd vdd _1_<0> vdd _166__bF$buf0 rx_cnt<0> rxclk_bF$buf3 DFFSR
XDFFSR_37 gnd vdd _1_<1> vdd _166__bF$buf5 rx_cnt<1> rxclk_bF$buf2 DFFSR
XDFFSR_38 gnd vdd _1_<2> vdd _166__bF$buf4 rx_cnt<2> rxclk_bF$buf1 DFFSR
XDFFSR_39 gnd vdd _1_<3> vdd _166__bF$buf3 rx_cnt<3> rxclk_bF$buf0 DFFSR
XDFFSR_40 gnd vdd rx_in _166__bF$buf2 vdd rx_d1 rxclk_bF$buf4 DFFSR
XDFFSR_41 gnd vdd rx_d1 _166__bF$buf1 vdd rx_d2 rxclk_bF$buf3 DFFSR
XDFFSR_42 gnd vdd _0_ vdd _166__bF$buf0 rx_busy rxclk_bF$buf2 DFFSR
.ends uart
 