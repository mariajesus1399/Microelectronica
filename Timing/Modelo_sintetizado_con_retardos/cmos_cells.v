`timescale 1ns / 1ps

module BUF(A, Y);
input A;
output Y;
assign Y = A;
   specify
     // delay parameters
     specparam
       tpdh = 0.13,
       tpdl = 0.15;
     // path delays
     (A *> Y) = ( tpdl , tpdh);
   endspecify
endmodule



module BUFX2 (A, Y);
input  A ;
output Y ;
   buf (Y, A);
   specify
     // delay parameters
     specparam
       tpdh = 0.13,
       tpdl = 0.15;
     // path delays
     (A *> Y) = ( tpdl , tpdh);
   endspecify
endmodule

module NOT(Y,A);
input A;
output Y;
    assign Y = ~A;
    specify
     // delay parameters
     //Hoja de fabricante DM74LS04
     specparam
       tpdh = 4,
       tpdl = 4;
     // path delays
     (A *> Y) = ( tpdl , tpdh);
   endspecify
endmodule

module NAND(Y,A,B);
input A,B;
output Y;
    assign Y= ~(A & B);
    specify
     // delay parameters
     //hoja de fabricante 74HC2G00
     specparam
       tpdh = 7,
       tpdl = 7;
     // path delays
     (A *> Y) = ( tpdl , tpdh);
     (B *> Y) = ( tpdl , tpdh);
   endspecify
endmodule

module NAND3(Y,A,B,C);
input A,B,C;
output Y;
    assign Y= ~(A & B & C);
    specify
     // delay parameters
     //Hoja del fabricante DM74LS10
     specparam
       tpdh = 4,
       tpdl = 4;
     // path delays
     (A *> Y) = ( tpdl , tpdh);
     (B *> Y) = ( tpdl , tpdh);
     (C *> Y) = ( tpdl , tpdh);
   endspecify
endmodule

module NOR(Y,A,B);
input A,B;
output Y;
    assign Y= ~(A | B);
    specify
     // delay parameters
     //Hoja de fabricante SN74AHC1G02-EP
     specparam
       tpdh = 5.1,
       tpdl = 5.1;
     // path delays
     (A *> Y) = ( tpdl , tpdh);
     (B *> Y) = ( tpdl , tpdh);
   endspecify
endmodule

module NOR3(Y,A,B,C);
input A,B,C;
output Y;
    assign Y= ~(A | B | C);
    specify
     // delay parameters
     //Hoja de fabricante DM74LS27
     specparam
       tpdh = 5,
       tpdl = 4;
     // path delays
     (A *> Y) = ( tpdl , tpdh);
     (B *> Y) = ( tpdl , tpdh);
     (C *> Y) = ( tpdl , tpdh);
   endspecify
endmodule

module DFF(C, D, Q);
input C, D;
output reg Q;
always @(posedge C)
	Q <= D;
    specify
     // delay parameters
     //Hoja del fabricante NL17SZ74
     specparam
       tpdh = 2.6,
       tpdl = 2.6,
       tSetup = 1.5,
       thold = 0.5;
     // path delays
     (C *> Q) = ( tpdl , tpdh);
     $setup (D, posedge Q, tSetup);
     $hold (D, posedge Q, thold);
   endspecify
endmodule



 	
