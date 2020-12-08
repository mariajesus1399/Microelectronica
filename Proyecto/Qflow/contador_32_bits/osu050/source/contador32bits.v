`include "contador.v"
// -----------------------------------------------
// Contador 32 bits 
// -----------------------------------------------
// Entradas: enable,clk,reset,mode,D
// Salida: load,rco,Q

module contador32bits(
	input enable, 
	input clk, 
	input reset, 
	input [1:0] mode,
	input [3:0] D,
	output  load,
	output rco,
 	output [0:31] Q
);
// wire [7:0]rco_bus; 
// parameter N = 32; 
// genvar i;
// generate
//     contador op (enable, clk, reset, mode, D, load, rco_bus[0], Q[0:3]);
//     for (i = 4; i < N; i = i+4) begin
//             contador op (rco_bus[i/4-1], clk, reset, mode, D, load, rco_bus[i/4], Q[i:i+3]);
// 			// rco = rco_bus[7];
//         end
// endgenerate

// endmodule

wire [7:0]rco_bus; 
parameter N = 32; 
genvar i;
generate
    contador op (enable, clk, reset, mode, D, load, rco_bus[7], Q[28:31]);
    for (i = 24; i >= 0; i = i-4) begin
            contador op (rco_bus[i/4+1], clk, reset, mode, D, load, rco_bus[i/4], Q[i:i+3]);
			// rco = rco_bus[7];
        end
endgenerate

endmodule

// rco_bus[0] enable - rco_bus[1]
// rco_bus[1] enable - rco_bus[2]
// rco_bus[2] enable - rco_bus[3]
// rco_bus[3] enable - rco_bus[4]
// rco_bus[4] enable - rco_bus[5]
// rco_bus[5] enable - rco

// 4
// 8
// 12
// 16
// 20
// 24
// 28
























// `include "contador.v"

// module contador32bits(
// 	input enable, 
// 	input clk, 
// 	input reset, 
// 	input [1:0] mode,
// 	input [31:0] D,
// 	output reg load,
// 	output reg rco,
//  	output reg [31:0] Q
// );

// wire [3:0] D1,D2,D3,D4,D5,D6,D7,D8;
// wire [3:0] Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8;
// wire [3:0] Q1_sub,Q2_sub,Q3_sub,Q4_sub,Q5_sub,Q6_sub,Q7_sub,Q8_sub;
// always @ (posedge clk) begin
//     case(mode)
//       		2'b00    : begin
//                 if(reset == 1) begin
// 					load = 0;
// 					rco  = 0;
// 					Q    = 0;
//                     Q1 = 0;
//                     Q2 = 0;
//                     Q3 = 0;
//                     Q4 = 0;
//                     Q5 = 0;
//                     Q6 = 0;
//                     Q7 = 0;
//                     Q8 = 0; 
// 		            Q1_sub = 0;
//                     Q2_sub = 0;
//                     Q3_sub = 0;
//                     Q4_sub = 0;
//                     Q5_sub = 0;
//                     Q6_sub = 0;
//                     Q7_sub = 0;
//                     Q8_sub = 0;
//                 end else begin
//                     contador op1(enable,clk,reset,mode,D1,load,rco,Q1); 
//                     if (Q1 == 15) begin
//                         contador op2 (enable,clk,reset,mode,D,load,rco,Q2);
//                     end
//                     if (Q2 == 15) begin
//                         contador op3 (enable,clk,reset,mode,D,load,rco,Q3);
//                     end
//                     if (Q3 == 15) begin
//                         contador op4 (enable,clk,reset,mode,D,load,rco,Q4);
//                     end
//                     if (Q4 == 15) begin
//                         contador op5 (enable,clk,reset,mode,D,load,rco,Q5);
//                     end
//                     if (Q5 == 15) begin
//                         contador op6 (enable,clk,reset,mode,D,load,rco,Q6);
//                     end
//                     if (Q6 == 15) begin
//                         contador op7 (enable,clk,reset,mode,D,load,rco,Q7);
//                     end
//                     if (Q7 == 15) begin
//                         contador op8 (enable,clk,reset,mode,D,load,rco,Q8);
//                     end
//                     Q = {Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1};
                    
//                 end
//             end
//             2'b01    : begin
//                 if(reset == 1) begin
// 					load = 0;
// 					rco  = 0;
// 					Q    = 0;
//                 end else begin 
//                     if (Q8 != 0) begin
//                         contador op9 (enable,clk,reset,mode,Q8,load,rco,Q1_sub);    
//                     end
//                     if (Q7 != 0 && Q1_sub == 0) begin
//                         contador op10 (enable,clk,reset,mode,Q7,load,rco,Q2_sub);
//                     end
//                     if (Q6 != 0 && Q2_sub == 0) begin
//                         contador op11 (enable,clk,reset,mode,Q6,load,rco,Q3_sub);
//                     end
//                     if (Q5 != 0 && Q3_sub == 0) begin
//                         contador op12 (enable,clk,reset,mode,Q5,load,rco,Q4_sub);
//                     end
//                     if (Q4 != 0 && Q4_sub == 0) begin
//                         contador op13 (enable,clk,reset,mode,Q4,load,rco,Q5_sub);
//                     end
//                     if (Q3 != 0 && Q5_sub == 0) begin
//                         contador op14 (enable,clk,reset,mode,Q3,load,rco,Q6_sub);
//                     end
//                     if (Q2 != 0 && Q6_sub == 0) begin
//                         contador op15 (enable,clk,reset,mode,Q2,load,rco,Q7_sub);
//                     end
//                     if (Q1 != 0 && Q7_sub == 0) begin
//                         contador op16 (enable,clk,reset,mode,Q1,load,rco,Q8_sub);
//                     end
//                     Q = {Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1};
//                 end 
//             end
//             2'b10    : begin
//                 if(reset == 1) begin
// 					load = 0;
// 					rco  = 0;
// 					Q    = 0;
//                 end else begin
//                     contador op17 (enable,clk,reset,mode,D,load,rco,Q1);
//                 end
//             end
//       		2'b11    : begin
//                 if(reset == 1) begin
// 					load = 0;
// 					rco  = 0;
// 					Q    = 0;
//                 end else begin
// 			contador op18 (enable,clk,reset,mode,D,load,rco,Q1);
                    
//                 end
//             end   
// end
// endmodule

