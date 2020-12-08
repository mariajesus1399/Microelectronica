*SPICE netlist created from BLIF module contador32bits by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt contador32bits vdd gnd enable clk reset mode<0> mode<1> D<0> D<1> D<2> D<3> load rco Q<0> Q<1> Q<2> Q<3> Q<4> Q<5> Q<6> Q<7> Q<8> Q<9> Q<10> Q<11> Q<12> Q<13> Q<14> Q<15> Q<16> Q<17> Q<18> Q<19> Q<20> Q<21> Q<22> Q<23> Q<24> Q<25> Q<26> Q<27> Q<28> Q<29> Q<30> Q<31> 
XBUFX4_1 vdd gnd clk clk_bF$buf5 BUFX4
XBUFX4_2 vdd gnd clk clk_bF$buf4 BUFX4
XBUFX4_3 vdd gnd clk clk_bF$buf3 BUFX4
XBUFX4_4 vdd gnd clk clk_bF$buf2 BUFX4
XBUFX4_5 vdd gnd clk clk_bF$buf1 BUFX4
XBUFX4_6 vdd gnd clk clk_bF$buf0 BUFX4
XBUFX4_7 vdd gnd mode<1> mode_1_bF$buf3 BUFX4
XBUFX4_8 vdd gnd mode<1> mode_1_bF$buf2 BUFX4
XBUFX4_9 vdd gnd mode<1> mode_1_bF$buf1 BUFX4
XBUFX4_10 vdd gnd mode<1> mode_1_bF$buf0 BUFX4
XBUFX4_11 vdd gnd mode<0> mode_0_bF$buf3 BUFX4
XBUFX4_12 vdd gnd mode<0> mode_0_bF$buf2 BUFX4
XBUFX4_13 vdd gnd mode<0> mode_0_bF$buf1 BUFX4
XBUFX4_14 vdd gnd mode<0> mode_0_bF$buf0 BUFX4
XBUFX4_15 vdd gnd reset reset_bF$buf3 BUFX4
XBUFX4_16 vdd gnd reset reset_bF$buf2 BUFX4
XBUFX4_17 vdd gnd reset reset_bF$buf1 BUFX4
XBUFX4_18 vdd gnd reset reset_bF$buf0 BUFX4
XDFFPOSX1_1 vdd _373_<0> gnd \$genblock$contador32bits.v:36$20<0>.op.Q<0> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_2 vdd _373_<1> gnd \$genblock$contador32bits.v:36$20<0>.op.Q<1> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_3 vdd _373_<2> gnd \$genblock$contador32bits.v:36$20<0>.op.Q<2> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_4 vdd _373_<3> gnd \$genblock$contador32bits.v:36$20<0>.op.Q<3> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_5 vdd _374_ gnd _0_ clk_bF$buf1 DFFPOSX1
XINVX1_1 mode_1_bF$buf3 _427_ vdd gnd INVX1
XINVX1_2 mode_0_bF$buf3 _428_ vdd gnd INVX1
XINVX1_3 reset_bF$buf3 _429_ vdd gnd INVX1
XNAND3X1_1 _428_ vdd gnd _427_ _429_ _430_ NAND3X1
XINVX1_4 _430_ _431_ vdd gnd INVX1
XINVX2_1 vdd gnd _432_ enable INVX2
XNAND2X1_1 vdd _433_ gnd \$genblock$contador32bits.v:36$14<24>.op.enable _432_ NAND2X1
XINVX1_5 op.Q<0> _434_ vdd gnd INVX1
XNAND2X1_2 vdd _435_ gnd enable _434_ NAND2X1
XINVX1_6 op.Q<3> _436_ vdd gnd INVX1
XNAND2X1_3 vdd _437_ gnd op.Q<1> op.Q<2> NAND2X1
XOR2X2_1 _438_ _436_ vdd gnd _437_ OR2X2
XOAI21X1_1 gnd vdd _435_ _438_ _439_ _433_ OAI21X1
XNAND2X1_4 vdd _440_ gnd _431_ _439_ NAND2X1
XNOR3X1_1 vdd gnd op.Q<0> op.Q<2> op.Q<1> _441_ NOR3X1
XOAI21X1_2 gnd vdd op.Q<1> op.Q<0> _442_ op.Q<2> OAI21X1
XINVX1_7 _442_ _443_ vdd gnd INVX1
XNOR2X1_1 vdd _443_ gnd _444_ _441_ NOR2X1
XNAND2X1_5 vdd _445_ gnd op.Q<3> _441_ NAND2X1
XOR2X2_2 _446_ op.Q<0> vdd gnd op.Q<1> OR2X2
XOAI21X1_3 gnd vdd op.Q<2> _446_ _447_ _436_ OAI21X1
XNAND2X1_6 vdd _448_ gnd _445_ _447_ NAND2X1
XINVX1_8 op.Q<1> _449_ vdd gnd INVX1
XNAND2X1_7 vdd _450_ gnd op.Q<0> _449_ NAND2X1
XNAND3X1_2 _427_ vdd gnd mode_0_bF$buf2 _429_ _451_ NAND3X1
XNOR2X1_2 vdd _451_ gnd _452_ _450_ NOR2X1
XNAND3X1_3 _452_ vdd gnd _444_ _448_ _453_ NAND3X1
XNAND3X1_4 _428_ vdd gnd mode_1_bF$buf2 _429_ _454_ NAND3X1
XNOR2X1_3 vdd _454_ gnd _455_ _446_ NOR2X1
XXNOR2X1_1 _442_ op.Q<3> gnd vdd _456_ XNOR2X1
XNAND3X1_5 _444_ vdd gnd _455_ _456_ _457_ NAND3X1
XNAND3X1_6 _457_ vdd gnd _440_ _453_ _426_ NAND3X1
XNAND2X1_8 vdd _458_ gnd mode_1_bF$buf1 mode_0_bF$buf1 NAND2X1
XNAND2X1_9 vdd _459_ gnd _0_ _432_ NAND2X1
XOAI22X1_1 gnd vdd _430_ _459_ reset_bF$buf2 _458_ _425_ OAI22X1
XINVX2_2 vdd gnd _460_ _451_ INVX2
XINVX2_3 vdd gnd _461_ _454_ INVX2
XOAI21X1_4 gnd vdd _460_ _461_ _462_ _434_ OAI21X1
XINVX1_9 _435_ _463_ vdd gnd INVX1
XNOR2X1_4 vdd _434_ gnd _464_ enable NOR2X1
XOAI21X1_5 gnd vdd _464_ _463_ _465_ _431_ OAI21X1
XNOR2X1_5 vdd _458_ gnd _466_ reset_bF$buf1 NOR2X1
XNAND2X1_10 vdd _467_ gnd D<0> _466_ NAND2X1
XNAND3X1_7 _467_ vdd gnd _465_ _462_ _424_<0> NAND3X1
XXNOR2X1_2 op.Q<1> op.Q<0> gnd vdd _468_ XNOR2X1
XAOI21X1_1 gnd vdd _468_ enable _469_ _430_ AOI21X1
XOAI21X1_6 gnd vdd enable op.Q<1> _470_ _469_ OAI21X1
XOAI21X1_7 gnd vdd _460_ _461_ _471_ _468_ OAI21X1
XNAND2X1_11 vdd _472_ gnd D<1> _466_ NAND2X1
XNAND3X1_8 _472_ vdd gnd _471_ _470_ _424_<1> NAND3X1
XNAND2X1_12 vdd _473_ gnd enable op.Q<0> NAND2X1
XINVX1_10 op.Q<2> _474_ vdd gnd INVX1
XOAI21X1_8 gnd vdd _449_ _473_ _475_ _474_ OAI21X1
XOAI21X1_9 gnd vdd _437_ _473_ _476_ _475_ OAI21X1
XOR2X2_3 _477_ _430_ vdd gnd _476_ OR2X2
XOAI21X1_10 gnd vdd _441_ _443_ _478_ _460_ OAI21X1
XAOI22X1_1 gnd vdd _461_ _444_ _479_ D<2> _466_ AOI22X1
XNAND3X1_9 _479_ vdd gnd _478_ _477_ _424_<2> NAND3X1
XNAND3X1_10 _445_ vdd gnd _460_ _447_ _480_ NAND3X1
XNAND3X1_11 op.Q<0> vdd gnd op.Q<1> op.Q<2> _481_ NAND3X1
XXNOR2X1_3 _481_ op.Q<3> gnd vdd _482_ XNOR2X1
XAOI21X1_2 gnd vdd _432_ _436_ _483_ _430_ AOI21X1
XOAI21X1_11 gnd vdd _432_ _482_ _484_ _483_ OAI21X1
XAOI22X1_2 gnd vdd _461_ _456_ _485_ D<3> _466_ AOI22X1
XNAND3X1_12 _484_ vdd gnd _480_ _485_ _424_<3> NAND3X1
XDFFPOSX1_6 vdd _424_<0> gnd op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_7 vdd _424_<1> gnd op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_8 vdd _424_<2> gnd op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_9 vdd _424_<3> gnd op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_10 vdd _425_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_11 vdd _426_ gnd $genblock$contador32bits.v:36$14<24>.op.enable clk_bF$buf1 DFFPOSX1
XBUFX2_1 vdd gnd op.Q<0> Q<0> BUFX2
XBUFX2_2 vdd gnd op.Q<1> Q<1> BUFX2
XBUFX2_3 vdd gnd op.Q<2> Q<2> BUFX2
XBUFX2_4 vdd gnd op.Q<3> Q<3> BUFX2
XBUFX2_5 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<0> Q<4> BUFX2
XBUFX2_6 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<1> Q<5> BUFX2
XBUFX2_7 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<2> Q<6> BUFX2
XBUFX2_8 vdd gnd \$genblock$contador32bits.v:36$14<24>.op.Q<3> Q<7> BUFX2
XBUFX2_9 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<0> Q<8> BUFX2
XBUFX2_10 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<1> Q<9> BUFX2
XBUFX2_11 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<2> Q<10> BUFX2
XBUFX2_12 vdd gnd \$genblock$contador32bits.v:36$15<20>.op.Q<3> Q<11> BUFX2
XBUFX2_13 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<0> Q<12> BUFX2
XBUFX2_14 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<1> Q<13> BUFX2
XBUFX2_15 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<2> Q<14> BUFX2
XBUFX2_16 vdd gnd \$genblock$contador32bits.v:36$16<16>.op.Q<3> Q<15> BUFX2
XBUFX2_17 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<0> Q<16> BUFX2
XBUFX2_18 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<1> Q<17> BUFX2
XBUFX2_19 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<2> Q<18> BUFX2
XBUFX2_20 vdd gnd \$genblock$contador32bits.v:36$17<12>.op.Q<3> Q<19> BUFX2
XBUFX2_21 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<0> Q<20> BUFX2
XBUFX2_22 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<1> Q<21> BUFX2
XBUFX2_23 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<2> Q<22> BUFX2
XBUFX2_24 vdd gnd \$genblock$contador32bits.v:36$18<8>.op.Q<3> Q<23> BUFX2
XBUFX2_25 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<0> Q<24> BUFX2
XBUFX2_26 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<1> Q<25> BUFX2
XBUFX2_27 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<2> Q<26> BUFX2
XBUFX2_28 vdd gnd \$genblock$contador32bits.v:36$19<4>.op.Q<3> Q<27> BUFX2
XBUFX2_29 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<0> Q<28> BUFX2
XBUFX2_30 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<1> Q<29> BUFX2
XBUFX2_31 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<2> Q<30> BUFX2
XBUFX2_32 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<3> Q<31> BUFX2
XBUFX2_33 vdd gnd _0_ load BUFX2
XBUFX2_34 vdd gnd $undef rco BUFX2
XINVX1_11 mode_1_bF$buf0 _4_ vdd gnd INVX1
XINVX1_12 mode_0_bF$buf0 _5_ vdd gnd INVX1
XINVX1_13 reset_bF$buf0 _6_ vdd gnd INVX1
XNAND3X1_13 _5_ vdd gnd _4_ _6_ _7_ NAND3X1
XINVX1_14 _7_ _8_ vdd gnd INVX1
XINVX2_4 vdd gnd _9_ $genblock$contador32bits.v:36$14<24>.op.enable INVX2
XNAND2X1_13 vdd _10_ gnd \$genblock$contador32bits.v:36$14<24>.op.rco _9_ NAND2X1
XINVX1_15 $genblock$contador32bits.v:36$14<24>.op.Q<0> _11_ vdd gnd INVX1
XNAND2X1_14 vdd _12_ gnd $genblock$contador32bits.v:36$14<24>.op.enable _11_ NAND2X1
XINVX1_16 $genblock$contador32bits.v:36$14<24>.op.Q<3> _13_ vdd gnd INVX1
XNAND2X1_15 vdd _14_ gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<2> NAND2X1
XOR2X2_4 _15_ _13_ vdd gnd _14_ OR2X2
XOAI21X1_12 gnd vdd _12_ _15_ _16_ _10_ OAI21X1
XNAND2X1_16 vdd _17_ gnd _8_ _16_ NAND2X1
XNOR3X1_2 vdd gnd $genblock$contador32bits.v:36$14<24>.op.Q<0> $genblock$contador32bits.v:36$14<24>.op.Q<2> $genblock$contador32bits.v:36$14<24>.op.Q<1> _18_ NOR3X1
XOAI21X1_13 gnd vdd $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<0> _19_ $genblock$contador32bits.v:36$14<24>.op.Q<2> OAI21X1
XINVX1_17 _19_ _20_ vdd gnd INVX1
XNOR2X1_6 vdd _20_ gnd _21_ _18_ NOR2X1
XNAND2X1_17 vdd _22_ gnd $genblock$contador32bits.v:36$14<24>.op.Q<3> _18_ NAND2X1
XOR2X2_5 _23_ $genblock$contador32bits.v:36$14<24>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> OR2X2
XOAI21X1_14 gnd vdd $genblock$contador32bits.v:36$14<24>.op.Q<2> _23_ _24_ _13_ OAI21X1
XNAND2X1_18 vdd _25_ gnd _22_ _24_ NAND2X1
XINVX1_18 $genblock$contador32bits.v:36$14<24>.op.Q<1> _26_ vdd gnd INVX1
XNAND2X1_19 vdd _27_ gnd $genblock$contador32bits.v:36$14<24>.op.Q<0> _26_ NAND2X1
XNAND3X1_14 _4_ vdd gnd mode_0_bF$buf3 _6_ _28_ NAND3X1
XNOR2X1_7 vdd _28_ gnd _29_ _27_ NOR2X1
XNAND3X1_15 _29_ vdd gnd _21_ _25_ _30_ NAND3X1
XNAND3X1_16 _5_ vdd gnd mode_1_bF$buf3 _6_ _31_ NAND3X1
XNOR2X1_8 vdd _31_ gnd _32_ _23_ NOR2X1
XXNOR2X1_4 _19_ $genblock$contador32bits.v:36$14<24>.op.Q<3> gnd vdd _33_ XNOR2X1
XNAND3X1_17 _21_ vdd gnd _32_ _33_ _34_ NAND3X1
XNAND3X1_18 _34_ vdd gnd _17_ _30_ _3_ NAND3X1
XNAND2X1_20 vdd _35_ gnd mode_1_bF$buf2 mode_0_bF$buf2 NAND2X1
XNAND2X1_21 vdd _36_ gnd _0_ _9_ NAND2X1
XOAI22X1_2 gnd vdd _7_ _36_ reset_bF$buf3 _35_ _2_ OAI22X1
XINVX2_5 vdd gnd _37_ _28_ INVX2
XINVX2_6 vdd gnd _38_ _31_ INVX2
XOAI21X1_15 gnd vdd _37_ _38_ _39_ _11_ OAI21X1
XINVX1_19 _12_ _40_ vdd gnd INVX1
XNOR2X1_9 vdd _11_ gnd _41_ $genblock$contador32bits.v:36$14<24>.op.enable NOR2X1
XOAI21X1_16 gnd vdd _41_ _40_ _42_ _8_ OAI21X1
XNOR2X1_10 vdd _35_ gnd _43_ reset_bF$buf2 NOR2X1
XNAND2X1_22 vdd _44_ gnd D<0> _43_ NAND2X1
XNAND3X1_19 _44_ vdd gnd _42_ _39_ _1_<0> NAND3X1
XXNOR2X1_5 $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<0> gnd vdd _45_ XNOR2X1
XAOI21X1_3 gnd vdd _45_ $genblock$contador32bits.v:36$14<24>.op.enable _46_ _7_ AOI21X1
XOAI21X1_17 gnd vdd $genblock$contador32bits.v:36$14<24>.op.enable $genblock$contador32bits.v:36$14<24>.op.Q<1> _47_ _46_ OAI21X1
XOAI21X1_18 gnd vdd _37_ _38_ _48_ _45_ OAI21X1
XNAND2X1_23 vdd _49_ gnd D<1> _43_ NAND2X1
XNAND3X1_20 _49_ vdd gnd _48_ _47_ _1_<1> NAND3X1
XNAND2X1_24 vdd _50_ gnd $genblock$contador32bits.v:36$14<24>.op.enable $genblock$contador32bits.v:36$14<24>.op.Q<0> NAND2X1
XINVX1_20 $genblock$contador32bits.v:36$14<24>.op.Q<2> _51_ vdd gnd INVX1
XOAI21X1_19 gnd vdd _26_ _50_ _52_ _51_ OAI21X1
XOAI21X1_20 gnd vdd _14_ _50_ _53_ _52_ OAI21X1
XOR2X2_6 _54_ _7_ vdd gnd _53_ OR2X2
XOAI21X1_21 gnd vdd _18_ _20_ _55_ _37_ OAI21X1
XAOI22X1_3 gnd vdd _38_ _21_ _56_ D<2> _43_ AOI22X1
XNAND3X1_21 _56_ vdd gnd _55_ _54_ _1_<2> NAND3X1
XNAND3X1_22 _22_ vdd gnd _37_ _24_ _57_ NAND3X1
XNAND3X1_23 $genblock$contador32bits.v:36$14<24>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> $genblock$contador32bits.v:36$14<24>.op.Q<2> _58_ NAND3X1
XXNOR2X1_6 _58_ $genblock$contador32bits.v:36$14<24>.op.Q<3> gnd vdd _59_ XNOR2X1
XAOI21X1_4 gnd vdd _9_ _13_ _60_ _7_ AOI21X1
XOAI21X1_22 gnd vdd _9_ _59_ _61_ _60_ OAI21X1
XAOI22X1_4 gnd vdd _38_ _33_ _62_ D<3> _43_ AOI22X1
XNAND3X1_24 _61_ vdd gnd _57_ _62_ _1_<3> NAND3X1
XDFFPOSX1_12 vdd _1_<0> gnd $genblock$contador32bits.v:36$14<24>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_13 vdd _1_<1> gnd $genblock$contador32bits.v:36$14<24>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_14 vdd _1_<2> gnd $genblock$contador32bits.v:36$14<24>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_15 vdd _1_<3> gnd $genblock$contador32bits.v:36$14<24>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_16 vdd _2_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_17 vdd _3_ gnd $genblock$contador32bits.v:36$14<24>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_21 mode_1_bF$buf1 _66_ vdd gnd INVX1
XINVX1_22 mode_0_bF$buf1 _67_ vdd gnd INVX1
XINVX1_23 reset_bF$buf1 _68_ vdd gnd INVX1
XNAND3X1_25 _67_ vdd gnd _66_ _68_ _69_ NAND3X1
XINVX1_24 _69_ _70_ vdd gnd INVX1
XINVX2_7 vdd gnd _71_ $genblock$contador32bits.v:36$14<24>.op.rco INVX2
XNAND2X1_25 vdd _72_ gnd \$genblock$contador32bits.v:36$15<20>.op.rco _71_ NAND2X1
XINVX1_25 $genblock$contador32bits.v:36$15<20>.op.Q<0> _73_ vdd gnd INVX1
XNAND2X1_26 vdd _74_ gnd $genblock$contador32bits.v:36$14<24>.op.rco _73_ NAND2X1
XINVX1_26 $genblock$contador32bits.v:36$15<20>.op.Q<3> _75_ vdd gnd INVX1
XNAND2X1_27 vdd _76_ gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<2> NAND2X1
XOR2X2_7 _77_ _75_ vdd gnd _76_ OR2X2
XOAI21X1_23 gnd vdd _74_ _77_ _78_ _72_ OAI21X1
XNAND2X1_28 vdd _79_ gnd _70_ _78_ NAND2X1
XNOR3X1_3 vdd gnd $genblock$contador32bits.v:36$15<20>.op.Q<0> $genblock$contador32bits.v:36$15<20>.op.Q<2> $genblock$contador32bits.v:36$15<20>.op.Q<1> _80_ NOR3X1
XOAI21X1_24 gnd vdd $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<0> _81_ $genblock$contador32bits.v:36$15<20>.op.Q<2> OAI21X1
XINVX1_27 _81_ _82_ vdd gnd INVX1
XNOR2X1_11 vdd _82_ gnd _83_ _80_ NOR2X1
XNAND2X1_29 vdd _84_ gnd $genblock$contador32bits.v:36$15<20>.op.Q<3> _80_ NAND2X1
XOR2X2_8 _85_ $genblock$contador32bits.v:36$15<20>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> OR2X2
XOAI21X1_25 gnd vdd $genblock$contador32bits.v:36$15<20>.op.Q<2> _85_ _86_ _75_ OAI21X1
XNAND2X1_30 vdd _87_ gnd _84_ _86_ NAND2X1
XINVX1_28 $genblock$contador32bits.v:36$15<20>.op.Q<1> _88_ vdd gnd INVX1
XNAND2X1_31 vdd _89_ gnd $genblock$contador32bits.v:36$15<20>.op.Q<0> _88_ NAND2X1
XNAND3X1_26 _66_ vdd gnd mode_0_bF$buf0 _68_ _90_ NAND3X1
XNOR2X1_12 vdd _90_ gnd _91_ _89_ NOR2X1
XNAND3X1_27 _91_ vdd gnd _83_ _87_ _92_ NAND3X1
XNAND3X1_28 _67_ vdd gnd mode_1_bF$buf0 _68_ _93_ NAND3X1
XNOR2X1_13 vdd _93_ gnd _94_ _85_ NOR2X1
XXNOR2X1_7 _81_ $genblock$contador32bits.v:36$15<20>.op.Q<3> gnd vdd _95_ XNOR2X1
XNAND3X1_29 _83_ vdd gnd _94_ _95_ _96_ NAND3X1
XNAND3X1_30 _96_ vdd gnd _79_ _92_ _65_ NAND3X1
XNAND2X1_32 vdd _97_ gnd mode_1_bF$buf3 mode_0_bF$buf3 NAND2X1
XNAND2X1_33 vdd _98_ gnd _0_ _71_ NAND2X1
XOAI22X1_3 gnd vdd _69_ _98_ reset_bF$buf0 _97_ _64_ OAI22X1
XINVX2_8 vdd gnd _99_ _90_ INVX2
XINVX2_9 vdd gnd _100_ _93_ INVX2
XOAI21X1_26 gnd vdd _99_ _100_ _101_ _73_ OAI21X1
XINVX1_29 _74_ _102_ vdd gnd INVX1
XNOR2X1_14 vdd _73_ gnd _103_ $genblock$contador32bits.v:36$14<24>.op.rco NOR2X1
XOAI21X1_27 gnd vdd _103_ _102_ _104_ _70_ OAI21X1
XNOR2X1_15 vdd _97_ gnd _105_ reset_bF$buf3 NOR2X1
XNAND2X1_34 vdd _106_ gnd D<0> _105_ NAND2X1
XNAND3X1_31 _106_ vdd gnd _104_ _101_ _63_<0> NAND3X1
XXNOR2X1_8 $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<0> gnd vdd _107_ XNOR2X1
XAOI21X1_5 gnd vdd _107_ $genblock$contador32bits.v:36$14<24>.op.rco _108_ _69_ AOI21X1
XOAI21X1_28 gnd vdd $genblock$contador32bits.v:36$14<24>.op.rco $genblock$contador32bits.v:36$15<20>.op.Q<1> _109_ _108_ OAI21X1
XOAI21X1_29 gnd vdd _99_ _100_ _110_ _107_ OAI21X1
XNAND2X1_35 vdd _111_ gnd D<1> _105_ NAND2X1
XNAND3X1_32 _111_ vdd gnd _110_ _109_ _63_<1> NAND3X1
XNAND2X1_36 vdd _112_ gnd $genblock$contador32bits.v:36$14<24>.op.rco $genblock$contador32bits.v:36$15<20>.op.Q<0> NAND2X1
XINVX1_30 $genblock$contador32bits.v:36$15<20>.op.Q<2> _113_ vdd gnd INVX1
XOAI21X1_30 gnd vdd _88_ _112_ _114_ _113_ OAI21X1
XOAI21X1_31 gnd vdd _76_ _112_ _115_ _114_ OAI21X1
XOR2X2_9 _116_ _69_ vdd gnd _115_ OR2X2
XOAI21X1_32 gnd vdd _80_ _82_ _117_ _99_ OAI21X1
XAOI22X1_5 gnd vdd _100_ _83_ _118_ D<2> _105_ AOI22X1
XNAND3X1_33 _118_ vdd gnd _117_ _116_ _63_<2> NAND3X1
XNAND3X1_34 _84_ vdd gnd _99_ _86_ _119_ NAND3X1
XNAND3X1_35 $genblock$contador32bits.v:36$15<20>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> $genblock$contador32bits.v:36$15<20>.op.Q<2> _120_ NAND3X1
XXNOR2X1_9 _120_ $genblock$contador32bits.v:36$15<20>.op.Q<3> gnd vdd _121_ XNOR2X1
XAOI21X1_6 gnd vdd _71_ _75_ _122_ _69_ AOI21X1
XOAI21X1_33 gnd vdd _71_ _121_ _123_ _122_ OAI21X1
XAOI22X1_6 gnd vdd _100_ _95_ _124_ D<3> _105_ AOI22X1
XNAND3X1_36 _123_ vdd gnd _119_ _124_ _63_<3> NAND3X1
XDFFPOSX1_18 vdd _63_<0> gnd $genblock$contador32bits.v:36$15<20>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_19 vdd _63_<1> gnd $genblock$contador32bits.v:36$15<20>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_20 vdd _63_<2> gnd $genblock$contador32bits.v:36$15<20>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_21 vdd _63_<3> gnd $genblock$contador32bits.v:36$15<20>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_22 vdd _64_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_23 vdd _65_ gnd $genblock$contador32bits.v:36$15<20>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_31 mode_1_bF$buf2 _128_ vdd gnd INVX1
XINVX1_32 mode_0_bF$buf2 _129_ vdd gnd INVX1
XINVX1_33 reset_bF$buf2 _130_ vdd gnd INVX1
XNAND3X1_37 _129_ vdd gnd _128_ _130_ _131_ NAND3X1
XINVX1_34 _131_ _132_ vdd gnd INVX1
XINVX2_10 vdd gnd _133_ $genblock$contador32bits.v:36$15<20>.op.rco INVX2
XNAND2X1_37 vdd _134_ gnd \$genblock$contador32bits.v:36$16<16>.op.rco _133_ NAND2X1
XINVX1_35 $genblock$contador32bits.v:36$16<16>.op.Q<0> _135_ vdd gnd INVX1
XNAND2X1_38 vdd _136_ gnd $genblock$contador32bits.v:36$15<20>.op.rco _135_ NAND2X1
XINVX1_36 $genblock$contador32bits.v:36$16<16>.op.Q<3> _137_ vdd gnd INVX1
XNAND2X1_39 vdd _138_ gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<2> NAND2X1
XOR2X2_10 _139_ _137_ vdd gnd _138_ OR2X2
XOAI21X1_34 gnd vdd _136_ _139_ _140_ _134_ OAI21X1
XNAND2X1_40 vdd _141_ gnd _132_ _140_ NAND2X1
XNOR3X1_4 vdd gnd $genblock$contador32bits.v:36$16<16>.op.Q<0> $genblock$contador32bits.v:36$16<16>.op.Q<2> $genblock$contador32bits.v:36$16<16>.op.Q<1> _142_ NOR3X1
XOAI21X1_35 gnd vdd $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<0> _143_ $genblock$contador32bits.v:36$16<16>.op.Q<2> OAI21X1
XINVX1_37 _143_ _144_ vdd gnd INVX1
XNOR2X1_16 vdd _144_ gnd _145_ _142_ NOR2X1
XNAND2X1_41 vdd _146_ gnd $genblock$contador32bits.v:36$16<16>.op.Q<3> _142_ NAND2X1
XOR2X2_11 _147_ $genblock$contador32bits.v:36$16<16>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> OR2X2
XOAI21X1_36 gnd vdd $genblock$contador32bits.v:36$16<16>.op.Q<2> _147_ _148_ _137_ OAI21X1
XNAND2X1_42 vdd _149_ gnd _146_ _148_ NAND2X1
XINVX1_38 $genblock$contador32bits.v:36$16<16>.op.Q<1> _150_ vdd gnd INVX1
XNAND2X1_43 vdd _151_ gnd $genblock$contador32bits.v:36$16<16>.op.Q<0> _150_ NAND2X1
XNAND3X1_38 _128_ vdd gnd mode_0_bF$buf1 _130_ _152_ NAND3X1
XNOR2X1_17 vdd _152_ gnd _153_ _151_ NOR2X1
XNAND3X1_39 _153_ vdd gnd _145_ _149_ _154_ NAND3X1
XNAND3X1_40 _129_ vdd gnd mode_1_bF$buf1 _130_ _155_ NAND3X1
XNOR2X1_18 vdd _155_ gnd _156_ _147_ NOR2X1
XXNOR2X1_10 _143_ $genblock$contador32bits.v:36$16<16>.op.Q<3> gnd vdd _157_ XNOR2X1
XNAND3X1_41 _145_ vdd gnd _156_ _157_ _158_ NAND3X1
XNAND3X1_42 _158_ vdd gnd _141_ _154_ _127_ NAND3X1
XNAND2X1_44 vdd _159_ gnd mode_1_bF$buf0 mode_0_bF$buf0 NAND2X1
XNAND2X1_45 vdd _160_ gnd _0_ _133_ NAND2X1
XOAI22X1_4 gnd vdd _131_ _160_ reset_bF$buf1 _159_ _126_ OAI22X1
XINVX2_11 vdd gnd _161_ _152_ INVX2
XINVX2_12 vdd gnd _162_ _155_ INVX2
XOAI21X1_37 gnd vdd _161_ _162_ _163_ _135_ OAI21X1
XINVX1_39 _136_ _164_ vdd gnd INVX1
XNOR2X1_19 vdd _135_ gnd _165_ $genblock$contador32bits.v:36$15<20>.op.rco NOR2X1
XOAI21X1_38 gnd vdd _165_ _164_ _166_ _132_ OAI21X1
XNOR2X1_20 vdd _159_ gnd _167_ reset_bF$buf0 NOR2X1
XNAND2X1_46 vdd _168_ gnd D<0> _167_ NAND2X1
XNAND3X1_43 _168_ vdd gnd _166_ _163_ _125_<0> NAND3X1
XXNOR2X1_11 $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<0> gnd vdd _169_ XNOR2X1
XAOI21X1_7 gnd vdd _169_ $genblock$contador32bits.v:36$15<20>.op.rco _170_ _131_ AOI21X1
XOAI21X1_39 gnd vdd $genblock$contador32bits.v:36$15<20>.op.rco $genblock$contador32bits.v:36$16<16>.op.Q<1> _171_ _170_ OAI21X1
XOAI21X1_40 gnd vdd _161_ _162_ _172_ _169_ OAI21X1
XNAND2X1_47 vdd _173_ gnd D<1> _167_ NAND2X1
XNAND3X1_44 _173_ vdd gnd _172_ _171_ _125_<1> NAND3X1
XNAND2X1_48 vdd _174_ gnd $genblock$contador32bits.v:36$15<20>.op.rco $genblock$contador32bits.v:36$16<16>.op.Q<0> NAND2X1
XINVX1_40 $genblock$contador32bits.v:36$16<16>.op.Q<2> _175_ vdd gnd INVX1
XOAI21X1_41 gnd vdd _150_ _174_ _176_ _175_ OAI21X1
XOAI21X1_42 gnd vdd _138_ _174_ _177_ _176_ OAI21X1
XOR2X2_12 _178_ _131_ vdd gnd _177_ OR2X2
XOAI21X1_43 gnd vdd _142_ _144_ _179_ _161_ OAI21X1
XAOI22X1_7 gnd vdd _162_ _145_ _180_ D<2> _167_ AOI22X1
XNAND3X1_45 _180_ vdd gnd _179_ _178_ _125_<2> NAND3X1
XNAND3X1_46 _146_ vdd gnd _161_ _148_ _181_ NAND3X1
XNAND3X1_47 $genblock$contador32bits.v:36$16<16>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> $genblock$contador32bits.v:36$16<16>.op.Q<2> _182_ NAND3X1
XXNOR2X1_12 _182_ $genblock$contador32bits.v:36$16<16>.op.Q<3> gnd vdd _183_ XNOR2X1
XAOI21X1_8 gnd vdd _133_ _137_ _184_ _131_ AOI21X1
XOAI21X1_44 gnd vdd _133_ _183_ _185_ _184_ OAI21X1
XAOI22X1_8 gnd vdd _162_ _157_ _186_ D<3> _167_ AOI22X1
XNAND3X1_48 _185_ vdd gnd _181_ _186_ _125_<3> NAND3X1
XDFFPOSX1_24 vdd _125_<0> gnd $genblock$contador32bits.v:36$16<16>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_25 vdd _125_<1> gnd $genblock$contador32bits.v:36$16<16>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_26 vdd _125_<2> gnd $genblock$contador32bits.v:36$16<16>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_27 vdd _125_<3> gnd $genblock$contador32bits.v:36$16<16>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_28 vdd _126_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_29 vdd _127_ gnd $genblock$contador32bits.v:36$16<16>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_41 mode_1_bF$buf3 _190_ vdd gnd INVX1
XINVX1_42 mode_0_bF$buf3 _191_ vdd gnd INVX1
XINVX1_43 reset_bF$buf3 _192_ vdd gnd INVX1
XNAND3X1_49 _191_ vdd gnd _190_ _192_ _193_ NAND3X1
XINVX1_44 _193_ _194_ vdd gnd INVX1
XINVX2_13 vdd gnd _195_ $genblock$contador32bits.v:36$16<16>.op.rco INVX2
XNAND2X1_49 vdd _196_ gnd \$genblock$contador32bits.v:36$17<12>.op.rco _195_ NAND2X1
XINVX1_45 $genblock$contador32bits.v:36$17<12>.op.Q<0> _197_ vdd gnd INVX1
XNAND2X1_50 vdd _198_ gnd $genblock$contador32bits.v:36$16<16>.op.rco _197_ NAND2X1
XINVX1_46 $genblock$contador32bits.v:36$17<12>.op.Q<3> _199_ vdd gnd INVX1
XNAND2X1_51 vdd _200_ gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<2> NAND2X1
XOR2X2_13 _201_ _199_ vdd gnd _200_ OR2X2
XOAI21X1_45 gnd vdd _198_ _201_ _202_ _196_ OAI21X1
XNAND2X1_52 vdd _203_ gnd _194_ _202_ NAND2X1
XNOR3X1_5 vdd gnd $genblock$contador32bits.v:36$17<12>.op.Q<0> $genblock$contador32bits.v:36$17<12>.op.Q<2> $genblock$contador32bits.v:36$17<12>.op.Q<1> _204_ NOR3X1
XOAI21X1_46 gnd vdd $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<0> _205_ $genblock$contador32bits.v:36$17<12>.op.Q<2> OAI21X1
XINVX1_47 _205_ _206_ vdd gnd INVX1
XNOR2X1_21 vdd _206_ gnd _207_ _204_ NOR2X1
XNAND2X1_53 vdd _208_ gnd $genblock$contador32bits.v:36$17<12>.op.Q<3> _204_ NAND2X1
XOR2X2_14 _209_ $genblock$contador32bits.v:36$17<12>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> OR2X2
XOAI21X1_47 gnd vdd $genblock$contador32bits.v:36$17<12>.op.Q<2> _209_ _210_ _199_ OAI21X1
XNAND2X1_54 vdd _211_ gnd _208_ _210_ NAND2X1
XINVX1_48 $genblock$contador32bits.v:36$17<12>.op.Q<1> _212_ vdd gnd INVX1
XNAND2X1_55 vdd _213_ gnd $genblock$contador32bits.v:36$17<12>.op.Q<0> _212_ NAND2X1
XNAND3X1_50 _190_ vdd gnd mode_0_bF$buf2 _192_ _214_ NAND3X1
XNOR2X1_22 vdd _214_ gnd _215_ _213_ NOR2X1
XNAND3X1_51 _215_ vdd gnd _207_ _211_ _216_ NAND3X1
XNAND3X1_52 _191_ vdd gnd mode_1_bF$buf2 _192_ _217_ NAND3X1
XNOR2X1_23 vdd _217_ gnd _218_ _209_ NOR2X1
XXNOR2X1_13 _205_ $genblock$contador32bits.v:36$17<12>.op.Q<3> gnd vdd _219_ XNOR2X1
XNAND3X1_53 _207_ vdd gnd _218_ _219_ _220_ NAND3X1
XNAND3X1_54 _220_ vdd gnd _203_ _216_ _189_ NAND3X1
XNAND2X1_56 vdd _221_ gnd mode_1_bF$buf1 mode_0_bF$buf1 NAND2X1
XNAND2X1_57 vdd _222_ gnd _0_ _195_ NAND2X1
XOAI22X1_5 gnd vdd _193_ _222_ reset_bF$buf2 _221_ _188_ OAI22X1
XINVX2_14 vdd gnd _223_ _214_ INVX2
XINVX2_15 vdd gnd _224_ _217_ INVX2
XOAI21X1_48 gnd vdd _223_ _224_ _225_ _197_ OAI21X1
XINVX1_49 _198_ _226_ vdd gnd INVX1
XNOR2X1_24 vdd _197_ gnd _227_ $genblock$contador32bits.v:36$16<16>.op.rco NOR2X1
XOAI21X1_49 gnd vdd _227_ _226_ _228_ _194_ OAI21X1
XNOR2X1_25 vdd _221_ gnd _229_ reset_bF$buf1 NOR2X1
XNAND2X1_58 vdd _230_ gnd D<0> _229_ NAND2X1
XNAND3X1_55 _230_ vdd gnd _228_ _225_ _187_<0> NAND3X1
XXNOR2X1_14 $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<0> gnd vdd _231_ XNOR2X1
XAOI21X1_9 gnd vdd _231_ $genblock$contador32bits.v:36$16<16>.op.rco _232_ _193_ AOI21X1
XOAI21X1_50 gnd vdd $genblock$contador32bits.v:36$16<16>.op.rco $genblock$contador32bits.v:36$17<12>.op.Q<1> _233_ _232_ OAI21X1
XOAI21X1_51 gnd vdd _223_ _224_ _234_ _231_ OAI21X1
XNAND2X1_59 vdd _235_ gnd D<1> _229_ NAND2X1
XNAND3X1_56 _235_ vdd gnd _234_ _233_ _187_<1> NAND3X1
XNAND2X1_60 vdd _236_ gnd $genblock$contador32bits.v:36$16<16>.op.rco $genblock$contador32bits.v:36$17<12>.op.Q<0> NAND2X1
XINVX1_50 $genblock$contador32bits.v:36$17<12>.op.Q<2> _237_ vdd gnd INVX1
XOAI21X1_52 gnd vdd _212_ _236_ _238_ _237_ OAI21X1
XOAI21X1_53 gnd vdd _200_ _236_ _239_ _238_ OAI21X1
XOR2X2_15 _240_ _193_ vdd gnd _239_ OR2X2
XOAI21X1_54 gnd vdd _204_ _206_ _241_ _223_ OAI21X1
XAOI22X1_9 gnd vdd _224_ _207_ _242_ D<2> _229_ AOI22X1
XNAND3X1_57 _242_ vdd gnd _241_ _240_ _187_<2> NAND3X1
XNAND3X1_58 _208_ vdd gnd _223_ _210_ _243_ NAND3X1
XNAND3X1_59 $genblock$contador32bits.v:36$17<12>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> $genblock$contador32bits.v:36$17<12>.op.Q<2> _244_ NAND3X1
XXNOR2X1_15 _244_ $genblock$contador32bits.v:36$17<12>.op.Q<3> gnd vdd _245_ XNOR2X1
XAOI21X1_10 gnd vdd _195_ _199_ _246_ _193_ AOI21X1
XOAI21X1_55 gnd vdd _195_ _245_ _247_ _246_ OAI21X1
XAOI22X1_10 gnd vdd _224_ _219_ _248_ D<3> _229_ AOI22X1
XNAND3X1_60 _247_ vdd gnd _243_ _248_ _187_<3> NAND3X1
XDFFPOSX1_30 vdd _187_<0> gnd $genblock$contador32bits.v:36$17<12>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_31 vdd _187_<1> gnd $genblock$contador32bits.v:36$17<12>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_32 vdd _187_<2> gnd $genblock$contador32bits.v:36$17<12>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_33 vdd _187_<3> gnd $genblock$contador32bits.v:36$17<12>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_34 vdd _188_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_35 vdd _189_ gnd $genblock$contador32bits.v:36$17<12>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_51 mode_1_bF$buf0 _252_ vdd gnd INVX1
XINVX1_52 mode_0_bF$buf0 _253_ vdd gnd INVX1
XINVX1_53 reset_bF$buf0 _254_ vdd gnd INVX1
XNAND3X1_61 _253_ vdd gnd _252_ _254_ _255_ NAND3X1
XINVX1_54 _255_ _256_ vdd gnd INVX1
XINVX2_16 vdd gnd _257_ $genblock$contador32bits.v:36$17<12>.op.rco INVX2
XNAND2X1_61 vdd _258_ gnd \$genblock$contador32bits.v:36$18<8>.op.rco _257_ NAND2X1
XINVX1_55 $genblock$contador32bits.v:36$18<8>.op.Q<0> _259_ vdd gnd INVX1
XNAND2X1_62 vdd _260_ gnd $genblock$contador32bits.v:36$17<12>.op.rco _259_ NAND2X1
XINVX1_56 $genblock$contador32bits.v:36$18<8>.op.Q<3> _261_ vdd gnd INVX1
XNAND2X1_63 vdd _262_ gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<2> NAND2X1
XOR2X2_16 _263_ _261_ vdd gnd _262_ OR2X2
XOAI21X1_56 gnd vdd _260_ _263_ _264_ _258_ OAI21X1
XNAND2X1_64 vdd _265_ gnd _256_ _264_ NAND2X1
XNOR3X1_6 vdd gnd $genblock$contador32bits.v:36$18<8>.op.Q<0> $genblock$contador32bits.v:36$18<8>.op.Q<2> $genblock$contador32bits.v:36$18<8>.op.Q<1> _266_ NOR3X1
XOAI21X1_57 gnd vdd $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<0> _267_ $genblock$contador32bits.v:36$18<8>.op.Q<2> OAI21X1
XINVX1_57 _267_ _268_ vdd gnd INVX1
XNOR2X1_26 vdd _268_ gnd _269_ _266_ NOR2X1
XNAND2X1_65 vdd _270_ gnd $genblock$contador32bits.v:36$18<8>.op.Q<3> _266_ NAND2X1
XOR2X2_17 _271_ $genblock$contador32bits.v:36$18<8>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> OR2X2
XOAI21X1_58 gnd vdd $genblock$contador32bits.v:36$18<8>.op.Q<2> _271_ _272_ _261_ OAI21X1
XNAND2X1_66 vdd _273_ gnd _270_ _272_ NAND2X1
XINVX1_58 $genblock$contador32bits.v:36$18<8>.op.Q<1> _274_ vdd gnd INVX1
XNAND2X1_67 vdd _275_ gnd $genblock$contador32bits.v:36$18<8>.op.Q<0> _274_ NAND2X1
XNAND3X1_62 _252_ vdd gnd mode_0_bF$buf3 _254_ _276_ NAND3X1
XNOR2X1_27 vdd _276_ gnd _277_ _275_ NOR2X1
XNAND3X1_63 _277_ vdd gnd _269_ _273_ _278_ NAND3X1
XNAND3X1_64 _253_ vdd gnd mode_1_bF$buf3 _254_ _279_ NAND3X1
XNOR2X1_28 vdd _279_ gnd _280_ _271_ NOR2X1
XXNOR2X1_16 _267_ $genblock$contador32bits.v:36$18<8>.op.Q<3> gnd vdd _281_ XNOR2X1
XNAND3X1_65 _269_ vdd gnd _280_ _281_ _282_ NAND3X1
XNAND3X1_66 _282_ vdd gnd _265_ _278_ _251_ NAND3X1
XNAND2X1_68 vdd _283_ gnd mode_1_bF$buf2 mode_0_bF$buf2 NAND2X1
XNAND2X1_69 vdd _284_ gnd _0_ _257_ NAND2X1
XOAI22X1_6 gnd vdd _255_ _284_ reset_bF$buf3 _283_ _250_ OAI22X1
XINVX2_17 vdd gnd _285_ _276_ INVX2
XINVX2_18 vdd gnd _286_ _279_ INVX2
XOAI21X1_59 gnd vdd _285_ _286_ _287_ _259_ OAI21X1
XINVX1_59 _260_ _288_ vdd gnd INVX1
XNOR2X1_29 vdd _259_ gnd _289_ $genblock$contador32bits.v:36$17<12>.op.rco NOR2X1
XOAI21X1_60 gnd vdd _289_ _288_ _290_ _256_ OAI21X1
XNOR2X1_30 vdd _283_ gnd _291_ reset_bF$buf2 NOR2X1
XNAND2X1_70 vdd _292_ gnd D<0> _291_ NAND2X1
XNAND3X1_67 _292_ vdd gnd _290_ _287_ _249_<0> NAND3X1
XXNOR2X1_17 $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<0> gnd vdd _293_ XNOR2X1
XAOI21X1_11 gnd vdd _293_ $genblock$contador32bits.v:36$17<12>.op.rco _294_ _255_ AOI21X1
XOAI21X1_61 gnd vdd $genblock$contador32bits.v:36$17<12>.op.rco $genblock$contador32bits.v:36$18<8>.op.Q<1> _295_ _294_ OAI21X1
XOAI21X1_62 gnd vdd _285_ _286_ _296_ _293_ OAI21X1
XNAND2X1_71 vdd _297_ gnd D<1> _291_ NAND2X1
XNAND3X1_68 _297_ vdd gnd _296_ _295_ _249_<1> NAND3X1
XNAND2X1_72 vdd _298_ gnd $genblock$contador32bits.v:36$17<12>.op.rco $genblock$contador32bits.v:36$18<8>.op.Q<0> NAND2X1
XINVX1_60 $genblock$contador32bits.v:36$18<8>.op.Q<2> _299_ vdd gnd INVX1
XOAI21X1_63 gnd vdd _274_ _298_ _300_ _299_ OAI21X1
XOAI21X1_64 gnd vdd _262_ _298_ _301_ _300_ OAI21X1
XOR2X2_18 _302_ _255_ vdd gnd _301_ OR2X2
XOAI21X1_65 gnd vdd _266_ _268_ _303_ _285_ OAI21X1
XAOI22X1_11 gnd vdd _286_ _269_ _304_ D<2> _291_ AOI22X1
XNAND3X1_69 _304_ vdd gnd _303_ _302_ _249_<2> NAND3X1
XNAND3X1_70 _270_ vdd gnd _285_ _272_ _305_ NAND3X1
XNAND3X1_71 $genblock$contador32bits.v:36$18<8>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> $genblock$contador32bits.v:36$18<8>.op.Q<2> _306_ NAND3X1
XXNOR2X1_18 _306_ $genblock$contador32bits.v:36$18<8>.op.Q<3> gnd vdd _307_ XNOR2X1
XAOI21X1_12 gnd vdd _257_ _261_ _308_ _255_ AOI21X1
XOAI21X1_66 gnd vdd _257_ _307_ _309_ _308_ OAI21X1
XAOI22X1_12 gnd vdd _286_ _281_ _310_ D<3> _291_ AOI22X1
XNAND3X1_72 _309_ vdd gnd _305_ _310_ _249_<3> NAND3X1
XDFFPOSX1_36 vdd _249_<0> gnd $genblock$contador32bits.v:36$18<8>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_37 vdd _249_<1> gnd $genblock$contador32bits.v:36$18<8>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_38 vdd _249_<2> gnd $genblock$contador32bits.v:36$18<8>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_39 vdd _249_<3> gnd $genblock$contador32bits.v:36$18<8>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_40 vdd _250_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_41 vdd _251_ gnd $genblock$contador32bits.v:36$18<8>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_61 mode_1_bF$buf1 _314_ vdd gnd INVX1
XINVX1_62 mode_0_bF$buf1 _315_ vdd gnd INVX1
XINVX1_63 reset_bF$buf1 _316_ vdd gnd INVX1
XNAND3X1_73 _315_ vdd gnd _314_ _316_ _317_ NAND3X1
XINVX1_64 _317_ _318_ vdd gnd INVX1
XINVX2_19 vdd gnd _319_ $genblock$contador32bits.v:36$18<8>.op.rco INVX2
XNAND2X1_73 vdd _320_ gnd \$genblock$contador32bits.v:36$19<4>.op.rco _319_ NAND2X1
XINVX1_65 $genblock$contador32bits.v:36$19<4>.op.Q<0> _321_ vdd gnd INVX1
XNAND2X1_74 vdd _322_ gnd $genblock$contador32bits.v:36$18<8>.op.rco _321_ NAND2X1
XINVX1_66 $genblock$contador32bits.v:36$19<4>.op.Q<3> _323_ vdd gnd INVX1
XNAND2X1_75 vdd _324_ gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<2> NAND2X1
XOR2X2_19 _325_ _323_ vdd gnd _324_ OR2X2
XOAI21X1_67 gnd vdd _322_ _325_ _326_ _320_ OAI21X1
XNAND2X1_76 vdd _327_ gnd _318_ _326_ NAND2X1
XNOR3X1_7 vdd gnd $genblock$contador32bits.v:36$19<4>.op.Q<0> $genblock$contador32bits.v:36$19<4>.op.Q<2> $genblock$contador32bits.v:36$19<4>.op.Q<1> _328_ NOR3X1
XOAI21X1_68 gnd vdd $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<0> _329_ $genblock$contador32bits.v:36$19<4>.op.Q<2> OAI21X1
XINVX1_67 _329_ _330_ vdd gnd INVX1
XNOR2X1_31 vdd _330_ gnd _331_ _328_ NOR2X1
XNAND2X1_77 vdd _332_ gnd $genblock$contador32bits.v:36$19<4>.op.Q<3> _328_ NAND2X1
XOR2X2_20 _333_ $genblock$contador32bits.v:36$19<4>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> OR2X2
XOAI21X1_69 gnd vdd $genblock$contador32bits.v:36$19<4>.op.Q<2> _333_ _334_ _323_ OAI21X1
XNAND2X1_78 vdd _335_ gnd _332_ _334_ NAND2X1
XINVX1_68 $genblock$contador32bits.v:36$19<4>.op.Q<1> _336_ vdd gnd INVX1
XNAND2X1_79 vdd _337_ gnd $genblock$contador32bits.v:36$19<4>.op.Q<0> _336_ NAND2X1
XNAND3X1_74 _314_ vdd gnd mode_0_bF$buf0 _316_ _338_ NAND3X1
XNOR2X1_32 vdd _338_ gnd _339_ _337_ NOR2X1
XNAND3X1_75 _339_ vdd gnd _331_ _335_ _340_ NAND3X1
XNAND3X1_76 _315_ vdd gnd mode_1_bF$buf0 _316_ _341_ NAND3X1
XNOR2X1_33 vdd _341_ gnd _342_ _333_ NOR2X1
XXNOR2X1_19 _329_ $genblock$contador32bits.v:36$19<4>.op.Q<3> gnd vdd _343_ XNOR2X1
XNAND3X1_77 _331_ vdd gnd _342_ _343_ _344_ NAND3X1
XNAND3X1_78 _344_ vdd gnd _327_ _340_ _313_ NAND3X1
XNAND2X1_80 vdd _345_ gnd mode_1_bF$buf3 mode_0_bF$buf3 NAND2X1
XNAND2X1_81 vdd _346_ gnd _0_ _319_ NAND2X1
XOAI22X1_7 gnd vdd _317_ _346_ reset_bF$buf0 _345_ _312_ OAI22X1
XINVX2_20 vdd gnd _347_ _338_ INVX2
XINVX2_21 vdd gnd _348_ _341_ INVX2
XOAI21X1_70 gnd vdd _347_ _348_ _349_ _321_ OAI21X1
XINVX1_69 _322_ _350_ vdd gnd INVX1
XNOR2X1_34 vdd _321_ gnd _351_ $genblock$contador32bits.v:36$18<8>.op.rco NOR2X1
XOAI21X1_71 gnd vdd _351_ _350_ _352_ _318_ OAI21X1
XNOR2X1_35 vdd _345_ gnd _353_ reset_bF$buf3 NOR2X1
XNAND2X1_82 vdd _354_ gnd D<0> _353_ NAND2X1
XNAND3X1_79 _354_ vdd gnd _352_ _349_ _311_<0> NAND3X1
XXNOR2X1_20 $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<0> gnd vdd _355_ XNOR2X1
XAOI21X1_13 gnd vdd _355_ $genblock$contador32bits.v:36$18<8>.op.rco _356_ _317_ AOI21X1
XOAI21X1_72 gnd vdd $genblock$contador32bits.v:36$18<8>.op.rco $genblock$contador32bits.v:36$19<4>.op.Q<1> _357_ _356_ OAI21X1
XOAI21X1_73 gnd vdd _347_ _348_ _358_ _355_ OAI21X1
XNAND2X1_83 vdd _359_ gnd D<1> _353_ NAND2X1
XNAND3X1_80 _359_ vdd gnd _358_ _357_ _311_<1> NAND3X1
XNAND2X1_84 vdd _360_ gnd $genblock$contador32bits.v:36$18<8>.op.rco $genblock$contador32bits.v:36$19<4>.op.Q<0> NAND2X1
XINVX1_70 $genblock$contador32bits.v:36$19<4>.op.Q<2> _361_ vdd gnd INVX1
XOAI21X1_74 gnd vdd _336_ _360_ _362_ _361_ OAI21X1
XOAI21X1_75 gnd vdd _324_ _360_ _363_ _362_ OAI21X1
XOR2X2_21 _364_ _317_ vdd gnd _363_ OR2X2
XOAI21X1_76 gnd vdd _328_ _330_ _365_ _347_ OAI21X1
XAOI22X1_13 gnd vdd _348_ _331_ _366_ D<2> _353_ AOI22X1
XNAND3X1_81 _366_ vdd gnd _365_ _364_ _311_<2> NAND3X1
XNAND3X1_82 _332_ vdd gnd _347_ _334_ _367_ NAND3X1
XNAND3X1_83 $genblock$contador32bits.v:36$19<4>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> $genblock$contador32bits.v:36$19<4>.op.Q<2> _368_ NAND3X1
XXNOR2X1_21 _368_ $genblock$contador32bits.v:36$19<4>.op.Q<3> gnd vdd _369_ XNOR2X1
XAOI21X1_14 gnd vdd _319_ _323_ _370_ _317_ AOI21X1
XOAI21X1_77 gnd vdd _319_ _369_ _371_ _370_ OAI21X1
XAOI22X1_14 gnd vdd _348_ _343_ _372_ D<3> _353_ AOI22X1
XNAND3X1_84 _371_ vdd gnd _367_ _372_ _311_<3> NAND3X1
XDFFPOSX1_42 vdd _311_<0> gnd $genblock$contador32bits.v:36$19<4>.op.Q<0> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_43 vdd _311_<1> gnd $genblock$contador32bits.v:36$19<4>.op.Q<1> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_44 vdd _311_<2> gnd $genblock$contador32bits.v:36$19<4>.op.Q<2> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_45 vdd _311_<3> gnd $genblock$contador32bits.v:36$19<4>.op.Q<3> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_46 vdd _312_ gnd _0_ clk_bF$buf2 DFFPOSX1
XDFFPOSX1_47 vdd _313_ gnd $genblock$contador32bits.v:36$19<4>.op.rco clk_bF$buf1 DFFPOSX1
XINVX1_71 mode_1_bF$buf2 _375_ vdd gnd INVX1
XINVX1_72 mode_0_bF$buf2 _376_ vdd gnd INVX1
XINVX1_73 reset_bF$buf2 _377_ vdd gnd INVX1
XNAND3X1_85 _376_ vdd gnd _375_ _377_ _378_ NAND3X1
XINVX1_74 _378_ _379_ vdd gnd INVX1
XINVX1_75 $genblock$contador32bits.v:36$19<4>.op.rco _380_ vdd gnd INVX1
XINVX1_76 $genblock$contador32bits.v:36$20<0>.op.Q<0> _381_ vdd gnd INVX1
XNAND2X1_85 vdd _382_ gnd $genblock$contador32bits.v:36$19<4>.op.rco _381_ NAND2X1
XINVX1_77 $genblock$contador32bits.v:36$20<0>.op.Q<3> _383_ vdd gnd INVX1
XNAND2X1_86 vdd _384_ gnd $genblock$contador32bits.v:36$20<0>.op.Q<1> $genblock$contador32bits.v:36$20<0>.op.Q<2> NAND2X1
XNOR3X1_8 vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<0> $genblock$contador32bits.v:36$20<0>.op.Q<2> $genblock$contador32bits.v:36$20<0>.op.Q<1> _385_ NOR3X1
XOAI21X1_78 gnd vdd $genblock$contador32bits.v:36$20<0>.op.Q<1> $genblock$contador32bits.v:36$20<0>.op.Q<0> _386_ $genblock$contador32bits.v:36$20<0>.op.Q<2> OAI21X1
XINVX1_78 _386_ _387_ vdd gnd INVX1
XNOR2X1_36 vdd _387_ gnd _388_ _385_ NOR2X1
XNAND2X1_87 vdd _389_ gnd $genblock$contador32bits.v:36$20<0>.op.Q<3> _385_ NAND2X1
XOR2X2_22 _390_ $genblock$contador32bits.v:36$20<0>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<1> OR2X2
XOAI21X1_79 gnd vdd $genblock$contador32bits.v:36$20<0>.op.Q<2> _390_ _391_ _383_ OAI21X1
XINVX1_79 $genblock$contador32bits.v:36$20<0>.op.Q<1> _392_ vdd gnd INVX1
XNAND3X1_86 _375_ vdd gnd mode_0_bF$buf1 _377_ _393_ NAND3X1
XNAND3X1_87 _376_ vdd gnd mode_1_bF$buf1 _377_ _394_ NAND3X1
XXNOR2X1_22 _386_ $genblock$contador32bits.v:36$20<0>.op.Q<3> gnd vdd _395_ XNOR2X1
XNAND2X1_88 vdd _396_ gnd mode_1_bF$buf0 mode_0_bF$buf0 NAND2X1
XNAND2X1_89 vdd _397_ gnd _0_ _380_ NAND2X1
XOAI22X1_8 gnd vdd _378_ _397_ reset_bF$buf1 _396_ _374_ OAI22X1
XINVX2_22 vdd gnd _398_ _393_ INVX2
XINVX2_23 vdd gnd _399_ _394_ INVX2
XOAI21X1_80 gnd vdd _398_ _399_ _400_ _381_ OAI21X1
XINVX1_80 _382_ _401_ vdd gnd INVX1
XNOR2X1_37 vdd _381_ gnd _402_ $genblock$contador32bits.v:36$19<4>.op.rco NOR2X1
XOAI21X1_81 gnd vdd _402_ _401_ _403_ _379_ OAI21X1
XNOR2X1_38 vdd _396_ gnd _404_ reset_bF$buf0 NOR2X1
XNAND2X1_90 vdd _405_ gnd D<0> _404_ NAND2X1
XNAND3X1_88 _405_ vdd gnd _403_ _400_ _373_<0> NAND3X1
XXNOR2X1_23 $genblock$contador32bits.v:36$20<0>.op.Q<1> $genblock$contador32bits.v:36$20<0>.op.Q<0> gnd vdd _406_ XNOR2X1
XAOI21X1_15 gnd vdd _406_ $genblock$contador32bits.v:36$19<4>.op.rco _407_ _378_ AOI21X1
XOAI21X1_82 gnd vdd $genblock$contador32bits.v:36$19<4>.op.rco $genblock$contador32bits.v:36$20<0>.op.Q<1> _408_ _407_ OAI21X1
XOAI21X1_83 gnd vdd _398_ _399_ _409_ _406_ OAI21X1
XNAND2X1_91 vdd _410_ gnd D<1> _404_ NAND2X1
XNAND3X1_89 _410_ vdd gnd _409_ _408_ _373_<1> NAND3X1
XNAND2X1_92 vdd _411_ gnd $genblock$contador32bits.v:36$19<4>.op.rco $genblock$contador32bits.v:36$20<0>.op.Q<0> NAND2X1
XINVX1_81 $genblock$contador32bits.v:36$20<0>.op.Q<2> _412_ vdd gnd INVX1
XOAI21X1_84 gnd vdd _392_ _411_ _413_ _412_ OAI21X1
XOAI21X1_85 gnd vdd _384_ _411_ _414_ _413_ OAI21X1
XOR2X2_23 _415_ _378_ vdd gnd _414_ OR2X2
XOAI21X1_86 gnd vdd _385_ _387_ _416_ _398_ OAI21X1
XAOI22X1_15 gnd vdd _399_ _388_ _417_ D<2> _404_ AOI22X1
XNAND3X1_90 _417_ vdd gnd _416_ _415_ _373_<2> NAND3X1
XNAND3X1_91 _389_ vdd gnd _398_ _391_ _418_ NAND3X1
XNAND3X1_92 $genblock$contador32bits.v:36$20<0>.op.Q<0> vdd gnd $genblock$contador32bits.v:36$20<0>.op.Q<1> $genblock$contador32bits.v:36$20<0>.op.Q<2> _419_ NAND3X1
XXNOR2X1_24 _419_ $genblock$contador32bits.v:36$20<0>.op.Q<3> gnd vdd _420_ XNOR2X1
XAOI21X1_16 gnd vdd _380_ _383_ _421_ _378_ AOI21X1
XOAI21X1_87 gnd vdd _380_ _420_ _422_ _421_ OAI21X1
XAOI22X1_16 gnd vdd _399_ _395_ _423_ D<3> _404_ AOI22X1
XNAND3X1_93 _422_ vdd gnd _418_ _423_ _373_<3> NAND3X1
.ends contador32bits
 