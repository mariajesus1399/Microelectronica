*SPICE netlist created from BLIF module contador by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt contador vdd gnd enable clk reset mode<0> mode<1> D<0> D<1> D<2> D<3> load rco Q<0> Q<1> Q<2> Q<3> 
XINVX2_1 vdd gnd _36_ _27_ INVX2
XINVX2_2 vdd gnd _37_ _30_ INVX2
XOAI21X1_1 gnd vdd _36_ _37_ _38_ _10_ OAI21X1
XINVX1_1 _11_ _39_ vdd gnd INVX1
XNOR2X1_1 vdd _10_ gnd _40_ enable NOR2X1
XOAI21X1_2 gnd vdd _40_ _39_ _41_ _7_ OAI21X1
XNOR2X1_2 vdd _34_ gnd _42_ reset NOR2X1
XNAND2X1_1 vdd _43_ gnd D<0> _42_ NAND2X1
XNAND3X1_1 _43_ vdd gnd _41_ _38_ _0_<0> NAND3X1
XXNOR2X1_1 _62_<1> _62_<0> gnd vdd _44_ XNOR2X1
XAOI21X1_1 gnd vdd _44_ enable _45_ _6_ AOI21X1
XOAI21X1_3 gnd vdd enable _62_<1> _46_ _45_ OAI21X1
XOAI21X1_4 gnd vdd _36_ _37_ _47_ _44_ OAI21X1
XNAND2X1_2 vdd _48_ gnd D<1> _42_ NAND2X1
XNAND3X1_2 _48_ vdd gnd _47_ _46_ _0_<1> NAND3X1
XNAND2X1_3 vdd _49_ gnd enable _62_<0> NAND2X1
XINVX1_2 _62_<2> _50_ vdd gnd INVX1
XOAI21X1_5 gnd vdd _25_ _49_ _51_ _50_ OAI21X1
XOAI21X1_6 gnd vdd _13_ _49_ _52_ _51_ OAI21X1
XOR2X2_1 _53_ _6_ vdd gnd _52_ OR2X2
XOAI21X1_7 gnd vdd _17_ _19_ _54_ _36_ OAI21X1
XAOI22X1_1 gnd vdd _37_ _20_ _55_ D<2> _42_ AOI22X1
XNAND3X1_3 _55_ vdd gnd _54_ _53_ _0_<2> NAND3X1
XNAND3X1_4 _21_ vdd gnd _36_ _23_ _56_ NAND3X1
XNAND3X1_5 _62_<0> vdd gnd _62_<1> _62_<2> _57_ NAND3X1
XXNOR2X1_2 _57_ _62_<3> gnd vdd _58_ XNOR2X1
XAOI21X1_2 gnd vdd _8_ _12_ _59_ _6_ AOI21X1
XOAI21X1_8 gnd vdd _8_ _58_ _60_ _59_ OAI21X1
XAOI22X1_2 gnd vdd _37_ _32_ _61_ D<3> _42_ AOI22X1
XNAND3X1_6 _60_ vdd gnd _56_ _61_ _0_<3> NAND3X1
XBUFX2_1 vdd gnd _62_<0> Q<0> BUFX2
XBUFX2_2 vdd gnd _62_<1> Q<1> BUFX2
XBUFX2_3 vdd gnd _62_<2> Q<2> BUFX2
XBUFX2_4 vdd gnd _62_<3> Q<3> BUFX2
XBUFX2_5 vdd gnd _63_ load BUFX2
XBUFX2_6 vdd gnd _64_ rco BUFX2
XDFFPOSX1_1 vdd _0_<0> gnd _62_<0> clk DFFPOSX1
XDFFPOSX1_2 vdd _0_<1> gnd _62_<1> clk DFFPOSX1
XDFFPOSX1_3 vdd _0_<2> gnd _62_<2> clk DFFPOSX1
XDFFPOSX1_4 vdd _0_<3> gnd _62_<3> clk DFFPOSX1
XDFFPOSX1_5 vdd _1_ gnd _63_ clk DFFPOSX1
XDFFPOSX1_6 vdd _2_ gnd _64_ clk DFFPOSX1
XINVX1_3 mode<1> _3_ vdd gnd INVX1
XINVX1_4 mode<0> _4_ vdd gnd INVX1
XINVX1_5 reset _5_ vdd gnd INVX1
XNAND3X1_7 _4_ vdd gnd _3_ _5_ _6_ NAND3X1
XINVX1_6 _6_ _7_ vdd gnd INVX1
XINVX2_3 vdd gnd _8_ enable INVX2
XNAND2X1_4 vdd _9_ gnd _64_ _8_ NAND2X1
XINVX1_7 _62_<0> _10_ vdd gnd INVX1
XNAND2X1_5 vdd _11_ gnd enable _10_ NAND2X1
XINVX1_8 _62_<3> _12_ vdd gnd INVX1
XNAND2X1_6 vdd _13_ gnd _62_<1> _62_<2> NAND2X1
XOR2X2_2 _14_ _12_ vdd gnd _13_ OR2X2
XOAI21X1_9 gnd vdd _11_ _14_ _15_ _9_ OAI21X1
XNAND2X1_7 vdd _16_ gnd _7_ _15_ NAND2X1
XNOR3X1_1 vdd gnd _62_<0> _62_<2> _62_<1> _17_ NOR3X1
XOAI21X1_10 gnd vdd _62_<1> _62_<0> _18_ _62_<2> OAI21X1
XINVX1_9 _18_ _19_ vdd gnd INVX1
XNOR2X1_3 vdd _19_ gnd _20_ _17_ NOR2X1
XNAND2X1_8 vdd _21_ gnd _62_<3> _17_ NAND2X1
XOR2X2_3 _22_ _62_<0> vdd gnd _62_<1> OR2X2
XOAI21X1_11 gnd vdd _62_<2> _22_ _23_ _12_ OAI21X1
XNAND2X1_9 vdd _24_ gnd _21_ _23_ NAND2X1
XINVX1_10 _62_<1> _25_ vdd gnd INVX1
XNAND2X1_10 vdd _26_ gnd _62_<0> _25_ NAND2X1
XNAND3X1_8 _3_ vdd gnd mode<0> _5_ _27_ NAND3X1
XNOR2X1_4 vdd _27_ gnd _28_ _26_ NOR2X1
XNAND3X1_9 _28_ vdd gnd _20_ _24_ _29_ NAND3X1
XNAND3X1_10 _4_ vdd gnd mode<1> _5_ _30_ NAND3X1
XNOR2X1_5 vdd _30_ gnd _31_ _22_ NOR2X1
XXNOR2X1_3 _18_ _62_<3> gnd vdd _32_ XNOR2X1
XNAND3X1_11 _20_ vdd gnd _31_ _32_ _33_ NAND3X1
XNAND3X1_12 _33_ vdd gnd _16_ _29_ _2_ NAND3X1
XNAND2X1_11 vdd _34_ gnd mode<1> mode<0> NAND2X1
XNAND2X1_12 vdd _35_ gnd _63_ _8_ NAND2X1
XOAI22X1_1 gnd vdd _6_ _35_ reset _34_ _1_ OAI22X1
.ends contador
 