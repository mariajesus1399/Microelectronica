/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module contadorC(enable, clk, reset, mode, D, load, rco, Q);
  wire [3:0] _000_;
  wire _001_;
  wire _002_;
  wire [31:0] _003_;
  wire [31:0] _004_;
  wire _005_;
  wire _006_;
  wire [1:0] _007_;
  wire [1:0] _008_;
  wire [1:0] _009_;
  wire [1:0] _010_;
  wire [1:0] _011_;
  wire [1:0] _012_;
  wire [1:0] _013_;
  wire [1:0] _014_;
  wire [1:0] _015_;
  wire [1:0] _016_;
  wire _017_;
  wire _018_;
  wire [3:0] _019_;
  wire [1:0] _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire [3:0] _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire [15:0] _045_;
  wire [3:0] _046_;
  wire [3:0] _047_;
  wire [3:0] _048_;
  wire [31:0] _049_;
  wire [31:0] _050_;
  wire [31:0] _051_;
  wire _052_;
  wire _053_;
  wire [31:0] _054_;
  wire _055_;
  wire _056_;
  input [3:0] D;
  output [3:0] Q;
  reg [3:0] Q;
  input clk;
  input enable;
  output load;
  reg load;
  input [1:0] mode;
  output rco;
  reg rco;
  input reset;
  assign _005_ = _006_ | _039_;
  assign _007_[0] = Q[0] | _019_[1];
  assign _021_ = _007_[0] | _007_[1];
  assign _008_[0] = _003_[0] | Q[1];
  assign _022_ = _008_[0] | _007_[1];
  assign _009_[0] = _003_[0] | _019_[1];
  assign _007_[1] = _019_[2] | _019_[3];
  assign _023_ = _009_[0] | _007_[1];
  assign _024_ = _020_[0] | _020_[1];
  assign _025_ = mode[0] | _020_[1];
  assign _026_ = _020_[0] | mode[1];
  assign _010_[1] = _035_[2] | _035_[3];
  assign _036_ = _010_[0] | _010_[1];
  assign _052_ = _011_[0] | _006_;
  assign _053_ = _038_ | _005_;
  assign _012_[0] = _045_[2] | _045_[6];
  assign _012_[1] = _045_[10] | _045_[14];
  assign _046_[2] = _012_[0] | _012_[1];
  assign _013_[0] = _045_[3] | _045_[7];
  assign _013_[1] = _045_[11] | _045_[15];
  assign _046_[3] = _013_[0] | _013_[1];
  assign _014_[0] = _045_[1] | _045_[5];
  assign _014_[1] = _045_[9] | _045_[13];
  assign _046_[1] = _014_[0] | _014_[1];
  assign _015_[0] = _045_[0] | _045_[4];
  assign _015_[1] = _045_[8] | _045_[12];
  assign _046_[0] = _015_[0] | _015_[1];
  assign _011_[0] = _038_ | _039_;
  assign _006_ = _040_ | _041_;
  assign _016_[0] = Q[0] | Q[1];
  assign _016_[1] = Q[2] | Q[3];
  assign _017_ = _016_[0] | _016_[1];
  assign _018_ = mode[0] | mode[1];
  assign _029_ = ~_021_;
  assign _030_ = ~_022_;
  assign _031_ = ~_017_;
  assign _028_ = ~_023_;
  assign _038_ = ~_024_;
  assign _039_ = ~_025_;
  assign _040_ = ~_026_;
  assign _041_ = ~_018_;
  assign _032_ = enable & _027_;
  assign _034_ = _028_ | _029_;
  assign _033_ = _034_ | _030_;
  assign _042_ = _032_ ? _037_ : 1'b1;
  assign _002_ = reset ? 1'b1 : _042_;
  assign _044_ = _032_ ? _043_ : 1'b0;
  assign _001_ = reset ? 1'b0 : _044_;
  assign _048_[0] = _032_ ? _047_[0] : 1'b1;
  assign _048_[1] = _032_ ? _047_[1] : 1'b1;
  assign _048_[2] = _032_ ? _047_[2] : 1'b1;
  assign _048_[3] = _032_ ? _047_[3] : 1'b1;
  assign _000_[0] = reset ? 1'b0 : _048_[0];
  assign _000_[1] = reset ? 1'b0 : _048_[1];
  assign _000_[2] = reset ? 1'b0 : _048_[2];
  assign _000_[3] = reset ? 1'b0 : _048_[3];
  assign _037_ = _052_ ? _036_ : rco;
  assign _043_ = _053_ ? _038_ : load;
  assign _047_[0] = _052_ ? _046_[0] : Q[0];
  assign _047_[1] = _052_ ? _046_[1] : Q[1];
  assign _047_[2] = _052_ ? _046_[2] : Q[2];
  assign _047_[3] = _052_ ? _046_[3] : Q[3];
  assign _027_ = ~reset;
  always @(posedge clk)
      Q[0] <= _000_[0];
  always @(posedge clk)
      Q[1] <= _000_[1];
  always @(posedge clk)
      Q[2] <= _000_[2];
  always @(posedge clk)
      Q[3] <= _000_[3];
  always @(posedge clk)
      load <= _001_;
  always @(posedge clk)
      rco <= _002_;
  assign _055_ = _019_[1] & Q[0];
  assign _050_[2] = Q[2] & _050_[1];
  assign _056_ = _019_[2] & _050_[1];
  assign _050_[1] = Q[1] | _055_;
  assign _054_[2] = Q[2] | _056_;
  assign _051_[1] = Q[1] & Q[0];
  assign _051_[2] = Q[2] & _051_[1];
  assign _020_[1] = mode[1] ^ 1'b1;
  assign _020_[0] = mode[0] ^ 1'b1;
  assign _035_[3] = _033_ & _041_;
  assign _035_[2] = _031_ & _040_;
  assign _010_[0] = _028_ & _039_;
  assign _045_[12] = _003_[0] & _041_;
  assign _045_[13] = _003_[1] & _041_;
  assign _045_[14] = _003_[2] & _041_;
  assign _045_[15] = _003_[3] & _041_;
  assign _045_[8] = _003_[0] & _040_;
  assign _045_[9] = _003_[1] & _040_;
  assign _045_[10] = _049_[2] & _040_;
  assign _045_[11] = _049_[3] & _040_;
  assign _045_[4] = _003_[0] & _039_;
  assign _045_[5] = _004_[1] & _039_;
  assign _045_[6] = _004_[2] & _039_;
  assign _045_[7] = _004_[3] & _039_;
  assign _045_[0] = D[0] & _038_;
  assign _045_[1] = D[1] & _038_;
  assign _045_[2] = D[2] & _038_;
  assign _045_[3] = D[3] & _038_;
  assign _003_[0] = Q[0] ^ 1'b1;
  assign _019_[1] = Q[1] ^ 1'b1;
  assign _003_[1] = _019_[1] ^ Q[0];
  assign _003_[2] = Q[2] ^ _050_[1];
  assign _003_[3] = Q[3] ^ _050_[2];
  assign _019_[2] = Q[2] ^ 1'b1;
  assign _019_[3] = Q[3] ^ 1'b1;
  assign _049_[2] = _019_[2] ^ _050_[1];
  assign _049_[3] = _019_[3] ^ _054_[2];
  assign _004_[1] = Q[1] ^ Q[0];
  assign _004_[2] = Q[2] ^ _051_[1];
  assign _004_[3] = Q[3] ^ _051_[2];
endmodule
