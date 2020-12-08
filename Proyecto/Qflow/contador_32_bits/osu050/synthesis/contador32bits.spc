*SPICE netlist created from BLIF module contador32bits by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt contador32bits vdd gnd enable clk reset mode<0> mode<1> D<0> D<1> D<2> D<3> load rco Q<0> Q<1> Q<2> Q<3> Q<4> Q<5> Q<6> Q<7> Q<8> Q<9> Q<10> Q<11> Q<12> Q<13> Q<14> Q<15> Q<16> Q<17> Q<18> Q<19> Q<20> Q<21> Q<22> Q<23> Q<24> Q<25> Q<26> Q<27> Q<28> Q<29> Q<30> Q<31> 
XBUFX4_1 vdd gnd clk clk_bF$buf5 BUFX4
XBUFX4_2 vdd gnd clk clk_bF$buf4 BUFX4
XBUFX4_3 vdd gnd clk clk_bF$buf3 BUFX4
XBUFX4_4 vdd gnd clk clk_bF$buf2 BUFX4
XBUFX4_5 vdd gnd clk clk_bF$buf1 BUFX4
XBUFX4_6 vdd gnd clk clk_bF$buf0 BUFX4
XBUFX2_1 vdd gnd mode<1> mode_1_bF$buf3 BUFX2
XBUFX2_2 vdd gnd mode<1> mode_1_bF$buf2 BUFX2
XBUFX2_3 vdd gnd mode<1> mode_1_bF$buf1 BUFX2
XBUFX2_4 vdd gnd mode<1> mode_1_bF$buf0 BUFX2
XBUFX2_5 vdd gnd mode<0> mode_0_bF$buf3 BUFX2
XBUFX2_6 vdd gnd mode<0> mode_0_bF$buf2 BUFX2
XBUFX2_7 vdd gnd mode<0> mode_0_bF$buf1 BUFX2
XBUFX2_8 vdd gnd mode<0> mode_0_bF$buf0 BUFX2
XBUFX2_9 vdd gnd reset reset_bF$buf3 BUFX2
XBUFX2_10 vdd gnd reset reset_bF$buf2 BUFX2
XBUFX2_11 vdd gnd reset reset_bF$buf1 BUFX2
XBUFX2_12 vdd gnd reset reset_bF$buf0 BUFX2
XAOI21X1_1 gnd vdd _417_ _418_ _419_ _386_ AOI21X1
XOAI21X1_1 gnd vdd _416_ _419_ _420_ _385_ OAI21X1
XNAND2X1_1 vdd _421_ gnd _404_ _393_ NAND2X1
XNAND2X1_2 vdd _422_ gnd _392_ _391_ NAND2X1
XAOI22X1_1 gnd vdd _422_ _403_ _423_ D<2> _409_ AOI22X1
XNAND3X1_1 _423_ vdd gnd _421_ _420_ _379_<2> NAND3X1
XNAND3X1_2 _403_ vdd gnd _395_ _397_ _424_ NAND3X1
XNAND3X1_3 \$genblock$contador32bits.v:36$20<0>.op.Q<0> vdd gnd \$genblock$contador32bits.v:36$20<0>.op.Q<1> \$genblock$contador32bits.v:36$20<0>.op.Q<2> _425_ NAND3X1
XXNOR2X1_1 _425_ \$genblock$contador32bits.v:36$20<0>.op.Q<3> gnd vdd _426_ XNOR2X1
XAOI21X1_2 gnd vdd _386_ _396_ _427_ _384_ AOI21X1
XOAI21X1_2 gnd vdd _386_ _426_ _428_ _427_ OAI21X1
XAOI22X1_2 gnd vdd _400_ _404_ _429_ D<3> _409_ AOI22X1
XNAND3X1_4 _428_ vdd gnd _424_ _429_ _379_<3> NAND3X1
XDFFPOSX1_1 vdd _379_<0> gnd $genblock$contador32bits.v:36$20<0>.op.Q<0> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_2 vdd _379_<1> gnd $genblock$contador32bits.v:36$20<0>.op.Q<1> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_3 vdd _379_<2> gnd $genblock$contador32bits.v:36$20<0>.op.Q<2> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_4 vdd _379_<3> gnd $genblock$contador32bits.v:36$20<0>.op.Q<3> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_5 vdd _380_ gnd _0_ clk_bF$buf1 DFFPOSX1
XINVX1_1 mode_1_bF$buf3 _433_ vdd gnd INVX1
XINVX1_2 mode_0_bF$buf3 _434_ vdd gnd INVX1
XINVX1_3 reset_bF$buf3 _435_ vdd gnd INVX1
XNAND3X1_5 _434_ vdd gnd _433_ _435_ _436_ NAND3X1
XINVX1_4 _436_ _437_ vdd gnd INVX1
XINVX1_5 enable _438_ vdd gnd INVX1
XNAND2X1_3 vdd _439_ gnd \$genblock$contador32bits.v:36$14<24>.op.enable _438_ NAND2X1
XINVX1_6 op.Q<0> _440_ vdd gnd INVX1
XNAND2X1_4 vdd _441_ gnd enable _440_ NAND2X1
XNAND3X1_6 op.Q<2> vdd gnd op.Q<1> op.Q<3> _442_ NAND3X1
XOAI21X1_3 gnd vdd _442_ _441_ _443_ _439_ OAI21X1
XNAND2X1_5 vdd _444_ gnd _437_ _443_ NAND2X1
XINVX1_7 op.Q<1> _445_ vdd gnd INVX1
XINVX1_8 op.Q<2> _446_ vdd gnd INVX1
XNAND3X1_7 _440_ vdd gnd _445_ _446_ _447_ NAND3X1
XOAI21X1_4 gnd vdd op.Q<1> op.Q<0> _448_ op.Q<2> OAI21X1
XAND2X2_1 vdd gnd _447_ _448_ _449_ AND2X2
XNOR2X1_1 vdd op.Q<0> gnd _450_ op.Q<1> NOR2X1
XNAND3X1_8 op.Q<3> vdd gnd _446_ _450_ _451_ NAND3X1
XINVX1_9 op.Q<3> _452_ vdd gnd INVX1
XNAND2X1_6 vdd _453_ gnd _452_ _447_ NAND2X1
XNAND2X1_7 vdd _454_ gnd _451_ _453_ NAND2X1
XNAND2X1_8 vdd _455_ gnd op.Q<0> _445_ NAND2X1
XNAND3X1_9 _433_ vdd gnd mode_0_bF$buf2 _435_ _456_ NAND3X1
XNOR2X1_2 vdd _456_ gnd _457_ _455_ NOR2X1
XNAND3X1_10 _457_ vdd gnd _449_ _454_ _458_ NAND3X1
XINVX1_10 _450_ _459_ vdd gnd INVX1
XNAND3X1_11 _434_ vdd gnd mode_1_bF$buf2 _435_ _460_ NAND3X1
XNOR2X1_3 vdd _459_ gnd _461_ _460_ NOR2X1
XXOR2X1_1 _462_ vdd _452_ _448_ gnd XOR2X1
XNAND3X1_12 _462_ vdd gnd _449_ _461_ _463_ NAND3X1
XNAND3X1_13 _463_ vdd gnd _444_ _458_ _432_ NAND3X1
XNAND2X1_9 vdd _464_ gnd mode_1_bF$buf1 mode_0_bF$buf1 NAND2X1
XNAND2X1_10 vdd _465_ gnd _0_ _438_ NAND2X1
XOAI22X1_1 gnd vdd _436_ _465_ reset_bF$buf2 _464_ _431_ OAI22X1
XINVX1_11 _456_ _466_ vdd gnd INVX1
XINVX1_12 _460_ _467_ vdd gnd INVX1
XOAI21X1_5 gnd vdd _466_ _467_ _468_ _440_ OAI21X1
XINVX1_13 _441_ _469_ vdd gnd INVX1
XNOR2X1_4 vdd _440_ gnd _470_ enable NOR2X1
XOAI21X1_6 gnd vdd _470_ _469_ _471_ _437_ OAI21X1
XNOR2X1_5 vdd _464_ gnd _472_ reset_bF$buf1 NOR2X1
XNAND2X1_11 vdd _473_ gnd D<0> _472_ NAND2X1
XNAND3X1_14 _473_ vdd gnd _471_ _468_ _430_<0> NAND3X1
XXNOR2X1_2 op.Q<1> op.Q<0> gnd vdd _474_ XNOR2X1
XAOI21X1_3 gnd vdd _474_ enable _475_ _436_ AOI21X1
XOAI21X1_7 gnd vdd enable op.Q<1> _476_ _475_ OAI21X1
XOAI21X1_8 gnd vdd _466_ _467_ _477_ _474_ OAI21X1
XNAND2X1_12 vdd _478_ gnd D<1> _472_ NAND2X1
XNAND3X1_15 _477_ vdd gnd _478_ _476_ _430_<1> NAND3X1
XNOR2X1_6 vdd _446_ gnd _479_ enable NOR2X1
XOAI21X1_9 gnd vdd _445_ _440_ _480_ op.Q<2> OAI21X1
XNAND3X1_16 op.Q<0> vdd gnd op.Q<1> _446_ _481_ NAND3X1
XAOI21X1_4 gnd vdd _480_ _481_ _482_ _438_ AOI21X1
XOAI21X1_10 gnd vdd _479_ _482_ _483_ _437_ OAI21X1
XNAND2X1_13 vdd _484_ gnd _467_ _449_ NAND2X1
XNAND2X1_14 vdd _485_ gnd _448_ _447_ NAND2X1
XAOI22X1_3 gnd vdd _485_ _466_ _486_ D<2> _472_ AOI22X1
XNAND3X1_17 _486_ vdd gnd _484_ _483_ _430_<2> NAND3X1
XNAND3X1_18 _466_ vdd gnd _451_ _453_ _487_ NAND3X1
XNAND3X1_19 op.Q<0> vdd gnd op.Q<1> op.Q<2> _488_ NAND3X1
XXNOR2X1_3 _488_ op.Q<3> gnd vdd _489_ XNOR2X1
XAOI21X1_5 gnd vdd _438_ _452_ _490_ _436_ AOI21X1
XOAI21X1_11 gnd vdd _438_ _489_ _491_ _490_ OAI21X1
XAOI22X1_4 gnd vdd _462_ _467_ _492_ D<3> _472_ AOI22X1
XNAND3X1_20 _491_ vdd gnd _487_ _492_ _430_<3> NAND3X1
XDFFPOSX1_6 vdd _430_<0> gnd op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_7 vdd _430_<1> gnd op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_8 vdd _430_<2> gnd op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_9 vdd _430_<3> gnd op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_10 vdd _431_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_11 vdd _432_ gnd $genblock$contador32bits.v:36$14<24>.op.enable clk_bF$buf1 DFFPOSX1
XBUFX2_13 vdd gnd op.Q<0> Q<0> BUFX2
XBUFX2_14 vdd gnd op.Q<1> Q<1> BUFX2
XBUFX2_15 vdd gnd op.Q<2> Q<2> BUFX2
XBUFX2_16 vdd gnd op.Q<3> Q<3> BUFX2
XBUFX2_17 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<0> Q<4> BUFX2
XBUFX2_18 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<1> Q<5> BUFX2
XBUFX2_19 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<2> Q<6> BUFX2
XBUFX2_20 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<3> Q<7> BUFX2
XBUFX2_21 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<0> Q<8> BUFX2
XBUFX2_22 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<1> Q<9> BUFX2
XBUFX2_23 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<2> Q<10> BUFX2
XBUFX2_24 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<3> Q<11> BUFX2
XBUFX2_25 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<0> Q<12> BUFX2
XBUFX2_26 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<1> Q<13> BUFX2
XBUFX2_27 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<2> Q<14> BUFX2
XBUFX2_28 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<3> Q<15> BUFX2
XBUFX2_29 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<0> Q<16> BUFX2
XBUFX2_30 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<1> Q<17> BUFX2
XBUFX2_31 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<2> Q<18> BUFX2
XBUFX2_32 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<3> Q<19> BUFX2
XBUFX2_33 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<0> Q<20> BUFX2
XBUFX2_34 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<1> Q<21> BUFX2
XBUFX2_35 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<2> Q<22> BUFX2
XBUFX2_36 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<3> Q<23> BUFX2
XBUFX2_37 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<0> Q<24> BUFX2
XBUFX2_38 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<1> Q<25> BUFX2
XBUFX2_39 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<2> Q<26> BUFX2
XBUFX2_40 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<3> Q<27> BUFX2
XBUFX2_41 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<0> Q<28> BUFX2
XBUFX2_42 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<1> Q<29> BUFX2
XBUFX2_43 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<2> Q<30> BUFX2
XBUFX2_44 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<3> Q<31> BUFX2
XBUFX2_45 vdd gnd _0_ load BUFX2
XBUFX2_46 vdd gnd $undef rco BUFX2
XINVX1_14 mode_1_bF$buf0 _4_ vdd gnd INVX1
XINVX1_15 mode_0_bF$buf0 _5_ vdd gnd INVX1
XINVX1_16 reset_bF$buf0 _6_ vdd gnd INVX1
XNAND3X1_21 _5_ vdd gnd _4_ _6_ _7_ NAND3X1
XINVX1_17 _7_ _8_ vdd gnd INVX1
XINVX1_18 $genblock$contador32bits.v:36$14<24>.op.enable _9_ vdd gnd INVX1
XNAND2X1_15 vdd _10_ gnd \$genblock$contador32bits.v:36$14<24>.op.rco _9_ NAND2X1
XINVX1_19 $genblock$contador32bits.v:36$14<24>.op.Q<0> _11_ vdd gnd INVX1
XNAND2X1_16 vdd _12_ gnd $genblock$contador32bits.v:36$14<24>.op.enable _11_ NAND2X1
XNAND3X1_22 $genblock$contador32bits.v:36$14<24>.op.Q<2> vdd gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<3> _13_ NAND3X1
XOAI21X1_12 gnd vdd _13_ _12_ _14_ _10_ OAI21X1
XNAND2X1_17 vdd _15_ gnd _8_ _14_ NAND2X1
XINVX1_20 $genblock$contador32bits.v:36$14<24>.op.Q<1> _16_ vdd gnd INVX1
XINVX1_21 $genblock$contador32bits.v:36$14<24>.op.Q<2> _17_ vdd gnd INVX1
XNAND3X1_23 _11_ vdd gnd _16_ _17_ _18_ NAND3X1
XOAI21X1_13 gnd vdd $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<0> _19_ $genblock$contador32bits.v:36$14<24>.op.Q<2> OAI21X1
XAND2X2_2 vdd gnd _18_ _19_ _20_ AND2X2
XNOR2X1_7 vdd $genblock$contador32bits.v:36$14<24>.op.Q<0> gnd _21_ $genblock$contador32bits.v:36$14<24>.op.Q<1> NOR2X1
XNAND3X1_24 $genblock$contador32bits.v:36$14<24>.op.Q<3> vdd gnd _17_ _21_ _22_ NAND3X1
XINVX1_22 $genblock$contador32bits.v:36$14<24>.op.Q<3> _23_ vdd gnd INVX1
XNAND2X1_18 vdd _24_ gnd _23_ _18_ NAND2X1
XNAND2X1_19 vdd _25_ gnd _22_ _24_ NAND2X1
XNAND2X1_20 vdd _26_ gnd $genblock$contador32bits.v:36$14<24>.op.Q<0> _16_ NAND2X1
XNAND3X1_25 _4_ vdd gnd mode_0_bF$buf3 _6_ _27_ NAND3X1
XNOR2X1_8 vdd _27_ gnd _28_ _26_ NOR2X1
XNAND3X1_26 _28_ vdd gnd _20_ _25_ _29_ NAND3X1
XINVX1_23 _21_ _30_ vdd gnd INVX1
XNAND3X1_27 _5_ vdd gnd mode_1_bF$buf3 _6_ _31_ NAND3X1
XNOR2X1_9 vdd _30_ gnd _32_ _31_ NOR2X1
XXOR2X1_2 _33_ vdd _23_ _19_ gnd XOR2X1
XNAND3X1_28 _33_ vdd gnd _20_ _32_ _34_ NAND3X1
XNAND3X1_29 _34_ vdd gnd _15_ _29_ _3_ NAND3X1
XNAND2X1_21 vdd _35_ gnd mode_1_bF$buf2 mode_0_bF$buf2 NAND2X1
XNAND2X1_22 vdd _36_ gnd _0_ _9_ NAND2X1
XOAI22X1_2 gnd vdd _7_ _36_ reset_bF$buf3 _35_ _2_ OAI22X1
XINVX1_24 _27_ _37_ vdd gnd INVX1
XINVX1_25 _31_ _38_ vdd gnd INVX1
XOAI21X1_14 gnd vdd _37_ _38_ _39_ _11_ OAI21X1
XINVX1_26 _12_ _40_ vdd gnd INVX1
XNOR2X1_10 vdd _11_ gnd _41_ $genblock$contador32bits.v:36$14<24>.op.enable NOR2X1
XOAI21X1_15 gnd vdd _41_ _40_ _42_ _8_ OAI21X1
XNOR2X1_11 vdd _35_ gnd _43_ reset_bF$buf2 NOR2X1
XNAND2X1_23 vdd _44_ gnd D<0> _43_ NAND2X1
XNAND3X1_30 _44_ vdd gnd _42_ _39_ _1_<0> NAND3X1
XXNOR2X1_4 $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<0> gnd vdd _45_ XNOR2X1
XAOI21X1_6 gnd vdd _45_ $genblock$contador32bits.v:36$14<24>.op.enable _46_ _7_ AOI21X1
XOAI21X1_16 gnd vdd $genblock$contador32bits.v:36$14<24>.op.enable $genblock$contador32bits.v:36$14<24>.op.Q<1> _47_ _46_ OAI21X1
XOAI21X1_17 gnd vdd _37_ _38_ _48_ _45_ OAI21X1
XNAND2X1_24 vdd _49_ gnd D<1> _43_ NAND2X1
XNAND3X1_31 _48_ vdd gnd _49_ _47_ _1_<1> NAND3X1
XNOR2X1_12 vdd _17_ gnd _50_ $genblock$contador32bits.v:36$14<24>.op.enable NOR2X1
XOAI21X1_18 gnd vdd _16_ _11_ _51_ $genblock$contador32bits.v:36$14<24>.op.Q<2> OAI21X1
XNAND3X1_32 $genblock$contador32bits.v:36$14<24>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> _17_ _52_ NAND3X1
XAOI21X1_7 gnd vdd _51_ _52_ _53_ _9_ AOI21X1
XOAI21X1_19 gnd vdd _50_ _53_ _54_ _8_ OAI21X1
XNAND2X1_25 vdd _55_ gnd _38_ _20_ NAND2X1
XNAND2X1_26 vdd _56_ gnd _19_ _18_ NAND2X1
XAOI22X1_5 gnd vdd _56_ _37_ _57_ D<2> _43_ AOI22X1
XNAND3X1_33 _57_ vdd gnd _55_ _54_ _1_<2> NAND3X1
XNAND3X1_34 _37_ vdd gnd _22_ _24_ _58_ NAND3X1
XNAND3X1_35 $genblock$contador32bits.v:36$14<24>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<2> _59_ NAND3X1
XXNOR2X1_5 _59_ $genblock$contador32bits.v:36$14<24>.op.Q<3> gnd vdd _60_ XNOR2X1
XAOI21X1_8 gnd vdd _9_ _23_ _61_ _7_ AOI21X1
XOAI21X1_20 gnd vdd _9_ _60_ _62_ _61_ OAI21X1
XAOI22X1_6 gnd vdd _33_ _38_ _63_ D<3> _43_ AOI22X1
XNAND3X1_36 _62_ vdd gnd _58_ _63_ _1_<3> NAND3X1
XDFFPOSX1_12 vdd _1_<0> gnd $genblock$contador32bits.v:36$14<24>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_13 vdd _1_<1> gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_14 vdd _1_<2> gnd $genblock$contador32bits.v:36$14<24>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_15 vdd _1_<3> gnd $genblock$contador32bits.v:36$14<24>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_16 vdd _2_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_17 vdd _3_ gnd $genblock$contador32bits.v:36$14<24>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_27 mode_1_bF$buf1 _67_ vdd gnd INVX1
XINVX1_28 mode_0_bF$buf1 _68_ vdd gnd INVX1
XINVX1_29 reset_bF$buf1 _69_ vdd gnd INVX1
XNAND3X1_37 _68_ vdd gnd _67_ _69_ _70_ NAND3X1
XINVX1_30 _70_ _71_ vdd gnd INVX1
XINVX1_31 $genblock$contador32bits.v:36$14<24>.op.rco _72_ vdd gnd INVX1
XNAND2X1_27 vdd _73_ gnd \$genblock$contador32bits.v:36$15<20>.op.rco _72_ NAND2X1
XINVX1_32 $genblock$contador32bits.v:36$15<20>.op.Q<0> _74_ vdd gnd INVX1
XNAND2X1_28 vdd _75_ gnd $genblock$contador32bits.v:36$14<24>.op.rco _74_ NAND2X1
XNAND3X1_38 $genblock$contador32bits.v:36$15<20>.op.Q<2> vdd gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<3> _76_ NAND3X1
XOAI21X1_21 gnd vdd _76_ _75_ _77_ _73_ OAI21X1
XNAND2X1_29 vdd _78_ gnd _71_ _77_ NAND2X1
XINVX1_33 $genblock$contador32bits.v:36$15<20>.op.Q<1> _79_ vdd gnd INVX1
XINVX1_34 $genblock$contador32bits.v:36$15<20>.op.Q<2> _80_ vdd gnd INVX1
XNAND3X1_39 _74_ vdd gnd _79_ _80_ _81_ NAND3X1
XOAI21X1_22 gnd vdd $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<0> _82_ $genblock$contador32bits.v:36$15<20>.op.Q<2> OAI21X1
XAND2X2_3 vdd gnd _81_ _82_ _83_ AND2X2
XNOR2X1_13 vdd $genblock$contador32bits.v:36$15<20>.op.Q<0> gnd _84_ $genblock$contador32bits.v:36$15<20>.op.Q<1> NOR2X1
XNAND3X1_40 $genblock$contador32bits.v:36$15<20>.op.Q<3> vdd gnd _80_ _84_ _85_ NAND3X1
XINVX1_35 $genblock$contador32bits.v:36$15<20>.op.Q<3> _86_ vdd gnd INVX1
XNAND2X1_30 vdd _87_ gnd _86_ _81_ NAND2X1
XNAND2X1_31 vdd _88_ gnd _85_ _87_ NAND2X1
XNAND2X1_32 vdd _89_ gnd $genblock$contador32bits.v:36$15<20>.op.Q<0> _79_ NAND2X1
XNAND3X1_41 _67_ vdd gnd mode_0_bF$buf0 _69_ _90_ NAND3X1
XNOR2X1_14 vdd _90_ gnd _91_ _89_ NOR2X1
XNAND3X1_42 _91_ vdd gnd _83_ _88_ _92_ NAND3X1
XINVX1_36 _84_ _93_ vdd gnd INVX1
XNAND3X1_43 _68_ vdd gnd mode_1_bF$buf0 _69_ _94_ NAND3X1
XNOR2X1_15 vdd _93_ gnd _95_ _94_ NOR2X1
XXOR2X1_3 _96_ vdd _86_ _82_ gnd XOR2X1
XNAND3X1_44 _96_ vdd gnd _83_ _95_ _97_ NAND3X1
XNAND3X1_45 _97_ vdd gnd _78_ _92_ _66_ NAND3X1
XNAND2X1_33 vdd _98_ gnd mode_1_bF$buf3 mode_0_bF$buf3 NAND2X1
XNAND2X1_34 vdd _99_ gnd _0_ _72_ NAND2X1
XOAI22X1_3 gnd vdd _70_ _99_ reset_bF$buf0 _98_ _65_ OAI22X1
XINVX1_37 _90_ _100_ vdd gnd INVX1
XINVX1_38 _94_ _101_ vdd gnd INVX1
XOAI21X1_23 gnd vdd _100_ _101_ _102_ _74_ OAI21X1
XINVX1_39 _75_ _103_ vdd gnd INVX1
XNOR2X1_16 vdd _74_ gnd _104_ $genblock$contador32bits.v:36$14<24>.op.rco NOR2X1
XOAI21X1_24 gnd vdd _104_ _103_ _105_ _71_ OAI21X1
XNOR2X1_17 vdd _98_ gnd _106_ reset_bF$buf3 NOR2X1
XNAND2X1_35 vdd _107_ gnd D<0> _106_ NAND2X1
XNAND3X1_46 _107_ vdd gnd _105_ _102_ _64_<0> NAND3X1
XXNOR2X1_6 $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<0> gnd vdd _108_ XNOR2X1
XAOI21X1_9 gnd vdd _108_ $genblock$contador32bits.v:36$14<24>.op.rco _109_ _70_ AOI21X1
XOAI21X1_25 gnd vdd $genblock$contador32bits.v:36$14<24>.op.rco $genblock$contador32bits.v:36$15<20>.op.Q<1> _110_ _109_ OAI21X1
XOAI21X1_26 gnd vdd _100_ _101_ _111_ _108_ OAI21X1
XNAND2X1_36 vdd _112_ gnd D<1> _106_ NAND2X1
XNAND3X1_47 _111_ vdd gnd _112_ _110_ _64_<1> NAND3X1
XNOR2X1_18 vdd _80_ gnd _113_ $genblock$contador32bits.v:36$14<24>.op.rco NOR2X1
XOAI21X1_27 gnd vdd _79_ _74_ _114_ $genblock$contador32bits.v:36$15<20>.op.Q<2> OAI21X1
XNAND3X1_48 $genblock$contador32bits.v:36$15<20>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> _80_ _115_ NAND3X1
XAOI21X1_10 gnd vdd _114_ _115_ _116_ _72_ AOI21X1
XOAI21X1_28 gnd vdd _113_ _116_ _117_ _71_ OAI21X1
XNAND2X1_37 vdd _118_ gnd _101_ _83_ NAND2X1
XNAND2X1_38 vdd _119_ gnd _82_ _81_ NAND2X1
XAOI22X1_7 gnd vdd _119_ _100_ _120_ D<2> _106_ AOI22X1
XNAND3X1_49 _120_ vdd gnd _118_ _117_ _64_<2> NAND3X1
XNAND3X1_50 _100_ vdd gnd _85_ _87_ _121_ NAND3X1
XNAND3X1_51 $genblock$contador32bits.v:36$15<20>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<2> _122_ NAND3X1
XXNOR2X1_7 _122_ $genblock$contador32bits.v:36$15<20>.op.Q<3> gnd vdd _123_ XNOR2X1
XAOI21X1_11 gnd vdd _72_ _86_ _124_ _70_ AOI21X1
XOAI21X1_29 gnd vdd _72_ _123_ _125_ _124_ OAI21X1
XAOI22X1_8 gnd vdd _96_ _101_ _126_ D<3> _106_ AOI22X1
XNAND3X1_52 _125_ vdd gnd _121_ _126_ _64_<3> NAND3X1
XDFFPOSX1_18 vdd _64_<0> gnd $genblock$contador32bits.v:36$15<20>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_19 vdd _64_<1> gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_20 vdd _64_<2> gnd $genblock$contador32bits.v:36$15<20>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_21 vdd _64_<3> gnd $genblock$contador32bits.v:36$15<20>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_22 vdd _65_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_23 vdd _66_ gnd $genblock$contador32bits.v:36$15<20>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_40 mode_1_bF$buf2 _130_ vdd gnd INVX1
XINVX1_41 mode_0_bF$buf2 _131_ vdd gnd INVX1
XINVX1_42 reset_bF$buf2 _132_ vdd gnd INVX1
XNAND3X1_53 _131_ vdd gnd _130_ _132_ _133_ NAND3X1
XINVX1_43 _133_ _134_ vdd gnd INVX1
XINVX1_44 $genblock$contador32bits.v:36$15<20>.op.rco _135_ vdd gnd INVX1
XNAND2X1_39 vdd _136_ gnd \$genblock$contador32bits.v:36$16<16>.op.rco _135_ NAND2X1
XINVX1_45 $genblock$contador32bits.v:36$16<16>.op.Q<0> _137_ vdd gnd INVX1
XNAND2X1_40 vdd _138_ gnd $genblock$contador32bits.v:36$15<20>.op.rco _137_ NAND2X1
XNAND3X1_54 $genblock$contador32bits.v:36$16<16>.op.Q<2> vdd gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<3> _139_ NAND3X1
XOAI21X1_30 gnd vdd _139_ _138_ _140_ _136_ OAI21X1
XNAND2X1_41 vdd _141_ gnd _134_ _140_ NAND2X1
XINVX1_46 $genblock$contador32bits.v:36$16<16>.op.Q<1> _142_ vdd gnd INVX1
XINVX1_47 $genblock$contador32bits.v:36$16<16>.op.Q<2> _143_ vdd gnd INVX1
XNAND3X1_55 _137_ vdd gnd _142_ _143_ _144_ NAND3X1
XOAI21X1_31 gnd vdd $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<0> _145_ $genblock$contador32bits.v:36$16<16>.op.Q<2> OAI21X1
XAND2X2_4 vdd gnd _144_ _145_ _146_ AND2X2
XNOR2X1_19 vdd $genblock$contador32bits.v:36$16<16>.op.Q<0> gnd _147_ $genblock$contador32bits.v:36$16<16>.op.Q<1> NOR2X1
XNAND3X1_56 $genblock$contador32bits.v:36$16<16>.op.Q<3> vdd gnd _143_ _147_ _148_ NAND3X1
XINVX1_48 $genblock$contador32bits.v:36$16<16>.op.Q<3> _149_ vdd gnd INVX1
XNAND2X1_42 vdd _150_ gnd _149_ _144_ NAND2X1
XNAND2X1_43 vdd _151_ gnd _148_ _150_ NAND2X1
XNAND2X1_44 vdd _152_ gnd $genblock$contador32bits.v:36$16<16>.op.Q<0> _142_ NAND2X1
XNAND3X1_57 _130_ vdd gnd mode_0_bF$buf1 _132_ _153_ NAND3X1
XNOR2X1_20 vdd _153_ gnd _154_ _152_ NOR2X1
XNAND3X1_58 _154_ vdd gnd _146_ _151_ _155_ NAND3X1
XINVX1_49 _147_ _156_ vdd gnd INVX1
XNAND3X1_59 _131_ vdd gnd mode_1_bF$buf1 _132_ _157_ NAND3X1
XNOR2X1_21 vdd _156_ gnd _158_ _157_ NOR2X1
XXOR2X1_4 _159_ vdd _149_ _145_ gnd XOR2X1
XNAND3X1_60 _159_ vdd gnd _146_ _158_ _160_ NAND3X1
XNAND3X1_61 _160_ vdd gnd _141_ _155_ _129_ NAND3X1
XNAND2X1_45 vdd _161_ gnd mode_1_bF$buf0 mode_0_bF$buf0 NAND2X1
XNAND2X1_46 vdd _162_ gnd _0_ _135_ NAND2X1
XOAI22X1_4 gnd vdd _133_ _162_ reset_bF$buf1 _161_ _128_ OAI22X1
XINVX1_50 _153_ _163_ vdd gnd INVX1
XINVX1_51 _157_ _164_ vdd gnd INVX1
XOAI21X1_32 gnd vdd _163_ _164_ _165_ _137_ OAI21X1
XINVX1_52 _138_ _166_ vdd gnd INVX1
XNOR2X1_22 vdd _137_ gnd _167_ $genblock$contador32bits.v:36$15<20>.op.rco NOR2X1
XOAI21X1_33 gnd vdd _167_ _166_ _168_ _134_ OAI21X1
XNOR2X1_23 vdd _161_ gnd _169_ reset_bF$buf0 NOR2X1
XNAND2X1_47 vdd _170_ gnd D<0> _169_ NAND2X1
XNAND3X1_62 _170_ vdd gnd _168_ _165_ _127_<0> NAND3X1
XXNOR2X1_8 $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<0> gnd vdd _171_ XNOR2X1
XAOI21X1_12 gnd vdd _171_ $genblock$contador32bits.v:36$15<20>.op.rco _172_ _133_ AOI21X1
XOAI21X1_34 gnd vdd $genblock$contador32bits.v:36$15<20>.op.rco $genblock$contador32bits.v:36$16<16>.op.Q<1> _173_ _172_ OAI21X1
XOAI21X1_35 gnd vdd _163_ _164_ _174_ _171_ OAI21X1
XNAND2X1_48 vdd _175_ gnd D<1> _169_ NAND2X1
XNAND3X1_63 _174_ vdd gnd _175_ _173_ _127_<1> NAND3X1
XNOR2X1_24 vdd _143_ gnd _176_ $genblock$contador32bits.v:36$15<20>.op.rco NOR2X1
XOAI21X1_36 gnd vdd _142_ _137_ _177_ $genblock$contador32bits.v:36$16<16>.op.Q<2> OAI21X1
XNAND3X1_64 $genblock$contador32bits.v:36$16<16>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> _143_ _178_ NAND3X1
XAOI21X1_13 gnd vdd _177_ _178_ _179_ _135_ AOI21X1
XOAI21X1_37 gnd vdd _176_ _179_ _180_ _134_ OAI21X1
XNAND2X1_49 vdd _181_ gnd _164_ _146_ NAND2X1
XNAND2X1_50 vdd _182_ gnd _145_ _144_ NAND2X1
XAOI22X1_9 gnd vdd _182_ _163_ _183_ D<2> _169_ AOI22X1
XNAND3X1_65 _183_ vdd gnd _181_ _180_ _127_<2> NAND3X1
XNAND3X1_66 _163_ vdd gnd _148_ _150_ _184_ NAND3X1
XNAND3X1_67 $genblock$contador32bits.v:36$16<16>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<2> _185_ NAND3X1
XXNOR2X1_9 _185_ $genblock$contador32bits.v:36$16<16>.op.Q<3> gnd vdd _186_ XNOR2X1
XAOI21X1_14 gnd vdd _135_ _149_ _187_ _133_ AOI21X1
XOAI21X1_38 gnd vdd _135_ _186_ _188_ _187_ OAI21X1
XAOI22X1_10 gnd vdd _159_ _164_ _189_ D<3> _169_ AOI22X1
XNAND3X1_68 _188_ vdd gnd _184_ _189_ _127_<3> NAND3X1
XDFFPOSX1_24 vdd _127_<0> gnd $genblock$contador32bits.v:36$16<16>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_25 vdd _127_<1> gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_26 vdd _127_<2> gnd $genblock$contador32bits.v:36$16<16>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_27 vdd _127_<3> gnd $genblock$contador32bits.v:36$16<16>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_28 vdd _128_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_29 vdd _129_ gnd $genblock$contador32bits.v:36$16<16>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_53 mode_1_bF$buf3 _193_ vdd gnd INVX1
XINVX1_54 mode_0_bF$buf3 _194_ vdd gnd INVX1
XINVX1_55 reset_bF$buf3 _195_ vdd gnd INVX1
XNAND3X1_69 _194_ vdd gnd _193_ _195_ _196_ NAND3X1
XINVX1_56 _196_ _197_ vdd gnd INVX1
XINVX1_57 $genblock$contador32bits.v:36$16<16>.op.rco _198_ vdd gnd INVX1
XNAND2X1_51 vdd _199_ gnd \$genblock$contador32bits.v:36$17<12>.op.rco _198_ NAND2X1
XINVX1_58 $genblock$contador32bits.v:36$17<12>.op.Q<0> _200_ vdd gnd INVX1
XNAND2X1_52 vdd _201_ gnd $genblock$contador32bits.v:36$16<16>.op.rco _200_ NAND2X1
XNAND3X1_70 $genblock$contador32bits.v:36$17<12>.op.Q<2> vdd gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<3> _202_ NAND3X1
XOAI21X1_39 gnd vdd _202_ _201_ _203_ _199_ OAI21X1
XNAND2X1_53 vdd _204_ gnd _197_ _203_ NAND2X1
XINVX1_59 $genblock$contador32bits.v:36$17<12>.op.Q<1> _205_ vdd gnd INVX1
XINVX1_60 $genblock$contador32bits.v:36$17<12>.op.Q<2> _206_ vdd gnd INVX1
XNAND3X1_71 _200_ vdd gnd _205_ _206_ _207_ NAND3X1
XOAI21X1_40 gnd vdd $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<0> _208_ $genblock$contador32bits.v:36$17<12>.op.Q<2> OAI21X1
XAND2X2_5 vdd gnd _207_ _208_ _209_ AND2X2
XNOR2X1_25 vdd $genblock$contador32bits.v:36$17<12>.op.Q<0> gnd _210_ $genblock$contador32bits.v:36$17<12>.op.Q<1> NOR2X1
XNAND3X1_72 $genblock$contador32bits.v:36$17<12>.op.Q<3> vdd gnd _206_ _210_ _211_ NAND3X1
XINVX1_61 $genblock$contador32bits.v:36$17<12>.op.Q<3> _212_ vdd gnd INVX1
XNAND2X1_54 vdd _213_ gnd _212_ _207_ NAND2X1
XNAND2X1_55 vdd _214_ gnd _211_ _213_ NAND2X1
XNAND2X1_56 vdd _215_ gnd $genblock$contador32bits.v:36$17<12>.op.Q<0> _205_ NAND2X1
XNAND3X1_73 _193_ vdd gnd mode_0_bF$buf2 _195_ _216_ NAND3X1
XNOR2X1_26 vdd _216_ gnd _217_ _215_ NOR2X1
XNAND3X1_74 _217_ vdd gnd _209_ _214_ _218_ NAND3X1
XINVX1_62 _210_ _219_ vdd gnd INVX1
XNAND3X1_75 _194_ vdd gnd mode_1_bF$buf2 _195_ _220_ NAND3X1
XNOR2X1_27 vdd _219_ gnd _221_ _220_ NOR2X1
XXOR2X1_5 _222_ vdd _212_ _208_ gnd XOR2X1
XNAND3X1_76 _222_ vdd gnd _209_ _221_ _223_ NAND3X1
XNAND3X1_77 _223_ vdd gnd _204_ _218_ _192_ NAND3X1
XNAND2X1_57 vdd _224_ gnd mode_1_bF$buf1 mode_0_bF$buf1 NAND2X1
XNAND2X1_58 vdd _225_ gnd _0_ _198_ NAND2X1
XOAI22X1_5 gnd vdd _196_ _225_ reset_bF$buf2 _224_ _191_ OAI22X1
XINVX1_63 _216_ _226_ vdd gnd INVX1
XINVX1_64 _220_ _227_ vdd gnd INVX1
XOAI21X1_41 gnd vdd _226_ _227_ _228_ _200_ OAI21X1
XINVX1_65 _201_ _229_ vdd gnd INVX1
XNOR2X1_28 vdd _200_ gnd _230_ $genblock$contador32bits.v:36$16<16>.op.rco NOR2X1
XOAI21X1_42 gnd vdd _230_ _229_ _231_ _197_ OAI21X1
XNOR2X1_29 vdd _224_ gnd _232_ reset_bF$buf1 NOR2X1
XNAND2X1_59 vdd _233_ gnd D<0> _232_ NAND2X1
XNAND3X1_78 _233_ vdd gnd _231_ _228_ _190_<0> NAND3X1
XXNOR2X1_10 $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<0> gnd vdd _234_ XNOR2X1
XAOI21X1_15 gnd vdd _234_ $genblock$contador32bits.v:36$16<16>.op.rco _235_ _196_ AOI21X1
XOAI21X1_43 gnd vdd $genblock$contador32bits.v:36$16<16>.op.rco $genblock$contador32bits.v:36$17<12>.op.Q<1> _236_ _235_ OAI21X1
XOAI21X1_44 gnd vdd _226_ _227_ _237_ _234_ OAI21X1
XNAND2X1_60 vdd _238_ gnd D<1> _232_ NAND2X1
XNAND3X1_79 _237_ vdd gnd _238_ _236_ _190_<1> NAND3X1
XNOR2X1_30 vdd _206_ gnd _239_ $genblock$contador32bits.v:36$16<16>.op.rco NOR2X1
XOAI21X1_45 gnd vdd _205_ _200_ _240_ $genblock$contador32bits.v:36$17<12>.op.Q<2> OAI21X1
XNAND3X1_80 $genblock$contador32bits.v:36$17<12>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> _206_ _241_ NAND3X1
XAOI21X1_16 gnd vdd _240_ _241_ _242_ _198_ AOI21X1
XOAI21X1_46 gnd vdd _239_ _242_ _243_ _197_ OAI21X1
XNAND2X1_61 vdd _244_ gnd _227_ _209_ NAND2X1
XNAND2X1_62 vdd _245_ gnd _208_ _207_ NAND2X1
XAOI22X1_11 gnd vdd _245_ _226_ _246_ D<2> _232_ AOI22X1
XNAND3X1_81 _246_ vdd gnd _244_ _243_ _190_<2> NAND3X1
XNAND3X1_82 _226_ vdd gnd _211_ _213_ _247_ NAND3X1
XNAND3X1_83 $genblock$contador32bits.v:36$17<12>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<2> _248_ NAND3X1
XXNOR2X1_11 _248_ $genblock$contador32bits.v:36$17<12>.op.Q<3> gnd vdd _249_ XNOR2X1
XAOI21X1_17 gnd vdd _198_ _212_ _250_ _196_ AOI21X1
XOAI21X1_47 gnd vdd _198_ _249_ _251_ _250_ OAI21X1
XAOI22X1_12 gnd vdd _222_ _227_ _252_ D<3> _232_ AOI22X1
XNAND3X1_84 _251_ vdd gnd _247_ _252_ _190_<3> NAND3X1
XDFFPOSX1_30 vdd _190_<0> gnd $genblock$contador32bits.v:36$17<12>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_31 vdd _190_<1> gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_32 vdd _190_<2> gnd $genblock$contador32bits.v:36$17<12>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_33 vdd _190_<3> gnd $genblock$contador32bits.v:36$17<12>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_34 vdd _191_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_35 vdd _192_ gnd $genblock$contador32bits.v:36$17<12>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_66 mode_1_bF$buf0 _256_ vdd gnd INVX1
XINVX1_67 mode_0_bF$buf0 _257_ vdd gnd INVX1
XINVX1_68 reset_bF$buf0 _258_ vdd gnd INVX1
XNAND3X1_85 _257_ vdd gnd _256_ _258_ _259_ NAND3X1
XINVX1_69 _259_ _260_ vdd gnd INVX1
XINVX1_70 $genblock$contador32bits.v:36$17<12>.op.rco _261_ vdd gnd INVX1
XNAND2X1_63 vdd _262_ gnd \$genblock$contador32bits.v:36$18<8>.op.rco _261_ NAND2X1
XINVX1_71 $genblock$contador32bits.v:36$18<8>.op.Q<0> _263_ vdd gnd INVX1
XNAND2X1_64 vdd _264_ gnd $genblock$contador32bits.v:36$17<12>.op.rco _263_ NAND2X1
XNAND3X1_86 $genblock$contador32bits.v:36$18<8>.op.Q<2> vdd gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<3> _265_ NAND3X1
XOAI21X1_48 gnd vdd _265_ _264_ _266_ _262_ OAI21X1
XNAND2X1_65 vdd _267_ gnd _260_ _266_ NAND2X1
XINVX1_72 $genblock$contador32bits.v:36$18<8>.op.Q<1> _268_ vdd gnd INVX1
XINVX1_73 $genblock$contador32bits.v:36$18<8>.op.Q<2> _269_ vdd gnd INVX1
XNAND3X1_87 _263_ vdd gnd _268_ _269_ _270_ NAND3X1
XOAI21X1_49 gnd vdd $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<0> _271_ $genblock$contador32bits.v:36$18<8>.op.Q<2> OAI21X1
XAND2X2_6 vdd gnd _270_ _271_ _272_ AND2X2
XNOR2X1_31 vdd $genblock$contador32bits.v:36$18<8>.op.Q<0> gnd _273_ $genblock$contador32bits.v:36$18<8>.op.Q<1> NOR2X1
XNAND3X1_88 $genblock$contador32bits.v:36$18<8>.op.Q<3> vdd gnd _269_ _273_ _274_ NAND3X1
XINVX1_74 $genblock$contador32bits.v:36$18<8>.op.Q<3> _275_ vdd gnd INVX1
XNAND2X1_66 vdd _276_ gnd _275_ _270_ NAND2X1
XNAND2X1_67 vdd _277_ gnd _274_ _276_ NAND2X1
XNAND2X1_68 vdd _278_ gnd $genblock$contador32bits.v:36$18<8>.op.Q<0> _268_ NAND2X1
XNAND3X1_89 _256_ vdd gnd mode_0_bF$buf3 _258_ _279_ NAND3X1
XNOR2X1_32 vdd _279_ gnd _280_ _278_ NOR2X1
XNAND3X1_90 _280_ vdd gnd _272_ _277_ _281_ NAND3X1
XINVX1_75 _273_ _282_ vdd gnd INVX1
XNAND3X1_91 _257_ vdd gnd mode_1_bF$buf3 _258_ _283_ NAND3X1
XNOR2X1_33 vdd _282_ gnd _284_ _283_ NOR2X1
XXOR2X1_6 _285_ vdd _275_ _271_ gnd XOR2X1
XNAND3X1_92 _285_ vdd gnd _272_ _284_ _286_ NAND3X1
XNAND3X1_93 _286_ vdd gnd _267_ _281_ _255_ NAND3X1
XNAND2X1_69 vdd _287_ gnd mode_1_bF$buf2 mode_0_bF$buf2 NAND2X1
XNAND2X1_70 vdd _288_ gnd _0_ _261_ NAND2X1
XOAI22X1_6 gnd vdd _259_ _288_ reset_bF$buf3 _287_ _254_ OAI22X1
XINVX1_76 _279_ _289_ vdd gnd INVX1
XINVX1_77 _283_ _290_ vdd gnd INVX1
XOAI21X1_50 gnd vdd _289_ _290_ _291_ _263_ OAI21X1
XINVX1_78 _264_ _292_ vdd gnd INVX1
XNOR2X1_34 vdd _263_ gnd _293_ $genblock$contador32bits.v:36$17<12>.op.rco NOR2X1
XOAI21X1_51 gnd vdd _293_ _292_ _294_ _260_ OAI21X1
XNOR2X1_35 vdd _287_ gnd _295_ reset_bF$buf2 NOR2X1
XNAND2X1_71 vdd _296_ gnd D<0> _295_ NAND2X1
XNAND3X1_94 _296_ vdd gnd _294_ _291_ _253_<0> NAND3X1
XXNOR2X1_12 $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<0> gnd vdd _297_ XNOR2X1
XAOI21X1_18 gnd vdd _297_ $genblock$contador32bits.v:36$17<12>.op.rco _298_ _259_ AOI21X1
XOAI21X1_52 gnd vdd $genblock$contador32bits.v:36$17<12>.op.rco $genblock$contador32bits.v:36$18<8>.op.Q<1> _299_ _298_ OAI21X1
XOAI21X1_53 gnd vdd _289_ _290_ _300_ _297_ OAI21X1
XNAND2X1_72 vdd _301_ gnd D<1> _295_ NAND2X1
XNAND3X1_95 _300_ vdd gnd _301_ _299_ _253_<1> NAND3X1
XNOR2X1_36 vdd _269_ gnd _302_ $genblock$contador32bits.v:36$17<12>.op.rco NOR2X1
XOAI21X1_54 gnd vdd _268_ _263_ _303_ $genblock$contador32bits.v:36$18<8>.op.Q<2> OAI21X1
XNAND3X1_96 $genblock$contador32bits.v:36$18<8>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> _269_ _304_ NAND3X1
XAOI21X1_19 gnd vdd _303_ _304_ _305_ _261_ AOI21X1
XOAI21X1_55 gnd vdd _302_ _305_ _306_ _260_ OAI21X1
XNAND2X1_73 vdd _307_ gnd _290_ _272_ NAND2X1
XNAND2X1_74 vdd _308_ gnd _271_ _270_ NAND2X1
XAOI22X1_13 gnd vdd _308_ _289_ _309_ D<2> _295_ AOI22X1
XNAND3X1_97 _309_ vdd gnd _307_ _306_ _253_<2> NAND3X1
XNAND3X1_98 _289_ vdd gnd _274_ _276_ _310_ NAND3X1
XNAND3X1_99 $genblock$contador32bits.v:36$18<8>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<2> _311_ NAND3X1
XXNOR2X1_13 _311_ $genblock$contador32bits.v:36$18<8>.op.Q<3> gnd vdd _312_ XNOR2X1
XAOI21X1_20 gnd vdd _261_ _275_ _313_ _259_ AOI21X1
XOAI21X1_56 gnd vdd _261_ _312_ _314_ _313_ OAI21X1
XAOI22X1_14 gnd vdd _285_ _290_ _315_ D<3> _295_ AOI22X1
XNAND3X1_100 _314_ vdd gnd _310_ _315_ _253_<3> NAND3X1
XDFFPOSX1_36 vdd _253_<0> gnd $genblock$contador32bits.v:36$18<8>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_37 vdd _253_<1> gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_38 vdd _253_<2> gnd $genblock$contador32bits.v:36$18<8>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_39 vdd _253_<3> gnd $genblock$contador32bits.v:36$18<8>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_40 vdd _254_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_41 vdd _255_ gnd $genblock$contador32bits.v:36$18<8>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_79 mode_1_bF$buf1 _319_ vdd gnd INVX1
XINVX1_80 mode_0_bF$buf1 _320_ vdd gnd INVX1
XINVX1_81 reset_bF$buf1 _321_ vdd gnd INVX1
XNAND3X1_101 _320_ vdd gnd _319_ _321_ _322_ NAND3X1
XINVX1_82 _322_ _323_ vdd gnd INVX1
XINVX1_83 $genblock$contador32bits.v:36$18<8>.op.rco _324_ vdd gnd INVX1
XNAND2X1_75 vdd _325_ gnd \$genblock$contador32bits.v:36$19<4>.op.rco _324_ NAND2X1
XINVX1_84 $genblock$contador32bits.v:36$19<4>.op.Q<0> _326_ vdd gnd INVX1
XNAND2X1_76 vdd _327_ gnd $genblock$contador32bits.v:36$18<8>.op.rco _326_ NAND2X1
XNAND3X1_102 $genblock$contador32bits.v:36$19<4>.op.Q<2> vdd gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<3> _328_ NAND3X1
XOAI21X1_57 gnd vdd _328_ _327_ _329_ _325_ OAI21X1
XNAND2X1_77 vdd _330_ gnd _323_ _329_ NAND2X1
XINVX1_85 $genblock$contador32bits.v:36$19<4>.op.Q<1> _331_ vdd gnd INVX1
XINVX1_86 $genblock$contador32bits.v:36$19<4>.op.Q<2> _332_ vdd gnd INVX1
XNAND3X1_103 _326_ vdd gnd _331_ _332_ _333_ NAND3X1
XOAI21X1_58 gnd vdd $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<0> _334_ $genblock$contador32bits.v:36$19<4>.op.Q<2> OAI21X1
XAND2X2_7 vdd gnd _333_ _334_ _335_ AND2X2
XNOR2X1_37 vdd $genblock$contador32bits.v:36$19<4>.op.Q<0> gnd _336_ $genblock$contador32bits.v:36$19<4>.op.Q<1> NOR2X1
XNAND3X1_104 $genblock$contador32bits.v:36$19<4>.op.Q<3> vdd gnd _332_ _336_ _337_ NAND3X1
XINVX1_87 $genblock$contador32bits.v:36$19<4>.op.Q<3> _338_ vdd gnd INVX1
XNAND2X1_78 vdd _339_ gnd _338_ _333_ NAND2X1
XNAND2X1_79 vdd _340_ gnd _337_ _339_ NAND2X1
XNAND2X1_80 vdd _341_ gnd $genblock$contador32bits.v:36$19<4>.op.Q<0> _331_ NAND2X1
XNAND3X1_105 _319_ vdd gnd mode_0_bF$buf0 _321_ _342_ NAND3X1
XNOR2X1_38 vdd _342_ gnd _343_ _341_ NOR2X1
XNAND3X1_106 _343_ vdd gnd _335_ _340_ _344_ NAND3X1
XINVX1_88 _336_ _345_ vdd gnd INVX1
XNAND3X1_107 _320_ vdd gnd mode_1_bF$buf0 _321_ _346_ NAND3X1
XNOR2X1_39 vdd _345_ gnd _347_ _346_ NOR2X1
XXOR2X1_7 _348_ vdd _338_ _334_ gnd XOR2X1
XNAND3X1_108 _348_ vdd gnd _335_ _347_ _349_ NAND3X1
XNAND3X1_109 _349_ vdd gnd _330_ _344_ _318_ NAND3X1
XNAND2X1_81 vdd _350_ gnd mode_1_bF$buf3 mode_0_bF$buf3 NAND2X1
XNAND2X1_82 vdd _351_ gnd _0_ _324_ NAND2X1
XOAI22X1_7 gnd vdd _322_ _351_ reset_bF$buf0 _350_ _317_ OAI22X1
XINVX1_89 _342_ _352_ vdd gnd INVX1
XINVX1_90 _346_ _353_ vdd gnd INVX1
XOAI21X1_59 gnd vdd _352_ _353_ _354_ _326_ OAI21X1
XINVX1_91 _327_ _355_ vdd gnd INVX1
XNOR2X1_40 vdd _326_ gnd _356_ $genblock$contador32bits.v:36$18<8>.op.rco NOR2X1
XOAI21X1_60 gnd vdd _356_ _355_ _357_ _323_ OAI21X1
XNOR2X1_41 vdd _350_ gnd _358_ reset_bF$buf3 NOR2X1
XNAND2X1_83 vdd _359_ gnd D<0> _358_ NAND2X1
XNAND3X1_110 _359_ vdd gnd _357_ _354_ _316_<0> NAND3X1
XXNOR2X1_14 $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<0> gnd vdd _360_ XNOR2X1
XAOI21X1_21 gnd vdd _360_ $genblock$contador32bits.v:36$18<8>.op.rco _361_ _322_ AOI21X1
XOAI21X1_61 gnd vdd $genblock$contador32bits.v:36$18<8>.op.rco $genblock$contador32bits.v:36$19<4>.op.Q<1> _362_ _361_ OAI21X1
XOAI21X1_62 gnd vdd _352_ _353_ _363_ _360_ OAI21X1
XNAND2X1_84 vdd _364_ gnd D<1> _358_ NAND2X1
XNAND3X1_111 _363_ vdd gnd _364_ _362_ _316_<1> NAND3X1
XNOR2X1_42 vdd _332_ gnd _365_ $genblock$contador32bits.v:36$18<8>.op.rco NOR2X1
XOAI21X1_63 gnd vdd _331_ _326_ _366_ $genblock$contador32bits.v:36$19<4>.op.Q<2> OAI21X1
XNAND3X1_112 $genblock$contador32bits.v:36$19<4>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> _332_ _367_ NAND3X1
XAOI21X1_22 gnd vdd _366_ _367_ _368_ _324_ AOI21X1
XOAI21X1_64 gnd vdd _365_ _368_ _369_ _323_ OAI21X1
XNAND2X1_85 vdd _370_ gnd _353_ _335_ NAND2X1
XNAND2X1_86 vdd _371_ gnd _334_ _333_ NAND2X1
XAOI22X1_15 gnd vdd _371_ _352_ _372_ D<2> _358_ AOI22X1
XNAND3X1_113 _372_ vdd gnd _370_ _369_ _316_<2> NAND3X1
XNAND3X1_114 _352_ vdd gnd _337_ _339_ _373_ NAND3X1
XNAND3X1_115 $genblock$contador32bits.v:36$19<4>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<2> _374_ NAND3X1
XXNOR2X1_15 _374_ $genblock$contador32bits.v:36$19<4>.op.Q<3> gnd vdd _375_ XNOR2X1
XAOI21X1_23 gnd vdd _324_ _338_ _376_ _322_ AOI21X1
XOAI21X1_65 gnd vdd _324_ _375_ _377_ _376_ OAI21X1
XAOI22X1_16 gnd vdd _348_ _353_ _378_ D<3> _358_ AOI22X1
XNAND3X1_116 _377_ vdd gnd _373_ _378_ _316_<3> NAND3X1
XDFFPOSX1_42 vdd _316_<0> gnd $genblock$contador32bits.v:36$19<4>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_43 vdd _316_<1> gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_44 vdd _316_<2> gnd $genblock$contador32bits.v:36$19<4>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_45 vdd _316_<3> gnd $genblock$contador32bits.v:36$19<4>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_46 vdd _317_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_47 vdd _318_ gnd $genblock$contador32bits.v:36$19<4>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_92 mode_1_bF$buf2 _381_ vdd gnd INVX1
XINVX1_93 mode_0_bF$buf2 _382_ vdd gnd INVX1
XINVX1_94 reset_bF$buf2 _383_ vdd gnd INVX1
XNAND3X1_117 _382_ vdd gnd _381_ _383_ _384_ NAND3X1
XINVX1_95 _384_ _385_ vdd gnd INVX1
XINVX1_96 $genblock$contador32bits.v:36$19<4>.op.rco _386_ vdd gnd INVX1
XINVX1_97 $genblock$contador32bits.v:36$20<0>.op.Q<0> _387_ vdd gnd INVX1
XNAND2X1_87 vdd _388_ gnd $genblock$contador32bits.v:36$19<4>.op.rco _387_ NAND2X1
XINVX1_98 $genblock$contador32bits.v:36$20<0>.op.Q<1> _389_ vdd gnd INVX1
XINVX1_99 $genblock$contador32bits.v:36$20<0>.op.Q<2> _390_ vdd gnd INVX1
XNAND3X1_118 _387_ vdd gnd _389_ _390_ _391_ NAND3X1
XOAI21X1_66 gnd vdd $genblock$contador32bits.v:36$20<0>.op.Q<1> $genblock$contador32bits.v:36$20<0>.op.Q<0> _392_ $genblock$contador32bits.v:36$20<0>.op.Q<2> OAI21X1
XAND2X2_8 vdd gnd _391_ _392_ _393_ AND2X2
XNOR2X1_43 vdd $genblock$contador32bits.v:36$20<0>.op.Q<0> gnd _394_ $genblock$contador32bits.v:36$20<0>.op.Q<1> NOR2X1
XNAND3X1_119 $genblock$contador32bits.v:36$20<0>.op.Q<3> vdd gnd _390_ _394_ _395_ NAND3X1
XINVX1_100 $genblock$contador32bits.v:36$20<0>.op.Q<3> _396_ vdd gnd INVX1
XNAND2X1_88 vdd _397_ gnd _396_ _391_ NAND2X1
XNAND3X1_120 _381_ vdd gnd mode_0_bF$buf1 _383_ _398_ NAND3X1
XNAND3X1_121 _382_ vdd gnd mode_1_bF$buf1 _383_ _399_ NAND3X1
XXOR2X1_8 _400_ vdd _396_ _392_ gnd XOR2X1
XNAND2X1_89 vdd _401_ gnd mode_1_bF$buf0 mode_0_bF$buf0 NAND2X1
XNAND2X1_90 vdd _402_ gnd _0_ _386_ NAND2X1
XOAI22X1_8 gnd vdd _384_ _402_ reset_bF$buf1 _401_ _380_ OAI22X1
XINVX1_101 _398_ _403_ vdd gnd INVX1
XINVX1_102 _399_ _404_ vdd gnd INVX1
XOAI21X1_67 gnd vdd _403_ _404_ _405_ _387_ OAI21X1
XINVX1_103 _388_ _406_ vdd gnd INVX1
XNOR2X1_44 vdd _387_ gnd _407_ $genblock$contador32bits.v:36$19<4>.op.rco NOR2X1
XOAI21X1_68 gnd vdd _407_ _406_ _408_ _385_ OAI21X1
XNOR2X1_45 vdd _401_ gnd _409_ reset_bF$buf0 NOR2X1
XNAND2X1_91 vdd _410_ gnd D<0> _409_ NAND2X1
XNAND3X1_122 _410_ vdd gnd _408_ _405_ _379_<0> NAND3X1
XXNOR2X1_16 $genblock$contador32bits.v:36$20<0>.op.Q<1> $genblock$contador32bits.v:36$20<0>.op.Q<0> gnd vdd _411_ XNOR2X1
XAOI21X1_24 gnd vdd _411_ $genblock$contador32bits.v:36$19<4>.op.rco _412_ _384_ AOI21X1
XOAI21X1_69 gnd vdd $genblock$contador32bits.v:36$19<4>.op.rco $genblock$contador32bits.v:36$20<0>.op.Q<1> _413_ _412_ OAI21X1
XOAI21X1_70 gnd vdd _403_ _404_ _414_ _411_ OAI21X1
XNAND2X1_92 vdd _415_ gnd D<1> _409_ NAND2X1
XNAND3X1_123 _414_ vdd gnd _415_ _413_ _379_<1> NAND3X1
XNOR2X1_46 vdd _390_ gnd _416_ $genblock$contador32bits.v:36$19<4>.op.rco NOR2X1
XOAI21X1_71 gnd vdd _389_ _387_ _417_ $genblock$contador32bits.v:36$20<0>.op.Q<2> OAI21X1
XNAND3X1_124 $genblock$contador32bits.v:36$20<0>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<1> _390_ _418_ NAND3X1
.ends contador32bits
 